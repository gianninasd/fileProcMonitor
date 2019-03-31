package monitor

class FileUploads {

    Integer id = 0
    String filename = ''
    String creationDate = ''
    /*Integer cntTotal = 0
    Integer cntSent = 0
    Integer cntSuccess = 0
    Integer cntFailed = 0*/

    static mapping = {
        version false
        table 'fileproc.file_uploads'
    }

    static constraints = {
    }
}
