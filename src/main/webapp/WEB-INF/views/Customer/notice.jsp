<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
<link rel="stylesheet" href="/css/Customer/notice.css">

<div id="page-nav-wrap">
        <div id="page-nav">
            HOME > 공지사항
        </div>
    </div>

    <form action="#">
    <div class="customerwrap">
        <div class="titlediv">
            <span class="customer-title">고객센터</span>
        </div>
        
        <div id="customer-session-menu">
            <input type="button" class="customerservice" id="left-button" value="공지사항">
            <input onClick="location.href='faq'" type="button" class="customerservice" id="right-button" value="FAQ">
        </div>
        
        
        <div id="notice">
            <table class="customer-table">
                <tr class="table-head">
                    <td class="table-td1">번호</td>
                    <td class="table-td2">제목</td>
                    <td class="table-td3">작성일</td>
                </tr>
                <c:forEach var="list" items="${list}">
                <tr class="table-tr" onclick="location.href='notice_detail?notice_idx=${ list.notice_idx }'">
                    <td class="td1">${ list.notice_idx }</td>
                    <td class="td2">${ list.notice_title }</td>
                    <td class="td3"><fmt:formatDate value="${ list.notice_date }" pattern = "yyyy-MM-dd"/></td>
                </tr>
                </c:forEach>
            </table>

            <div class="customer-search">
                <input type="text" class="searchbar">
                <input type="button" class="searchbutton" value="검색">
            </div>
        </div>
    </div>
    </form>
    