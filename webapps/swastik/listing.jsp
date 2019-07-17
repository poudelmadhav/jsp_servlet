<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
  <title>SELECT Operation</title>
</head>
<body>
  <h1>Listing</h1>
  <%
    String url = "jdbc:mysql://localhost:3306/students?useSSL=false";
    String username = "madhav";
    String password = "password";
    String query = "SELECT * FROM students;";

    try {
      Connection con = DriverManager.getConnection(url, username, password);
      Class.forName("com.mysql.cj.jdbc.Driver");
      Statement st = con.createStatement();
      ResultSet rs = st.executeQuery(query);

      out.print("<table width='200px' border='1'>");
      out.print("<tr>" +
                    "<th>ID</th>" +
                    "<th>Name</th>" +
                 "</tr>"
        );

      while(rs.next()) {
        out.print("<tr>" +
                    "<td>" + rs.getInt("id") + "</td>" +
                    "<td>" + rs.getString("name") + "</td>" +
                 "</tr>"
        );
      }
      out.print("</table>");
    } catch(SQLException ex) {
      out.println(ex.getMessage());
    }
  %>
</body>
</html>