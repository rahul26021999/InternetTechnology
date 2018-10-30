/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author KMV
 */
@WebServlet(urlPatterns = {"/myFirstServlet"})
public class myFirstServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out=response.getWriter();
        
        Enumeration e=request.getParameterNames();
        
 
//        String x="Your name is "+request.getParameter("name")+
//                "<br>"+
//                "Your course is "+request.getParameter("course")+
//                "<br>"+
//                "Your date is "+request.getParameter("date");
//        String[] value= request.getParameterValues("address");
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet NewServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>");
            while(e.hasMoreElements())
        {
            Object o=e.nextElement();
            String s=(String)o;
                   String[] value= request.getParameterValues(s);
            for(int i=0;i<value.length;i++){
                out.println("Your "+s+" is : "+value[i]+"<br>");
            }
        }
            out.println("</h1>");
//            out.println("<div>"+"YOur Address is : ");
//            for(int i=0;i<value.length;i++){
//                out.println(value[i]);
//            }
//            out.println("</div>");
            out.println("</body>");
            out.println("</html>");
    }

}
