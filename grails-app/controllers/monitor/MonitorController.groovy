package monitor

class MonitorController {

    /**
     * Forwards to the list method
     */
    def index() {
        redirect(action: "list")
    }

    /**
     * Returns a page with the most recent files uploaded for processing
     */
    def list() {
        log.info "Retrieving file list..."
        def grailsVersion = grailsApplication.config.getProperty('info.app.grailsVersion')
        def last10Files = FileUploads.list(sort: "creationDate", order: "desc", max: 10)
        def items = []

        last10Files.each { file ->
            def summary = new FileSummary()
            summary.id = file.id
            summary.filename = file.filename
            summary.creationDate = file.creationDate
            summary.cntTotal = FileRecords.countByFileId(file.id)
            summary.cntInitial = FileRecords.countByFileIdAndStatusCde(file.id,'INITIAL')
            summary.cntSent = FileRecords.countByFileIdAndStatusCde(file.id,'SENT')
            summary.cntSuccess = FileRecords.countByFileIdAndStatusCde(file.id,'SUCCESS')
            summary.cntFailed = summary.cntTotal - (summary.cntInitial + summary.cntSent + summary.cntSuccess)
            items.add(summary)
        }

        def map = [grailsVersion: grailsVersion, last10Files: items]
        render(view: "list", model: map)
    }
}
