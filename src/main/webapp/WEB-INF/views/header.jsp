<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="/css/header.css">
<link rel="stylesheet" href="/css/font.css">
<div id="headerwrap">
<div id="top">
    <ul>
        <li>
            <a href="login">로그인</a>
        </li>
        <li>
            <a href="join">회원가입</a>
        </li>
        <li id="ds_none">
            <img src="/img/icons/main-header-maypage.png" class="header-icon">
            <img src="/img/icons/mypagearrow.png" class="triangle ds-none" alt="">
            <div class="mypage-submenu ds-none">
                <ul>
                    <li><a href="order_list">주문목록</a></li>
                    <li><a href="one2one_list">1:1문의</a></li>
                    <li><a href="info_change">회원정보변경</a></li>
                    <li><a href="cart">장바구니</a></li>
                </ul>
            </div>
        </li>
        <li>
            <a href="cart"><img src="/img/icons/main-header-basket.png" class="header-icon"></a>
        </li>
    </ul>
</div>
<div id="header">
    <h1><img src="/img/logo.png" style="cursor: pointer;" alt="멍냥남매" onclick="location.href='index';"></h1>
    <p><input type="text"><img src="/img/icons/searchicon.png" alt="검색하기"></p>
</div>
<div id="menu">
    <ul>
        <li>
            <h1><a href="product" class="linkhover">반려견</a></h1>
        </li>
        <li>
            <h1><a href="product" class="linkhover">반려묘</a></h1>
        </li>
        <li>
            <h1><a href="product" class="linkhover">신상품</a></h1>
        </li>
        <li>
            <h1><a href="product" class="linkhover">베스트</a></h1>
        </li>
        <li>
            <h1><a href="sample" class="linkhover">샘플신청</a></h1>
        </li>
        <li>
            <h1><a href="notice" class="linkhover">고객센터</a></h1>
        </li>
    </ul>
</div>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
    $("#ds_none").click(function () {
        var triangle = document.getElementsByClassName("triangle");
        var submenu = document.getElementsByClassName("mypage-submenu");

        if(triangle[0].classList.contains("ds-none") && submenu[0].classList.contains("ds-none")){
            triangle[0].classList.remove("ds-none");
            submenu[0].classList.remove("ds-none");
        }else{
            triangle[0].classList.add("ds-none");
            submenu[0].classList.add("ds-none");
        }
    });
</script>
