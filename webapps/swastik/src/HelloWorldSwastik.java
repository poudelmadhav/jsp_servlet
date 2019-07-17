import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class HelloWorldSwastik extends HttpServlet {
  private String message;

  public void init() throws ServletException {
    message = "Hello World";
  }

  public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    response.setContentType("text/html");
    PrintWriter out = response.getWriter();
    out.println("<h1 style='color:red;'>Namaste</h1>");
  }

  public void destroy() {}
}