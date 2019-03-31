package monitor

class MonitorController {

    def index() {
        redirect(action: "list")
    }

    def list() {
        def grailsVersion = grailsApplication.config.getProperty('info.app.grailsVersion')

        def last10Files = FileUploads.list(sort: "creationDate", order: "desc", max: 10)

        def map = [grailsVersion: grailsVersion, last10Files: last10Files]
        render(view: "list", model: map)
    }
}
