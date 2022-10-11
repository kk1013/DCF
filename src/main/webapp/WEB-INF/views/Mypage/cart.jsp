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

    <form action="cart_form">
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

			<c:forEach var="list" items="${list}">
            <div class="cartlist-content">

                <input class="checkboxdiv" type="checkbox" name="chk" value="${list.basket_idx}">

                <div class="imgdiv">
                    <img src="../img/product-img/${list.product_image}" alt="상품이미지" width="120px" height="120px">
                </div>

                <div class="productname">${list.product_name}</div>

                <div class="countdiv">
                    <input class="minusbutton" type='button' id="minus" onclick="count(this)" value='-'/>
                    <div id='result' class="result">${list.basket_count}</div>
                    <input class="plusbutton" type='button' id="plus" onclick="count(this)" value='+'/>
                </div>

                <div class="productprice">
                <span class="price price-num">${list.basket_count*list.product_price}</span>
                <input type="hidden" value="${list.product_price}">
                <span class="price">원</span>
                </div>
                <div class="buttondiv">
                    <input class="cartlist-button cartlist-button1" type="button" value="바로주문">
                    <input class="cartlist-button" type="submit" value="삭제">
                </div>

            </div>
            </c:forEach>


            <div class="cartlist-delete">
                <input class="delete-button" type="submit" value="선택삭제">
            </div>

            <div class="cartlist-order">
                <span class="priceall">총 결제금액</span>
                <span id="price-all-num" class="price-all-num">${sum}</span><span class="price-all">원</span>
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
    	var price = document.getElementById("price-all-num").innerHTML;
    	var result = price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
    	console.log(result);
    	
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
	
    function count(btn) {
        var parent = btn.parentNode;
    	var product_price = parent.parentNode.childNodes[9].childNodes[3];
    	product_price_value = product_price.value;
        var price = parent.parentNode.childNodes[9].childNodes[1];
    	price_text = price.innerText;
        var result = parent.childNodes[3];
    	result_text = result.innerText;
        var total = document.getElementById("price-all-num");
        total_text = total.innerText;
        var id = btn.getAttribute('id');
        if(id == 'plus'){
            result.innerHTML = Number(result_text) + 1;
            price.innerHTML = Number(price_text) + Number(product_price_value);
            total.innerHTML = Number(total_text) + Number(product_price_value);
        }else if(id == 'minus'){
            if(result.innerHTML == '1'){
                return;
            }
            result.innerHTML = Number(result_text) - 1;
            price.innerHTML = Number(price_text) - Number(product_price_value);
            total.innerHTML = Number(total_text) - Number(product_price_value);
        }
    }
    
    
    
    <% if(request.getAttribute("msg") != null) { %>
		alert("${msg}");
	<% }else { %>
	<% } %>
</script>