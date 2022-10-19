<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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

    <form method="get" name="form">
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

			<c:forEach var="list" items="${list}" varStatus="status">
            <div class="cartlist-content">

                <input class="checkboxdiv" id="chk" type="checkbox" name="chk" value="${list.basket_idx}">
                <input type="hidden" class="chk_hidden" name="chk" value="0">


                <div class="imgdiv">
                    <img src="../img/product-img/${list.product_image}" alt="상품이미지" width="120px" height="120px">
                </div>

                <div class="productname">${list.product_name}</div>

                <div class="countdiv">
                    <input class="minusbutton" type='button' id="minus" onclick="count(this)" value='-'>
                    <div id='result' class="result">${list.basket_count}</div>
                    <input class="plusbutton" type='button' id="plus" onclick="count(this)" value='+'>
                </div>

                <div class="productprice">
                <span class="price price-num"><fmt:formatNumber value="${list.basket_count*list.product_price}" pattern="###,###,###"/></span>
                <input type="hidden" value="${list.product_price}">
                <span class="price">원</span>
                </div>
                <div class="buttondiv">
                    <input class="cartlist-button cartlist-button1" type="button" value="바로주문" onclick="location.href='/order_payments?basket_idx=${list.basket_idx}'">
                	<input type=hidden name="status_idx" value="${status.count}">
                	<input type="hidden" name="basket_idx" value="${list.basket_idx}">
                    <input class="cartlist-button" name="delete" type="button" value="삭제" onclick="location.href='/cart_delete?status_idx=${status.count}'">
                </div>

            </div>
            </c:forEach>


            <div class="cartlist-delete">
                <input class="delete-button" type="submit" value="선택삭제" formaction="cart_check_delete">
            </div>

            <div class="cartlist-order">
                <span class="priceall">총 결제금액</span>
                <span id="price-all-num" class="price-all-num"><fmt:formatNumber value="${sum}" pattern="###,###,###"/></span><span class="price-all">원</span>
            </div>

        </div>
        
        <div class="orderbuttondiv">
            <input class="order-button order-button1" type="submit" value="선택상품주문" formaction="cart_check_order">
            <input class="order-button order-button2" type="submit" value="전체상품주문" formaction="cart_order_all">
        </div>

    </div>
    </form>

    
<script type="text/javascript">
    

    $(document).ready(function() {
    	
    	$("#cbx_chkAll").click(function() {
    		var chkAll = $('input:checkbox[id="cbx_chkAll"]').is(":checked");
    		if($("#cbx_chkAll").is(":checked")) $("input[name=chk]").prop("checked", true);
    		else $("input[name=chk]").prop("checked", false);
    		if(chkAll==true) $(".chk_hidden").attr("disabled", true);
            else if(chkAll==false) $(".chk_hidden").attr("disabled", false);
    	});

    	$("input[name=chk]").click(function() {
    		var chk = $('input:checkbox[id="chk"]').is(":checked");
    		var total = $("input[name=chk]").length;
    		var checked = $("input[name=chk]:checked").length;
    		if(total != checked) $("#cbx_chkAll").prop("checked", false);
    		else $("#cbx_chkAll").prop("checked", true);
    		if(chk==true) $(".chk_hidden").attr("disabled", true);
            else if(chk==false) $(".chk_hidden").attr("disabled", false);
    	});

    });
    
    function count(btn) {
    	var parent = btn.parentNode;
    	var product_price = parent.parentNode.childNodes[11].childNodes[3];
    	product_price_value = product_price.value;
        var price = parent.parentNode.childNodes[11].childNodes[1];
    	price_text = price.innerText.replace(/,/g, "");
        var result = parent.childNodes[3];
    	result_text = result.innerText;
        var total = document.getElementById("price-all-num");
        total_text = total.innerText.replace(/,/g, "");;
        var id = btn.getAttribute('id');
        var status = parent.parentNode.childNodes[13].childNodes[3];
        status_value = status.value;
        if(id == 'plus'){
        	 result.innerHTML = Number(result_text) + 1;
             price.innerHTML = Number(price_text) + Number(product_price_value);
             total.innerHTML = Number(total_text) + Number(product_price_value);
             price.innerHTML = price.innerHTML.replace(/\B(?=(\d{3})+(?!\d))/g, ',');
             total.innerHTML = total.innerHTML.replace(/\B(?=(\d{3})+(?!\d))/g, ',');
             $.ajax({
					type: "POST",
					url: "/cart_update_plus?status_value="+status_value+"&result_text="+result_text,
					success: function( str ){
						console.log("hello");
					}
			 })
        } else if(id == 'minus'){
        	 result.innerHTML = Number(result_text) - 1;
             price.innerHTML = Number(price_text) - Number(product_price_value);
             total.innerHTML = Number(total_text) - Number(product_price_value);
             price.innerHTML = price.innerHTML.replace(/\B(?=(\d{3})+(?!\d))/g, ',');
             total.innerHTML = total.innerHTML.replace(/\B(?=(\d{3})+(?!\d))/g, ',');
             $.ajax({
					type: "POST",
					url: "/cart_update_minus?status_value="+status_value+"&result_text="+result_text
			 })
        }
        	
    }
    
    
    
    <% if(request.getAttribute("msg") != null) { %>
		alert("${msg}");
	<% }else { %>
	<% } %>
</script>