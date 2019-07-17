<%@ page import = "java.io.*, java.util.*" %>
<%
  // Get session creation time.
  Date createTime = new Date(session.getCreationTime());

  // Get last accesss time of this Webpage
  Date lastAccessTime = new Date(session.getLastAccessedTime());

  String title = "Welcome Back to my site";

  String visitCountKey = new String("visitCount");
  Integer visitCount = new Integer(0);
  
  String userIDKey = new String("userID");
  String userID = new String("ABCD");

  // Check if this is new comer on the your Webpage
  if (session.isNew()) {
    title = "Welcome to my website";
    session.setAttribute(userIDKey, userID);
    session.setAttribute(visitCountKey, visitCount);
  }
  visitCount = (Integer) session.getAttribute(visitCountKey);
  visitCount = visitCount + 1;
  userID = (String) session.getAttribute(userIDKey);
  session.setAttribute(visitCountKey, visitCount);
%>
<!DOCTYPE html>
<html>
<head>
  <title>Visit Tracking</title>
</head>
<body>
  <%= title %><br>
  Number of visits: <%= visitCount %>
  </table>
</body>
</html>