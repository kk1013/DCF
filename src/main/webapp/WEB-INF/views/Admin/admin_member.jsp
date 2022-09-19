<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<link rel="stylesheet" href="/css/Admin/admin_member.css">
<div id="user-search-wrap">
    <h2 id="user-search-title">회원정보 조회</h2>
    <input type="button" class="btn" onclick="location.href='admin_member_detail'" value="정보수정">
    <input type="button" class="btn" value="회원삭제">
    <div class="customer-search">
    	<select name="search" id="search">
    		<option value="id">아이디</option>
    		<option value="name">이름</option>
    		<option value="email">이메일</option>
    		<option value="phone">휴대전화</option>
    	</select>
        <input type="text" class="searchbar">
        <input type="button" class="searchbutton" value="검색">
    </div>
    <table id="user-search-table">
        <tr id="first-tr">
            <td></td>
            <td>등록일</td>
            <td>아이디</td>
            <td>이름</td>
            <td>휴대전화</td>
            <td>성별</td>
            <td>이메일</td>
            <td>생일</td>
        </tr>
       	<c:forEach var="dto" items="${ list }">
	  	<tr>
           <td><input type="checkbox"></td>
           <td><fmt:formatDate value="${ dto.user_join_date }" pattern = "yyyy-MM-dd"/></td>
           <td>${ dto.user_id }</td>
           <td>${ dto.user_name }</td>
           <td>${ dto.user_phone }</td>
           <td>${ dto.user_gender }</td>
           <td>${ dto.user_email }</td>
           <td><fmt:formatDate value="${ dto.user_birth_date }" pattern = "yyyy-MM-dd"/></td>
	  	</tr>
		</c:forEach>
    </table>
</div>