<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ page trimDirectiveWhitespaces="true" %>
<link rel="stylesheet" href="/css/Mypage/one2one_list.css">

<div class="wrapper">
        <div id="page-nav-wrap">
            <div id="page-nav">
                HOME > 문의내역
        </div>
    </div>

    <div class="onetoonelistwrap">

        <div class="onetoonelist-title">
            <sapn>문의내역</sapn>
        </div>
    
        <div id="onetoonelist">
            <table class="table">
                <tr class="table-head">
                    <td class="table-td1">제목</td>
                    <td class="table-td2">작성일</td>
                </tr>
                <tr class="table-tr">
                    <td class="td1"><a href="one2one_detail">배송일정 문의합니다.</a></td>
                    <td class="td2">2022-09-13</td>
                </tr>
                <tr class="table-tr">
                    <td class="td1 td3"><a href="one2one_detail">배송일정 문의합니다.</a></td>
                    <td class="td2 td3">2022-09-13</td>
                </tr>
            </table>
        </div>

        <div class="onetoone-button">
            <input onClick="location.href='one2one'" type="button" class="onetoone" value="1:1문의하기">
        </div>

    </div>