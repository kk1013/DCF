<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ page trimDirectiveWhitespaces="true" %>
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
                <tr class="table-tr">
                    <td class="td1">51</td>
                    <td class="td2" onClick="location.href='notice_detail'">추석연휴 기간 배송안내</td>
                    <td class="td3">2022.09.05</td>
                </tr>
                <tr class="table-tr">
                    <td class="td1">50</td>
                    <td class="td2">멍냥남매 서버 점검으로 인한 서비스 일시 중단 안내</td>
                    <td class="td3">2022.09.01</td>
                </tr>
                <tr class="table-tr">
                    <td class="td1">49</td>
                    <td class="td2">개인정보처리방침 개정 안내의 건</td>
                    <td class="td3">2022.08.29</td>
                </tr>
                <tr class="table-tr">
                    <td class="td1">51</td>
                    <td class="td2">추석연휴 기간 배송안내</td>
                    <td class="td3">2022.09.05</td>
                </tr>
                <tr class="table-tr">
                    <td class="td1">50</td>
                    <td class="td2">멍냥남매 서버 점검으로 인한 서비스 일시 중단 안내</td>
                    <td class="td3">2022.09.01</td>
                </tr>
                <tr class="table-tr">
                    <td class="td1">49</td>
                    <td class="td2">개인정보처리방침 개정 안내의 건</td>
                    <td class="td3">2022.08.29</td>
                </tr>
                <tr class="table-tr">
                    <td class="td1">51</td>
                    <td class="td2">추석연휴 기간 배송안내</td>
                    <td class="td3">2022.09.05</td>
                </tr>
                <tr class="table-tr">
                    <td class="td1">50</td>
                    <td class="td2">멍냥남매 서버 점검으로 인한 서비스 일시 중단 안내</td>
                    <td class="td3">2022.09.01</td>
                </tr>
                <tr class="table-tr">
                    <td class="td1">49</td>
                    <td class="td2">개인정보처리방침 개정 안내의 건</td>
                    <td class="td3">2022.08.29</td>
                </tr>
                <tr class="table-tr">
                    <td class="td1">51</td>
                    <td class="td2">추석연휴 기간 배송안내</td>
                    <td class="td3">2022.09.05</td>
                </tr>
                <tr class="table-tr">
                    <td class="td1">50</td>
                    <td class="td2">멍냥남매 서버 점검으로 인한 서비스 일시 중단 안내</td>
                    <td class="td3">2022.09.01</td>
                </tr>
                <tr class="table-tr">
                    <td class="td1">49</td>
                    <td class="td2">개인정보처리방침 개정 안내의 건</td>
                    <td class="td3">2022.08.29</td>
                </tr>
                <tr class="table-tr">
                    <td class="td1">51</td>
                    <td class="td2">추석연휴 기간 배송안내</td>
                    <td class="td3">2022.09.05</td>
                </tr>
                <tr class="table-tr">
                    <td class="td1">50</td>
                    <td class="td2">멍냥남매 서버 점검으로 인한 서비스 일시 중단 안내</td>
                    <td class="td3">2022.09.01</td>
                </tr>
                <tr class="table-tr">
                    <td class="td1">49</td>
                    <td class="td2">개인정보처리방침 개정 안내의 건</td>
                    <td class="td3">2022.08.29</td>
                </tr>
            </table>

            <div class="customer-search">
                <input type="text" class="searchbar">
                <input type="button" class="searchbutton" value="검색">
            </div>
        </div>
    </div>
    </form>
    