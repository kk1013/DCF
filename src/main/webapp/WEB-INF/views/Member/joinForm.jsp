<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ page trimDirectiveWhitespaces="true" %>
<link rel="stylesheet" href="/css/Member/joinForm.css">

<div id="page-nav-wrap">
     <div id="page-nav">
         HOME > 회원가입
     </div>
</div>

<div class="join-step">
     <span class="step-font">STEP1.약관동의</span>
     <img src="/img/icons/arrow.png" class="step-font" width="7px" height="18px">
     <span id="step-font" class="step-font">STEP2.회원정보 입력</span>
     <img src="/img/icons/arrow.png" class="step-font" width="7px" height="18px">
     <span class="step-font">STEP3.가입완료</span>
</div>

<div id="joinwrap">
            <div id="joinform-top">
                <span>회원기본정보</span>
            </div>
    
            <div>
                <form action="joinAction" method="get">
                <table class="joinform-table">
                    <tr class="joinform-tr">
                        <td class="joinform-subtitle">
                            이름
                        </td>
                        <td>
                            <input class="joinform-input" type="text" placeholder="이름 입력">
                        </td>
                    </tr>
                    <tr class="joinform-tr">
                        <td class="joinform-subtitle">
                            아이디
                        </td>
                        <td>
                            <input class="joinform-input2" type="text" placeholder="5~6자, 영문, 숫자 또는 영문+숫자 조합"> <button class="checkbutton">중복확인</button>
                        </td>
                    </tr>
                    <tr class="joinform-tr">
                        <td class="joinform-subtitle">
                            비밀번호
                        </td>
                        <td>
                            <input class="joinform-input" type="password" placeholder="비밀번호 입력"><br>
                            
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td style="font-size: 13.5px; color:#d7d7d7">
                            * 6~16자 이내, 영문 대/소문자, 특수문자 중 2가지 조합으로 사용해주세요.<br>
                            가능 특수문자 : ! @ # $ % ^ ? _ ~<br>
                            * 아이디와 동일한 비밀번호는 사용할 수 없습니다.
                        </td>
                    </tr>
                    <tr class="joinform-tr">
                        <td class="joinform-subtitle">
                            비밀번호 확인
                        </td>
                        <td>
                            <input class="joinform-input" type="password" placeholder="비밀번호 재입력">
                        </td>
                    </tr>
                    <tr class="joinform-tr">
                        <td class="joinform-subtitle">
                            이메일
                        </td>
                        <td>
                            <input class="joinform-input" type="email" placeholder="이메일 입력"><br>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td class="joinform-check">
                            <input type="checkbox" id="yellowCheckbox1" class="checkinput">
                            <label for="yellowCheckbox1" class="yellowCheckbox"></label> <span class="joinform-span">정보/이벤트 SMS 수신에 동의합니다.</span>
                        </td>
                    </tr>
                    <tr class="joinform-tr">
                        <td class="joinform-subtitle">
                            휴대폰 번호
                        </td>
                        <td>
                            <input class="joinform-input" type="phone" placeholder="숫자만 입력(11자리)">
                        </td>
                    </tr>
                </table>
                <table id="joinform-table">
                    <tr class="joinform-tr">
                        <td class="joinform-subtitle">
                            생년월일
                        </td>
                        <td>
                            <input class="joinform-input" type="text" placeholder="숫자만 입력(8자리) 예)19910411">
                        </td>
                    </tr>
                    <tr class="joinform-tr">
                        <td class="joinform-subtitle">
                            성별
                        </td>
                        <td class="joinform-check2">
                            <input type="radio" name="checkBox2" id="yellowCheckbox2" class="checkinput">
                            <label for="yellowCheckbox2" class="yellowCheckbox"></label> <span class="joinform-span">여자</span>
                            <input type="radio" name="checkBox2" id="yellowCheckbox3" class="checkinput">
                            <label for="yellowCheckbox3" class="yellowCheckbox"></label> <span class="joinform-span">남자</span>
                        </td>
                    </tr>
                    <tr class="joinform-tr">
                        <td class="joinform-subtitle">
                            주소
                        </td>
                        <td>
                            <input class="joinform-input" type="text">
                        </td>
                    </tr>
                </table>
    
                <div class="joinform-buttonwrap">
                    <button class="joinform-button joinform-cancel">취소</button>
                    <button class="joinform-button joinform-confirm">회원가입</button>
                </div>
                
                </form>
            </div>
        </div>