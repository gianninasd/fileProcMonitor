<!DOCTYPE html>

<html lang="en">
<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <meta http-equiv="X-UA-Compatible" content="IE=edge"/>

  <title>FileProc Monitoring</title>

  <asset:link rel="icon" href="favicon.ico" type="image/x-ico"/>
  <!--<asset:stylesheet src="monitor.css"/>-->

  <!-- Bootstrap CSS -->
  <asset:stylesheet src="bootstrap.min.css"/>
</head>
<body>
  <div class="container">
    <h3>FileProc Monitoring</h3>
    <p>Running on Grails ${grailsVersion}</p>
    <p>Displays the last 10 files being processed.</p>

    <table class="table table-striped">
      <thead>
        <tr>
          <th>Id</th>
          <th>Filename</th>
          <th>Date</th>
          <th>Records</th>
          <th>Initial</th>
          <th>Sent</th>
          <th>Success</th>
          <th>Failed</th>
        </tr>
      </thead>
      <tbody>
        <g:each var="file" in="${last10Files}">
          <tr>
            <td>${file.id}</td>
            <td>${file.filename}</td>
            <td>${file.creationDate}</td>
            <td>${file.cntTotal}</td>
            <td>${file.cntInitial}</td>
            <td>${file.cntSent}</td>
            <td>${file.cntSuccess}</td>
            <td>${file.cntFailed}</td>
          </tr>
        </g:each>
      </tbody>
    </table>
  </div>

  <!-- Optional JavaScript -->
  <!-- jQuery first, then Popper.js, then Bootstrap JS -->
  <asset:javascript src="jquery-3.3.1.min.js"/>
  <asset:javascript src="popper.min.js"/>
  <asset:javascript src="bootstrap.min.js"/>
</body>
</html>