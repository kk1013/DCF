<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="/css/Admin/admin_user_detail.css">
<div class="content-wrap">
        <p class="admin-title">회원정보 조회</p>
        <div id="user-infowrap">
            <p>이지현 &#40;아이디영문작성칸&#41;님</p>
            <form action="test">
            <table>
                <tr>
                    <td>아이디</td>
                    <td><input type="text" name="id" value="ferekjgfdk1" maxlength="20" ></td>
                </tr>
                <tr>
                    <td>이메일</td>
                    <td><input type="text" name="email" value="test@naver.com" maxlength="50"></td>
                </tr>
                <tr>
                    <td>이름</td>
                    <td><input type="text" name="name" value="이지현" maxlength="10"></td>
                </tr>
                <tr>
                    <td>가입일자</td>
                    <td><input type="text" name="" value="sysdate" readonly></td>
                </tr>
                <tr>
                    <td>폰</td>
                    <td><input type="text" name="phone" value="010-1234-0516"></td>
                </tr>
                <tr>
                    <td>주소</td>
                    <td><input type="text" name="address" value="경기도 의정부시 의정부2동 신흥로258번길 25" maxlength="50"></td>
                </tr>
                <tr>
                    <td>생일</td>
                    <td><input type="text" name="birth" value="2022-01-01"></td>
                </tr>
                <tr>
                    <td>성별</td>
                    <td><input type="text" name="gender" value="여" maxlength="1">
                </tr>
            </table>
            <div>
                <input type="submit" value="정보변경">
                <input type="submit" value="회원삭제">
            </div>
        </form>
        </div><!--user-infowrap-->
    </div><!--content-wrap-->