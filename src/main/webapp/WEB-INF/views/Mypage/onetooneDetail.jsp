<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ page trimDirectiveWhitespaces="true" %>
<link rel="stylesheet" href="../css/Mypage/onetooneDetail.css">

<div id="page-nav-wrap">
        <div id="page-nav">
            HOME > 1:1문의
        </div>
    </div>

    <div class="onetooneDetail">

        <div class="onetoone-top">
            <span>1:1문의</span>
        </div>

        <div>
            <table class="onetoone-table">
                <tr>
                    <td class="onetoone-td1">이름</td>
                    <td class="onetoone-td2 onetoone-tdname">이순해</td>
                    <td class="onetoone-td1">작성일</td>
                    <td class="onetoone-td2">2022.09.07</td>
                </tr>

                <tr>
                    <td class="onetoone-td1">제목</td>
                    <td colspan='4' class="onetoone-td2">할인쿠폰 사용후 부분 반품 가능한가요?</td>
                </tr>
                <tr>
                    <td class="onetoone-td1 onetoone-td-content">내용</td>
                    <td colspan='4' class="onetoone-td2">주문했는데 쿠폰 사용후 반품이면 어떻게 차감후에 반품되는지 알고 싶습니다! 혹시 쿠폰은 재발행 가능한가요?</td>
                </tr>
                <tr>
                    <td class="onetoone-td1 onetoone-td-img">사진</td>
                    <td colspan='4' class="onetoone-td2"><img src="/img/dogfeedmainimg.jpg" width="70px" height="70px"></td>
                </tr>
            </table>
        </div>

        <div>
            <table class="onetoone-table">
                <tr>
                    <td class="onetoone-td1">답변</td>
                    <td colspan='4' class="onetoone-td2">안녕하세요</td>
                </tr>
                <tr>
                    <td class="onetoone-td1 onetoone-td-content2">내용</td>
                    <td colspan='4' class="onetoone-td2">가능합니다.내용입니다.가능합니다.내용입니다.가능합니다.내용입니다.가능합니다.내용입니다.가능합니다.내용입니다.가능합니다.내용입니다.가능합니다.<br>
                        내용입니다.가능합니다.내용입니다.가능합니다.내용입니다.</td>
                </tr>
            </table>

        </div>

        <div class="onetoone-button">
            <input onClick="location.href='onetoonelist'" type="button" class="onetoone-button1" value="목록">
            <input type="button" class="onetoone-button2" value="삭제">
        </div>

    </div>