package com.ELImplicitObjects.servlets;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

@WebListener
public class ApplicationStartup implements ServletContextListener {

	
	@Override
	public void contextDestroyed(ServletContextEvent arg0) {
		
	}

	@Override
	public void contextInitialized(ServletContextEvent ctxt) {
		ctxt.getServletContext().setAttribute("uid", "appUser");
		ctxt.getServletContext().setAttribute("pwd", "appUserPwd");
	}

	
}
