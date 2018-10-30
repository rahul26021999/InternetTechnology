/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package test;

import java.io.IOException;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;

/**
 *
 * @author KMV
 */
public class customtagreverse extends SimpleTagSupport {
    String name;
        @Override
	public void doTag() throws JspException,IOException
	{
		JspWriter out = getJspContext().getOut();
		StringBuilder s=new StringBuilder(name);
                out.println(s.reverse());
                
                
	}
        public void setInput(String input)
        {
            this.name=input;
            
        }
 
}
