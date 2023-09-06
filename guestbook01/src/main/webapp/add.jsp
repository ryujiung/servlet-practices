<%@page import="com.poscodx.guestbook.dao.GuestBookDao"%>
<%@page import="java.sql.Date"%>
<%@page import="com.poscodx.guestbook.vo.GuestBookVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	String name = request.getParameter("name");
	String password = request.getParameter("password");
	String contents = request.getParameter("message");
	
	java.util.Date utilDate = new java.util.Date();
	long currentMilliseconds = utilDate.getTime();
	Date date = new Date(utilDate.getTime());
	
	GuestBookVo vo = new GuestBookVo();
	vo.setName(name);
	vo.setPassword(password);
	vo.setContents(contents);
	vo.setDate(date);
	
	new GuestBookDao().insert(vo);
	
	response.sendRedirect("/guestbook01");
	%>