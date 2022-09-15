<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <link rel="stylesheet" href="/css/Order/Orderpayments.css">
<div id="page-nav-wrap">
    <div id="page-nav">
        <p>HOME > 주문결제</p>
    </div> 
</div>
<div class="orderpay-wrap">
    <div class="order-box">
        <p class="title">주문자 정보</p>
        <div class="line-box">
            <table class="infotable">
                <tr class="border-bottom">
                    <td class="tr-1td-1"><p>이름</p></td>
                    <td class="tr-1td-2"><p>아이디</p></td>
                    <td class="tr-1td-3"><p>휴대전화</p></td>
                </tr>
                <tr>
                    <td class="tr-2td-1">서승현</td>
                    <td class="tr-2td-2">tmdgusdl1212</td>
                    <td class="tr-2td-3">010-3241-0156</td>
                </tr>
            </table>
        </div>
    </div>
    <div class="order-box">
        <p class="title">배송지 정보</p>
        <div class="line-box">
            <table class="infotable">
                <tr>
                    <td class="td-title"><p class="bold">이름</p></td>
                    <td class="td-input"><input type="text" class="inputs margin-top-15px" style="width: 60%;" placeholder="이름을 입력해주세요"></td>
                </tr>
                <tr>
                    <td class="td-title"><p class="bold">휴대폰 번호</p></td>
                    <td class="td-input"><input type="text" class="inputs" style="width: 60%;" placeholder="숫자만 입력(11자리)"></td>
                </tr>
                <tr>
                    <td class="td-title"><p class="bold">주소</p></td>
                    <td class="td-input"><input type="text" class="inputs margin-bottom-15px" placeholder="주소를 입력해주세요"></td>
                </tr>
            </table>
        </div>
    </div>
    <div class="order-box">
        <p class="title">주문상품정보</p>
        <div class="line-box">
            <table class="infotable">
                <tr>
                    <td class="tr-1td-1" style="width: 70%; text-align: center;">상품명</td>
                    <td class="tr-1td-2" style="width: 10%;">수량</td>
                    <td class="tr-1td-3" style="width: 20%;">상품금액</td>
                </tr>
                <tr>
                    <td>
                        <div class="product">
                            <div class="product-image">
                                <img src="/img/product-img/dogfood2.jpg" id="product-img">
                            </div>
                            <p class="product-name">로얄캐닌 인도어 4kg</p>
                        </div>
                    </td>
                    <td>1</td>
                    <td>45,300원</td>
                </tr>
            </table>
        </div>
        <div class="bottom-button">
            <input type="button" class="btn" value="주문결제">
            <input type="button" class="btn" value="취소">
        </div>
    </div>
</div>