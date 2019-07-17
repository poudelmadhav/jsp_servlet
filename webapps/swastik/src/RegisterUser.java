import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class RegisterUser extends HttpServlet {
  public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    response.setContentType("text/html");
    PrintWriter out = response.getWriter();
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    out.println("Name: " + name + "<br>Email: " + email);
  }
}