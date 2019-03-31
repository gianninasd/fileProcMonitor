package monitor

/**
 * Defines a file uploaded to be processed
 */
class FileUploads {

    Integer id = 0
    String filename = ''
    String creationDate = ''

    static mapping = {
        table 'fileproc.file_uploads'
        version false
    }

    static constraints = {
    }
}
