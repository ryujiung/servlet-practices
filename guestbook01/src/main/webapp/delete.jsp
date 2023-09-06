<%@page import="com.poscodx.guestbook.dao.GuestBookDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String no = request.getParameter("no");
	
	long no1 = Long.parseLong(no);
	
	new GuestBookDao().deleteByNo(no1);
	
	response.sendRedirect("/guestbook01");
%>