<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="/css/product/productAction.css">
<div id="productActionpage-wrap">
    <div id="productActionpage-topwrap">
        <div id="productActionpage-img">
            <img src="/img/product-img/dogfood1.jpg" alt="">
        </div>
        <div id="productActionpage-productcontent">
            <div id="productActionpage-name">
                <p>네이처스버라이어티 인스팅트 LID연어 독키블 1.8kg</p>
            </div>
            <p id="productActionpage-price">61,500원</p>
            <div id="countbar">
                <span>수량</span>
                <div id="countbar-in">
                    <div id="count-button">
                        <input type="button" id="minus" value="-">
                        <p id="count">1</p>
                        <input type="button" id="plus" value="+">
                    </div>
                    <div id="count-price">
                        <p>61,500원</p>
                        <input type="button" id="reset" value="x">
                    </div>
                </div>
            </div>
            <div>
                <input type="button" id="basket" value="장바구니 담기">
            </div>
        </div>
    </div>
    <div id="product-guide">
        <a href="#">상품정보</a>
        <a href="#">구매후기</a>
        <a href="#">취소/교환/반품 안내</a>
    </div>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
    $(document).ready(function(){
        $("#plus").click(function(){
            var count = $("#count");
            var result = Number(count[0].innerHTML) + 1;
            count[0].innerHTML = result;
        });
        $("#minus").click(function(){
            var count = $("#count");
            var result = Number(count[0].innerHTML) - 1;
            if(result != 0){
                count[0].innerHTML = result;
            }else{
                return;
            }
        });
        $("#reset").click(function(){
            var count = $("#count");
            count[0].innerHTML = "1";
        });
    }); 
</script>