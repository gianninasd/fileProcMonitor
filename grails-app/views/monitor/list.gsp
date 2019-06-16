<!DOCTYPE html>

<html lang="en">
<head>
  <!-- Required meta tags -->
  <meta name="layout" content="main"/>

  <title>FileProc Monitoring</title>
</head>
<body>
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
        <tr onclick="location.href='details?id=${file.id}'">
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