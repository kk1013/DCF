<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="/css/product/sample.css">
<link rel="stylesheet" href="/css/checkbox.css">
<div id="samplepage-wrap">
    <div id="page-nav-wrap">
        <div id="page-nav">
            <p>HOME > 샘플신청</p>
        </div> 
    </div>
    <div id="samplepage-main">
        <h4>샘플신청</h4>
        <div id="samplepage-button">
            <input type="button" class="type-button bgcolor-yello" id="left-button" value="dog">
            <input type="button" class="type-button" id="right-button" value="cat">
        </div>
        <div id="samplepage-sample">
            <table>
                <tr>
                    <td>
                        <div class="sample-product">
                            <img src="/img/product-img/dogfood1.jpg" alt="사료1">
                        </div>
                        <p class="product-name">맥시어덜트 사료 250g</p>
                        <p class="price">2000원</p>
                    </td>
                    <td>
                        <div class="sample-product">
                            <img src="/img/product-img/dogfood2.jpg" class="product" alt="사료2">
                        </div>
                        <p class="product-name">맥시어덜트 사료 250g</p>
                        <p class="price">2000원</p>
                    </td>
                    <td>
                        <div class="sample-product">
                            <img src="/img/product-img/dogfood3.jpg" class="product" alt="사료3">
                        </div>
                        <p class="product-name">맥시어덜트 사료 250g</p>
                        <p class="price">2000원</p>
                    </td>
                    <td>
                        <div class="sample-product">
                            <img src="/img/product-img/dogfood4.jpg" class="product" alt="사료4">
                        </div>
                        <p class="product-name">맥시어덜트 사료 250g</p>
                        <p class="price">2000원</p>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="sample-product">
                            <img src="/img/product-img/dogfood5.jpg" class="product" alt="사료5">
                        </div>
                        <p class="product-name">맥시어덜트 사료 250g</p>
                        <p class="price">2000원</p>
                    </td>
                    <td>
                        <div class="sample-product">
                            <img src="/img/product-img/dogfood6.jpg" class="product" alt="사료6">
                        </div>
                        <p class="product-name">맥시어덜트 사료 250g</p>
                        <p class="price">2000원</p>
                    </td>
                    <td>
                        <div class="sample-product">
                            <img src="/img/product-img/dogfood7.jpg" class="product" alt="사료7">
                        </div>
                        <p class="product-name">맥시어덜트 사료 250g</p>
                        <p class="price">2000원</p>
                    </td>
                    <td>
                        <div class="sample-product">
                            <img src="/img/product-img/dogfood8.jpg" class="product" alt="사료8">
                        </div>
                        <p class="product-name">맥시어덜트 사료 250g</p>
                        <p class="price">2000원</p>
                    </td>
                </tr>
            </table>
        </div>
    </div>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
    $(document).ready(function () {
        $(".type-button").click(function(){
			for(var  i = 0 ; i<$(".type-button").length;i++){
				$(".type-button")[i].classList.remove("bgcolor-yello");
			}
			$(this)[0].classList.add("bgcolor-yello");
        })
    });
</script>