<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<link rel="stylesheet" href="/css/Admin/admin_one2one_detail.css">

<%-- 	<% session = request.getSession(); %>
	<%= session.getAttribute("list")%> --%>
	<img src="../img/product-img/${list.one2one_image}">
