<%@page import="dto.Freeboard"%>
<%@page import="dao.FreeboardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int idx = Integer.parseInt(request.getParameter("idx"));	
	FreeboardDao dao = FreeboardDao.getInstance();
	Freeboard bean = dao.getOne(idx);
	
	request.setAttribute("bean",bean);
	pageContext.forward("updateView.jsp");
	

%>