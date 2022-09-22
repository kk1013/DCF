<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="/css/Admin/admin_one2one_detail.css">
<div class="content-wrap">
        <p class="admin-title">1:1문의</p>
        <div id="one2one-answer-wrap">          
            <table>
                <tr class="taps" style="width:50%;">
                    <td>이름</td>
                    <td>${ dto.user_name }</td>                    
                </tr>
                <tr class="taps" style="width:50%;">
                    <td>작성일</td>
                    <td>${ dto.one2one_date }</td>                    
                </tr>
                <tr>
                    <td>제목</td>
                    <td>${ dto.one2one_title }</td>
                </tr>
                <tr>
                    <td>내용</td>
                    <td>${ dto.one2one_content }</td>
                </tr>
                <tr>
                    <td>사진</td>
                    <td>
                        <div class="one2one-answer-img">
                            <img src="/img/ono2onoanswerimg.jpg" alt="">
                        </div>
                    </td>
                </tr>               
            </table>

            <div id="answerform-wrap">
                <form action="admin_one2one_detail_form">
                    <div>
                        <p>내용</p>
                        <p>
                        	<input type="hidden" name="one2one_idx" value="${ dto.one2one_idx }">
                            <textarea name="one2one_reply" id="">${ dto.one2one_reply }</textarea>
                        </p>
                    </div>
                <input type="submit" value="답변하기">
                </form>
            </div><!--answerform-wrap 답변부분 랩-->
        </div><!--one2one-answer-wrap-->
    </div>