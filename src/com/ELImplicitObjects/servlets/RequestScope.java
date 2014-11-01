package com.ELImplicitObjects.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/RequestScope.do")
public class RequestScope extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public RequestScope() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	request.setAttribute("uid", "reqUser");
    	request.setAttribute("pwd", "reqUserPwd");
    	RequestDispatcher rd = request.getRequestDispatcher("RequestScope.jsp");
    }
}
