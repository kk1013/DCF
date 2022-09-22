<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ page trimDirectiveWhitespaces="true" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
<link rel="stylesheet" href="/css/Mypage/cart.css">

<div id="page-nav-wrap">
        <div id="page-nav">
            HOME > 장바구니
        </div>
    </div>

    <form action="#">
    <div class="cartwrap">
        <div>
            <span class="cartlist">장바구니</span>
        </div>

        <div>
            <div class="cartlist-top">
                <input class="checkboxdiv" type="checkbox" id="cbx_chkAll">
                <span class="product-name">상품명</span>
                <span class="product-count">수량</span>
                <span class="product-price">금액</span>
                <span class="product-order">주문</span>
            </div>

            <div class="cartlist-content">

                <input class="checkboxdiv" type="checkbox" name="chk">

                <div class="imgdiv">
                    <img src="/img/dogfeedmainimg.jpg" alt="상품이미지" width="120px" height="120px">
                </div>

                <div class="productname">로얄캐닌 인도어 4kg</div>

                <div class="countdiv">
                    <input class="minusbutton" type='button' onclick='count("minus")' value='-'/>
                    <div id='result'>1</div>
                    <input class="plusbutton" type='button' onclick='count("plus")' value='+'/>
                </div>

                <div class="productprice"><span class="price price-num">45,300</span><span class="price">원</span></div>

                <div class="buttondiv">
                    <input class="cartlist-button cartlist-button1" type="button" value="바로주문">
                    <input class="cartlist-button" type="button" value="삭제">
                </div>

            </div>

            <div class="cartlist-content">
                <input class="checkboxdiv" type="checkbox" name="chk">

                <div class="imgdiv">
                    <img src="/img/dogfeedmainimg.jpg" alt="상품이미지" width="120px" height="120px">
                </div>

                <div class="productname">로얄캐닌 인도어 4kg</div>

                <div class="countdiv">
                    <input class="minusbutton" type='button' onclick='count("minus")' value='-'/>
                    <div id='result'>1</div>
                    <input class="plusbutton" type='button' onclick='count("plus")' value='+'/>
                </div>

                <div class="productprice"><span class="price price-num">45,300</span><span class="price">원</span></div>

                <div class="buttondiv">
                    <input class="cartlist-button cartlist-button1" type="button" value="바로주문">
                    <input class="cartlist-button" type="button" value="삭제">
                </div>
            </div>

            <div class="cartlist-delete">
                <input class="delete-button" type="button" value="선택삭제">
            </div>

            <div class="cartlist-order">
                <span class="priceall">총 결제금액</span>
                <span class="price-all-num">85,000</span><span class="price-all">원</span>
            </div>

        </div>
        
        <div class="orderbuttondiv">
            <input class="order-button order-button1" type="button" value="선택상품주문">
            <input class="order-button order-button2" onclick="location.href='payments'" type="button" value="전체상품주문">
        </div>

    </div>

    </form>
    
    <script type="text/javascript">

    $(document).ready(function() {
    	$("#cbx_chkAll").click(function() {
    		if($("#cbx_chkAll").is(":checked")) $("input[name=chk]").prop("checked", true);
    		else $("input[name=chk]").prop("checked", false);
    	});

    	$("input[name=chk]").click(function() {
    		var total = $("input[name=chk]").length;
    		var checked = $("input[name=chk]:checked").length;

    		if(total != checked) $("#cbx_chkAll").prop("checked", false);
    		else $("#cbx_chkAll").prop("checked", true); 
    	});
    });

    function count(type)  {
      const resultElement = document.getElementById('result');
        
      let number = resultElement.innerText;
        
      if(type === 'plus') {
        number = parseInt(number) + 1;
      }else if(type === 'minus')  {
    	  if(parseInt(number) == 1){
    		  return;
    	  }
        number = parseInt(number) - 1;
      }
	
      resultElement.innerText = number;
    }
</script>