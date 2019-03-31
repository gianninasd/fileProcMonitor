package monitor

/**
 * Domain object containing summary info that is not persisted
 */
class FileSummary {

  Integer id = 0
  String filename = ''
  String creationDate = ''
  Integer cntTotal = 0
  Integer cntInitial = 0
  Integer cntSent = 0
  Integer cntSuccess = 0
  Integer cntFailed = 0
}