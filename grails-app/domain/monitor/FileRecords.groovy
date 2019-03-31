package monitor

/**
 * Defines a record to be processed
 */
class FileRecords {

    Integer id = 0
    Integer fileId = 0
    String statusCde = ''

    static mapping = {
        table 'fileproc.file_records'
        id column: 'record_id'
        fileId column: 'file_id'
        statusCde column: 'status_cde'
        version false
    }

    static constraints = {
    }
}
