<!DOCTYPE html>

<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <meta http-equiv="X-UA-Compatible" content="IE=edge"/>

  <title>FileProc Monitoring</title>

  <asset:link rel="icon" href="favicon.ico" type="image/x-ico"/>
  <asset:stylesheet src="monitor.css"/>
</head>
<body>
  <h2>FileProc Monitoring</h2>
  <p>Running on Grails ${grailsVersion}</p>
  <p>Displays the last 10 files being processed.</p>

  <table>
    <thead>
      <th>Id</th>
      <th>Filename</th>
      <th>Date</th>
      <th>Records</th>
      <th>Initial</th>
      <th>Sent</th>
      <th>Success</th>
      <th>Failed</th>
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
</body>
</html>