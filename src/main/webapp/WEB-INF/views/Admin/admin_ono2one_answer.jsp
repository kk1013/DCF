<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="/css/Admin/admin_ono2one_answer.css">
<div class="content-wrap">
        <p class="admin-title">1:1문의</p>
        <div id="one2one-answer-wrap">          
            <table>
                <tr class="taps" style="width:50%;">
                    <td>이름</td>
                    <td>이름이름</td>                    
                </tr>
                <tr class="taps" style="width:50%;">
                    <td>작성일</td>
                    <td>2022-01-01</td>                    
                </tr>
                <tr>
                    <td>제목</td>
                    <td>제목이름</td>
                </tr>
                <tr>
                    <td>내용</td>
                    <td>1:!문의 내용박스 
                        Lorem ipsum dolor sit, amet consectetur adipisicing elit. Doloribus corporis pariatur dolorem dolor labore tempore illum voluptatem sint est quae sapiente ratione laudantium provident, sunt ad omnis animi, ipsa repellendus.
                    </td>
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
                <form>
                    <div>
                        <p>제목</p>
                        <p><input type="text" id="title" name="one2one-title" id="answerform_title"></p>
                    </div>
                    <div>
                        <p>내용</p>
                        <p>
                            <textarea name="one2one-text" id="" >
                            
                            </textarea>
                        </p>
                    </div>
                <input type="submit" value="답변하기">
                </form>
            </div><!--answerform-wrap 답변부분 랩-->
        </div><!--one2one-answer-wrap-->
    </div>