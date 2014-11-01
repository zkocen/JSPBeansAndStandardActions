package com.worldmanager.models;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class setBeansAllPropertiesLoginUser
 */
@WebServlet("/setBeansAllPropertiesLoginUser.do")
public class setBeansAllPropertiesLoginUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public setBeansAllPropertiesLoginUser() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uid = request.getParameter("uid");
		String pwd = request.getParameter("pwd");
		
		int authLevel = 1;
		
		String base = "SetBeansAllPropertiesWithParameters2.jsp";
		//String params = String.format("?uid=%s&pwd=%s&a1=%d", uid, pwd, authLevel);
		String params = String.format("?userId=%s&password=%s&authLevel=%d", uid, pwd, authLevel);
		String dest = String.format("%s%s", base, params);
		RequestDispatcher rd = request.getRequestDispatcher(dest);
		rd.forward(request, response); 
	}

}
