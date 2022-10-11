<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="/css/Member/login.css">
<link rel="stylesheet" href="/css/checkbox.css">
<div id="page-nav-wrap">
    <div id="page-nav">
        <p>HOME > 로그인</p>
    </div> 
</div>
<div id="login-wrap">
    <h1 id="login-title"><img src="/img/icons/login_logo.png" alt="로그인로고"></h1>
    
	    <div id="login-session-1">
	        <input type="text" class="input-radius" placeholder="아이디를 입력하세요.">
	        <input type="text" class="input-radius" placeholder="비밀번호를 입력하세요.">
	        <input type="checkbox" name="checkbox" id="yellowCheckbox">
	        <label for="yellowCheckbox" class="yellowCheckbox"></label><span class="bold">아이디 저장</span>
	        <a href="loginAction"><input type="submit" value="확인" id="bt1"></a>
	    </div>
  
    <div id="login-bottom">
        <ul>
            <li>
                <a href="idfind">아이디찾기</a>
            </li>
            <li>
                <a href="pwfind">비밀번호찾기</a>
            </li>
            <li>
                <a href="join">회원가입</a>
            </li>
        </ul>
    </div>
</div>
