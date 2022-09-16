<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ page trimDirectiveWhitespaces="true" %>
<link rel="stylesheet" href="../css/Mypage/orderlist.css">

<div id="page-nav-wrap">
        <div id="page-nav">
            HOME > 주문목록
        </div>
    </div>

    <form action="#">
    <div class="orderlistwrap">
        <div>
            <span class="orderlist">주문목록</span>
        </div>

        <div class="orderlist2">
            <span class="orderdate">주문일자 2022.07.30</span>
            <span class="ordernum1">주문번호</span>
            <span class="ordernum2">2022073039299501</span>
        </div>

        <div class="order-product">
            <div class="imgdiv">
                <img src="/img/dogfeedmainimg.jpg" width="300px" height="300px">
            </div>
            <div class="product-namediv">
                <span class="product-name">로얄캐닌 인도어 4kg</span>
            </div>
            <div class="product-quantitydiv">
                <span class="product-quantity">수량 1개</span><br>
                <span class="product-price">가격 45,300원</span>
            </div>
            <div class="buttondiv">
                <input class="order-button" type="button" value="상세보기">
                <input class="order-button" type="button" value="배송조회">
                <input onClick="location.href='review'" class="order-button" type="button" value="리뷰쓰기">
                <input class="order-button" type="button" value="주문취소">
            </div>
        </div>
            <div class="price-top">
                <div class="pricediv">
                    <button class="price-all">총 상품금액</button><br>
                    <span class="all-price1">45,300</span><span class="all-price2">원</span>
                </div>
            </div>
        

    </div>

    <div class="orderlistwrap">

        <div class="orderlist2">
            <span class="orderdate">주문일자 2022.06.29</span>
            <span class="ordernum1">주문번호</span>
            <span class="ordernum2">2022073039299502</span>
        </div>

        <div class="order-product">
            <div class="imgdiv">
                <img src="/img/dogfeedmainimg.jpg" width="300px" height="300px">
            </div>
            <div class="product-namediv">
                <span class="product-name">로얄캐닌 인도어 4kg</span>
            </div>
            <div class="product-quantitydiv">
                <span class="product-quantity">수량 1개</span><br>
                <span class="product-price">가격 45,300원</span>
            </div>
            <div class="buttondiv">
                <input class="order-button" type="button" value="상세보기">
                <input class="order-button" type="button" value="배송조회">
                <input onClick="location.href='review'" class="order-button" type="button" value="리뷰쓰기">
                <input class="order-button" type="button" value="주문취소">
            </div>
        </div>

        <div class="order-product">
            <div class="imgdiv">
                <img src="/img/dogfeedmainimg.jpg" width="300px" height="300px">
            </div>
            <div class="product-namediv">
                <span class="product-name">로얄캐닌 인도어 4kg</span>
            </div>
            <div class="product-quantitydiv">
                <span class="product-quantity">수량 1개</span><br>
                <span class="product-price">가격 45,300원</span>
            </div>
            <div class="buttondiv">
                <input class="order-button" type="button" value="상세보기">
                <input class="order-button" type="button" value="배송조회">
                <input onClick="location.href='review'" class="order-button" type="button" value="리뷰쓰기">
                <input class="order-button" type="button" value="주문취소">
            </div>
        </div>
        <div class="price-top">
            <div class="pricediv">
                <button class="price-all">총 상품금액</button><br>
                <span class="order-all">총 2건</span><span class="all-price1">90,600</span><span class="all-price2">원</span>
            </div>
        </div>
    </div>
    </form>