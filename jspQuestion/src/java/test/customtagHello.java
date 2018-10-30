package test;


import javax.servlet.jsp.tagext.*;
import javax.servlet.jsp.*;
import java.io.*;


/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author KMV
 */
public class customtagHello extends SimpleTagSupport{
    String name;
        @Override
	public void doTag() throws JspException,IOException
	{
		JspWriter out = getJspContext().getOut();
		out.println("Hello "+name);
	}
        public void setName(String name)
        {
            this.name=name;
            
        }
 
}