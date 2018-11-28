package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html>\n");
      out.write("<!--\n");
      out.write("To change this license header, choose License Headers in Project Properties.\n");
      out.write("To change this template file, choose Tools | Templates\n");
      out.write("and open the template in the editor.\n");
      out.write("-->\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <title>index</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/standardize.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/index-grid.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/index.css\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    </head>\n");
      out.write("    <body class=\"body page-index clearfix\">\n");
      out.write("        <div class=\"container\">            \n");
      out.write("        </div>\n");
      out.write("        <p class=\"text text-1\">User Email</p>\n");
      out.write("        <p class=\"text text-2\">Login</p>\n");
      out.write("        <p class=\"text text-3\">Password</p>\n");
      out.write("        <form action=\"log_in\" onsubmit=\"return validation()\">\n");
      out.write("            <input class=\"_input _input-1\" type=\"text\" name=\"email\" id=\"email\">\n");
      out.write("            <input class=\"_input _input-2\" type=\"password\" name=\"pass\" id=\"pass\">\n");
      out.write("            <button type=\"submit\" class=\"_button _button-2\" name=\"button\" value=\"admin\" >Admin login</button>\n");
      out.write("            <button type=\"submit\" class=\"_button _button-1\" name=\"button\" value=\"user\">User Login</button>            \n");
      out.write("        </form>\n");
      out.write("        <script>\n");
      out.write("            function validation(){\n");
      out.write("                var email = document.getElementById(\"email\").value;\n");
      out.write("                var pass = document.getElementById(\"pass\").value;\n");
      out.write("                if(email !== \"\" || pass !== \"\"){\n");
      out.write("                    return true;\n");
      out.write("                }\n");
      out.write("                else{\n");
      out.write("                    alert(\"please fill the email and password Important to log_in\");\n");
      out.write("                    return false;\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("            </script>\n");
      out.write("        <form action=\"signup.html\">\n");
      out.write("        <button type=\"submit\" class=\"_button _button-3\" name=\"button\" value=\"sign\">Sign_up</button>\n");
      out.write("        </form>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
