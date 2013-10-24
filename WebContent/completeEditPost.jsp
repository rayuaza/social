<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="socialapp.src.*"%>

<jsp:useBean id="app" class="socialapp.src.SocialApp" scope="session" />
<jsp:useBean id="user" class="socialapp.src.User" scope="session" />

<%

	String title = request.getParameter("title");
	String date = request.getParameter("date");
	String post = request.getParameter("post");
	
	Article a = new Article();
	
	a.setTitle(title);
	a.setContent(post);
	a.setPublishedDate(date);
	
	app.save();
	response.sendRedirect("/social/profile.jsp");
%>