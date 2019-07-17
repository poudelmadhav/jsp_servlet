<!DOCTYPE html>
<html>
<head>
  <title>Student Form</title>
</head>
<body>
  <h1>Students Data:</h1>
  <table border="1" width="400" cellpadding="10">
    <tr>
      <th>Name</th>
      <th>Roll No</th>
    </tr>
    <tr>
      <td><%= request.getParameter("name") %></td>
      <td><%= request.getParameter("rollno") %></td>
    </tr>
  </table>
</body>
</html>