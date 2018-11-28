package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.HashMap;
import java.util.Map;

public final class Intro_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Session and Cookies</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

            
            String Name = "Current";
            Cookie cookies [] = request.getCookies ();
            Cookie t = null;
            if (cookies != null)
            {
                for (int i = 0; i < cookies.length; i++) 
                {
                    if (cookies [i].getName().equals (Name))
                    {
                        t = cookies[i];
                        break;
                    }
                }
            }
            if(t == null)
            {out.println("NO COOKIE");
               if(application.getAttribute("Manager")==null)
               {out.println("NO SessionManager");
                   HashMap<String, HttpSession> SessionsManager=new HashMap<String, HttpSession>();
                   application.setAttribute("Manager",SessionsManager);
               }
               
      out.write("\n");
      out.write("               <form action=\"StoreTheSession\">\n");
      out.write("                   <td>Enter User : </td><input name=\"name\" type=\"text\">\n");
      out.write("                   <input type=\"submit\">\n");
      out.write("               </form>\n");
      out.write("               ");

            }
            else
            {
                if(application.getAttribute("Manager")==null)
               {
                    t.setMaxAge(0);
                    response.addCookie(t);
                    response.sendRedirect("Intro.jsp");
               }else{
                       HashMap<String, HttpSession> SessionsManager_;
                       SessionsManager_=(HashMap<String, HttpSession>)application.getAttribute("Manager");
                       HttpSession session_=null;
                       session_=SessionsManager_.get(t.getValue());
                       if(session_!=null)
                       {
                            out.print("User ");
                            out.print(session_.getAttribute("User"));
                            out.print(" in SessionsManager now ");
                            //out.print(" "+SessionsManager_.size());
                            
      out.write("\n");
      out.write("                            <form action=\"logout\">\n");
      out.write("                                <input value=\"logout\" type=\"submit\">\n");
      out.write("                            </form>\n");
      out.write("        ");

                       }
                    else{
                            t.setMaxAge(0);
                             //temp.setPath("/");
                               response.addCookie(t);
                            response.sendRedirect("Intro.jsp");
                        }
}
}
                    

            
            
        
        
      out.write("\n");
      out.write("        \n");
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
