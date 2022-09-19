<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <link rel="stylesheet" href="/css/Admin/admin_order.css">
<div class="content-wrap">
        <p class="admin-title">전체 주문 목록</p>
        <div class="btn-wrap">
            <div class="customer-search">
                <select name="search" id="search">
                    <option value="id">아이디</option>
                    <option value="name">이름</option>
                    <option value="email">이메일</option>
                    <option value="phone">휴대전화</option>
                </select>
                <input type="text" class="searchbar">
                <input type="button" class="searchbutton" value="검색">
            </div>
        </div>

        <table>
            <thead>
                <tr>
                    <th>주문일</th>
                    <th>주문번호</th>
                    <th>주문자</th>
                    <th>상품명</th>
                    <th>수량</th>
                    <th>결제금액</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>2022-09-06</td>
                    <td>13454678</td>
                    <td>이름</td>
                    <td>상품명</td>
                    <td>5</td>
                    <td><span>총액</span>13,123<span>원</span></td>
                </tr>                
            </tbody>
        </table>
    </div><!--content-wrap-->