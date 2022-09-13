<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="/css/product/product.css">
<div id="product-wrap">
    <div id="page-nav-wrap">
        <div id="page-nav">
            <p>HOME > 전체상품</p>
        </div> 
    </div>
    <div id="product-top">
        <img src="/img/product-img/dogfeedmainimg.jpg" alt="전체상품 배너">
    </div>
    <div id="product-main">
        <div id="product-aside">
            <div id="type-button">
                <div class="type-button">
                    <img src="/img/icons/productlist_dog.png" style="margin-top: 5.5px;" class="button" alt="0">
                    <img src="/img/icons/productlist_dog_over.png" style="margin-top: 5.5px;" class="button" alt="1">
                    <p>반려견</p>
                </div>
                <div class="type-button">
                    <img src="/img/icons/productlist_cat.png" style="margin-top: 6.5px;" class="button" alt="2">
                    <img src="/img/icons/productlist_cat_over.png" style="margin-top: 5.5px;" class="button" alt="3">
                    <p>반려묘</p>
                </div>
            </div>
            <p class="age-wrap">
                <span class="age">age</span>
                <span class="age" id="output_age">0년</span>
                <input type="range" id="agebar" min="1" max="100" value="50" oninput="document.getElementById('output_age').innerHTML=this.value+'년'">
            </p>
            <div id="feed-type">
                <p>type</p>
                <label for="test"><input type="checkbox" name="type" value="0" >건식</label>
                <label for="test"><input type="checkbox" name="type" value="1">습식</label>
            </div>
            <div id="pet-size">
                <p id="pet-size-title">Size</p>
                <table id="size-table">
                    <tr>
                        <td>
                            <input type="checkbox" name="size" value="0">
                        </td>
                        <td>
                            <p>초소형</p>
                        </td>
                        <td style="text-align: right;">
                            <p>4Kg미만</p>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="checkbox" name="size" value="1">
                        </td>
                        <td>
                            <p>소형</p>
                        </td>
                        <td style="text-align: right;">
                            <p>4Kg ~ 10Kg미만</p>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="checkbox" name="size" value="2">
                        </td>
                        <td>
                            <p>중형</p>
                        </td>
                        <td style="text-align: right;">
                            <p>11Kg ~ 25Kg미만</p>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="checkbox" name="size" value="3">
                        </td>
                        <td>
                            <p>대형</p>
                        </td>
                        <td style="text-align: right;">
                            <p>26Kg ~ 44Kg미만</p>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="checkbox" name="size" value="4">
                        </td>
                        <td>
                            <p>초대형</p>
                        </td>
                        <td style="text-align: right;">
                            <p>45Kg이상</p>
                        </td>
                    </tr>
                </table>
                <div id="filter-search">
                    <input type="submit" id="search-button" value="검색하기">
                </div>
            </div>
        </div>
        <div id="product-session">
            <div id="product-session-menu">
                <input type="button" class="type-feed-btn bgcolor-yello" id="left-button" value="모든상품">
                <input type="button" class="type-feed-btn" id="center-button" value="간식">
                <input type="button" class="type-feed-btn" id="right-button" value="사료">
            </div>
            <div id="productpage-product">
                <div id="product-product">
                    <table>
                        <tr>
                            <td>
                                <div class="product">
                                    <img src="/img/product-img/dogfood1.jpg" alt="사료1">
                                </div>
                                <p class="product-name">맥시어덜트 사료 250g</p>
                                <p class="price">2000원</p>
                            </td>
                            <td>
                                <div class="product">
                                    <img src="/img/product-img/dogfood2.jpg" class="product" alt="사료2">
                                </div>
                                <p class="product-name">맥시어덜트 사료 250g</p>
                                <p class="price">2000원</p>
                            </td>
                            <td>
                                <div class="product">
                                    <img src="/img/product-img/dogfood3.jpg" class="product" alt="사료3">
                                </div>
                                <p class="product-name">맥시어덜트 사료 250g</p>
                                <p class="price">2000원</p>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="product">
                                    <img src="/img/product-img/dogfood5.jpg" class="product" alt="사료5">
                                </div>
                                <p class="product-name">맥시어덜트 사료 250g</p>
                                <p class="price">2000원</p>
                            </td>
                            <td>
                                <div class="product">
                                    <img src="/img/product-img/dogfood6.jpg" class="product" alt="사료6">
                                </div>
                                <p class="product-name">맥시어덜트 사료 250g</p>
                                <p class="price">2000원</p>
                            </td>
                            <td>
                                <div class="product">
                                    <img src="/img/product-img/dogfood7.jpg" class="product" alt="사료7">
                                </div>
                                <p class="product-name">맥시어덜트 사료 250g</p>
                                <p class="price">2000원</p>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$(".button").click(function() {
            var type_button = $(this).attr("alt");
            var all_button = document.getElementsByClassName("button");
            var button = document.getElementsByClassName("button")[type_button];
            if(button.classList.contains("display_none") == false){
                for( var i = 0 ; i<all_button.length;i++){
                    all_button[i].classList.remove("display_none");
                }
                button.classList.add("display_none");
            }else{
                button.classList.remove("display_none");
            }
		});
    });
</script>