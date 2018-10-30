/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package test;

import java.util.*;
import java.io.IOException;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;

/**
 *
 * @author KMV
 */
public class customtagWishMe extends SimpleTagSupport {
    
    String name;
        @Override
	public void doTag() throws JspException,IOException
	{
		JspWriter out = getJspContext().getOut();
                Date d=new Date();
                int n=d.getHours();
                if(n<12)
                 {
                     out.println("Good Morning "+name);
                 }
                 else  if(n>=12 && n<16)
                 {
out.println("Good Afternoon "+name);
                 }
                 else if(n>=16 && n<20){
out.println("Good Evening "+name);
                 }
                 else{
out.println("Good Night "+name);
                 }
                      
	}
        public void setName(String name)
        {
            this.name=name;
            
        }
}
