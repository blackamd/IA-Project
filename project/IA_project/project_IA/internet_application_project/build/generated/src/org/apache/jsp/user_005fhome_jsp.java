package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.Iterator;
import db.connect;
import java.util.ArrayList;

public final class user_005fhome_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/home.css\">\n");
      out.write("        <title>");
      out.print(session.getAttribute("name"));
      out.write(" Home</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("    <link async href=\"http://fonts.googleapis.com/css?family=Warnes\" data-generated=\"http://enjoycss.com\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("    <center><h1>Welcome ");
      out.print(session.getAttribute("name"));
      out.write("</h1></center>\n");
      out.write("    <center><h1>House Buy and Rent</h1></center>\n");
      out.write("    <center><div class=\"link\">\n");
      out.write("        <button class=\"button\" onClick=\"window.location='userprofile.jsp';\" value=\"profile\" type=\"submit\">My Profile</button>\n");
      out.write("        <button class=\"button\" onClick=\"window.location='signup.html';\" value=\"contact\" type=\"submit\">Contact us</button>\n");
      out.write("        <button class=\"button\" onClick=\"window.location='logout';\" value=\"logout\" type=\"submit\">Log_out</button>\n");
      out.write("        </div></center><br>\n");
      out.write("    <center>-----------------------------------------------------------------------------------------------</center>\n");
      out.write("        <center><form>\n");
      out.write("\t\t<div class=\"\"  class=\"col-xs-12 maincontent\">\n");
      out.write("                    Experience <select class=\"text\">\n");
      out.write("\t\t\t<option value=\"\">5 years</option>\n");
      out.write("\t\t\t<option value=\"\">Saab</option>\n");
      out.write("\t\t\t<option value=\"\">Mercedes</option>\n");
      out.write("\t\t\t<option value=\"\">Audi</option>\n");
      out.write("\t\t\t\t</select>\n");
      out.write("----\n");
      out.write("                    skills <select class=\"text\">\n");
      out.write("\t\t\t<option value=\"\">computer</option>\n");
      out.write("\t\t\t<option value=\"\">Saab</option>\n");
      out.write("\t\t\t<option value=\"\">Mercedes</option>\n");
      out.write("\t\t\t<option value=\"\">Audi</option>\n");
      out.write("                            </select>\t\n");
      out.write("---\n");
      out.write("                    age <select class=\"text\">\n");
      out.write("\t\t\t<option value=\"\">48</option>\n");
      out.write("\t\t\t<option value=\"\">Saab</option>\n");
      out.write("\t\t\t<option value=\"\">Mercedes</option>\n");
      out.write("\t\t\t<option value=\"\">Audi</option>\n");
      out.write("\t\t\t</select>\n");
      out.write("---\n");
      out.write("                    job Title <select class=\"text\">\n");
      out.write("\t\t\t<option value=\"\">computer enginner</option>\n");
      out.write("\t\t\t\t</select>\n");
      out.write("\t\t\t\t\n");
      out.write("\t\t\t<a href=#><button type=\"button\" class=\"btn btn-primary btn-lg\">SEARCH</button></a>\n");
      out.write("\t\t\t\t\t\t\n");
      out.write("\t\t</div>\t\t\t\t\n");
      out.write("        </form></center>\n");
      out.write("    <center>-----------------------------------------------------------------------------------------------</center>\n");
      out.write("    <center><h2>This is all our advertisements</h2></center>\n");
      out.write("        \n");
      out.write("         ");
 
             ArrayList user_ads = new ArrayList();
            try{
            connect con = new connect();
            user_ads = con.get_all_ads();
             }catch(NullPointerException e){
            System.out.print("error" + e);
             }
                    
        if(user_ads.isEmpty()){
        
      out.write("\n");
      out.write("        <div class=\"container\">You Do Not Have any Advertisement Yet\n");
      out.write("            \n");
      out.write("            <button class=\"button\" value=\"Edit\" type=\"submit\">OK</button>\n");
      out.write("        </div>\n");
      out.write("        ");

        }
        else{

            Iterator itr = user_ads.iterator();
            while (itr.hasNext()) {
            ArrayList pList = (ArrayList) itr.next();
        
      out.write("\n");
      out.write("         <div class=\"container\">\n");
      out.write("             <form action=\"advertisepage.jsp\">\n");
      out.write("            Date : ");
      out.print(pList.get(1));
      out.write("\n");
      out.write("            type : ");
      out.print(pList.get(2));
      out.write("\n");
      out.write("            size : ");
      out.print(pList.get(3));
      out.write("\n");
      out.write("            price : ");
      out.print(pList.get(4));
      out.write("\n");
      out.write("            location : ");
      out.print(pList.get(5));
      out.write("\n");
      out.write("            floor : ");
      out.print(pList.get(6));
      out.write("\n");
      out.write("            offers : ");
      out.print(pList.get(7));
      out.write("\n");
      out.write("            Discription : ");
      out.print(pList.get(8));
      out.write("\n");
      out.write("            status : ");
      out.print(pList.get(9));
      out.write("\n");
      out.write("            <input type=\"hidden\" value=\"");
      out.print(pList.get(0));
      out.write("\" name=\"ads_id\">\n");
      out.write("            <br><button class=\"button\" value=\"view\" type=\"submit\">view Ads</button>\n");
      out.write("             </form>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        ");

        }
}
        
      out.write("\n");
      out.write("        \n");
      out.write("   \n");
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
