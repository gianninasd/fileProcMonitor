<!DOCTYPE html>

<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>FileProc Monitoring</title>
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
      <th>Sent</th>
    </thead>
    <tbody>
      <g:each var="file" in="${last10Files}">
        <tr>
          <td>${file.id}</td>
          <td>${file.filename}</td>
          <td>${file.creationDate}</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
      </g:each>
    </tbody>
  </table>
</body>
</html>