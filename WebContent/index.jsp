<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Welcome to the World Manager</title>
</head>
<body>
	<jsp:include page="header.jsp" />
	<table style="width:100%;">
		<tr>
			<td style="width:25%;height:80%;" valign="top">
			  	<jsp:include page="navbar.jsp" />
			</td>
			<td style="width:75%;height:80%;">
				<h1>Welcome to the World Managment System</h1>
				Hello ${initParam.dbuserid}<br>
				I see you like to use <br><strong>${header["user-agent"]}</strong></br> to browse!
				<br><br>${pageContext.request.contextPath}
				<br>
				<br><H1>TMI</H1>
				${headerValues}<br><br><br>
				<h2>The application variables tell us:</h2>
				<span>UserID:&nbsp;</span>${applicationScope.uid}
				<br>
				<span>PWD:&nbsp;</span>${applicationScope.pwd}
				<br>
				
				<% 
					session.setAttribute("uid", "sesUser");
					session.setAttribute("pwd", "12sesUser");
					
					int cookieLife = 3600*24*7;
					Cookie uidCook = new Cookie("credentials_uid","cookieUser");
					uidCook.setMaxAge(cookieLife);
					response.addCookie(uidCook);
					Cookie pwdCook = new Cookie("credentials_pwd","cookieUserPWD");
					uidCook.setMaxAge(cookieLife);
					response.addCookie(pwdCook);					
				%>
			</td>
		</tr>
	</table>
	<jsp:include page="footer.jsp" />
</body>
</html>