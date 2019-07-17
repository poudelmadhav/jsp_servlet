import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class HelloGetSwastik extends HttpServlet {
  public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    response.setContentType("text/html");
    PrintWriter out = response.getWriter();
    out.println("<h1 style='color:blue;'>Namaste " + request.getParameter("name") + "!</h1>");
  }
}