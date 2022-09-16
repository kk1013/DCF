<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ page trimDirectiveWhitespaces="true" %>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <link rel="stylesheet" href="/css/Admin/admin_noticeAdmin.css">
    
    <div class="boardwrap">

        <div class="board-title">
            게시판관리
        </div>

        <div class="board-sub">
            -공지사항
        </div>
        
        <div class="board-buttondiv">
            <div>
                <input class="board-btn btn1" onclick="location.href='adminNoticeWrite'" type="button" value="글등록">
                <input class="board-btn btn2" type="button" value="글삭제">
            </div>
            <div class="searchdiv">
                <input class="searchbar" type="text">
                <input class="searchbutton" type="button" value="검색">
            </div>
        </div>

        <div>
            <table class="noticeAdmin-table">
                <tr>
                    <td class="noticeAdmin-title"></td>
                    <td class="noticeAdmin-title">No</td>
                    <td class="noticeAdmin-title">제목</td>
                    <td class="noticeAdmin-title"></td>
                    <td class="noticeAdmin-title">등록일</td>
                </tr>
                <tr>
                    <td class="noticeAdmin-td1"><input type="checkbox"></td>
                    <td class="noticeAdmin-td2">44545422</td>
                    <td class="noticeAdmin-td3"><a class="notice-view" href="">추석 연휴 브랜드별 배송일정 안내</a></td>
                    <td class="noticeAdmin-td4"><a class="notice-modify" href="">수정</a></td>
                    <td class="noticeAdmin-td5">2022-09-06</td>
                </tr>
                <tr>
                    <td class="noticeAdmin-td1"><input type="checkbox"></td>
                    <td class="noticeAdmin-td2">23454221</td>
                    <td class="noticeAdmin-td3"><a class="notice-view" href="">CJ택배 총파업으로 인한 배송 제한 지역 안내(2월23일 기준)</a></td>
                    <td class="noticeAdmin-td4"><a class="notice-modify" href="">수정</a></td>
                    <td class="noticeAdmin-td5">2022-02-23</td>
                </tr>
                <tr>
                    <td class="noticeAdmin-td1"><input type="checkbox"></td>
                    <td class="noticeAdmin-td2">44545422</td>
                    <td class="noticeAdmin-td3"><a class="notice-view" href="">배송 일정 변경 안내</a></td>
                    <td class="noticeAdmin-td4"><a class="notice-modify" href="">수정</a></td>
                    <td class="noticeAdmin-td5">2022-09-06</td>
                </tr>
                <tr>
                    <td class="noticeAdmin-td1"><input type="checkbox"></td>
                    <td class="noticeAdmin-td2">23454200</td>
                    <td class="noticeAdmin-td3"><a class="notice-view" href="">고객센터 휴무 안내</a></td>
                    <td class="noticeAdmin-td4"><a class="notice-modify" href="">수정</a></td>
                    <td class="noticeAdmin-td5">2022-02-23</td>
                </tr>
                <tr>
                    <td class="noticeAdmin-td1"><input type="checkbox"></td>
                    <td class="noticeAdmin-td2">44545422</td>
                    <td class="noticeAdmin-td3"><a class="notice-view" href="">추석 연휴 브랜드별 배송일정 안내</a></td>
                    <td class="noticeAdmin-td4"><a class="notice-modify" href="">수정</a></td>
                    <td class="noticeAdmin-td5">2022-09-06</td>
                </tr>
                <tr>
                    <td class="noticeAdmin-td1"><input type="checkbox"></td>
                    <td class="noticeAdmin-td2">23454221</td>
                    <td class="noticeAdmin-td3"><a class="notice-view" href="">CJ택배 총파업으로 인한 배송 제한 지역 안내(2월23일 기준)</a></td>
                    <td class="noticeAdmin-td4"><a class="notice-modify" href="">수정</a></td>
                    <td class="noticeAdmin-td5">2022-02-23</td>
                </tr>
                <tr>
                    <td class="noticeAdmin-td1"><input type="checkbox"></td>
                    <td class="noticeAdmin-td2">44545422</td>
                    <td class="noticeAdmin-td3"><a class="notice-view" href="">배송 일정 변경 안내</a></td>
                    <td class="noticeAdmin-td4"><a class="notice-modify" href="">수정</a></td>
                    <td class="noticeAdmin-td5">2022-09-06</td>
                </tr>
                <tr>
                    <td class="noticeAdmin-td1"><input type="checkbox"></td>
                    <td class="noticeAdmin-td2">44545422</td>
                    <td class="noticeAdmin-td3"><a class="notice-view" href="">추석 연휴 브랜드별 배송일정 안내</a></td>
                    <td class="noticeAdmin-td4"><a class="notice-modify" href="">수정</a></td>
                    <td class="noticeAdmin-td5">2022-09-06</td>
                </tr>
                <tr>
                    <td class="noticeAdmin-td1"><input type="checkbox"></td>
                    <td class="noticeAdmin-td2">23454221</td>
                    <td class="noticeAdmin-td3"><a class="notice-view" href="">CJ택배 총파업으로 인한 배송 제한 지역 안내(2월23일 기준)</a></td>
                    <td class="noticeAdmin-td4"><a class="notice-modify" href="">수정</a></td>
                    <td class="noticeAdmin-td5">2022-02-23</td>
                </tr>
                <tr>
                    <td class="noticeAdmin-td1"><input type="checkbox"></td>
                    <td class="noticeAdmin-td2">44545422</td>
                    <td class="noticeAdmin-td3"><a class="notice-view" href="">배송 일정 변경 안내</a></td>
                    <td class="noticeAdmin-td4"><a class="notice-modify" href="">수정</a></td>
                    <td class="noticeAdmin-td5">2022-09-06</td>
                </tr>
                <tr>
                    <td class="noticeAdmin-td1"><input type="checkbox"></td>
                    <td class="noticeAdmin-td2">44545422</td>
                    <td class="noticeAdmin-td3"><a class="notice-view" href="">추석 연휴 브랜드별 배송일정 안내</a></td>
                    <td class="noticeAdmin-td4"><a class="notice-modify" href="">수정</a></td>
                    <td class="noticeAdmin-td5">2022-09-06</td>
                </tr>
                <tr>
                    <td class="noticeAdmin-td1"><input type="checkbox"></td>
                    <td class="noticeAdmin-td2">23454221</td>
                    <td class="noticeAdmin-td3"><a class="notice-view" href="">CJ택배 총파업으로 인한 배송 제한 지역 안내(2월23일 기준)</a></td>
                    <td class="noticeAdmin-td4"><a class="notice-modify" href="">수정</a></td>
                    <td class="noticeAdmin-td5">2022-02-23</td>
                </tr>
                <tr>
                    <td class="noticeAdmin-td1"><input type="checkbox"></td>
                    <td class="noticeAdmin-td2">44545422</td>
                    <td class="noticeAdmin-td3"><a class="notice-view" href="">배송 일정 변경 안내</a></td>
                    <td class="noticeAdmin-td4"><a class="notice-modify" href="">수정</a></td>
                    <td class="noticeAdmin-td5">2022-09-06</td>
                </tr>
                <tr>
                    <td class="noticeAdmin-td1"><input type="checkbox"></td>
                    <td class="noticeAdmin-td2">44545422</td>
                    <td class="noticeAdmin-td3"><a class="notice-view" href="">배송 일정 변경 안내</a></td>
                    <td class="noticeAdmin-td4"><a class="notice-modify" href="">수정</a></td>
                    <td class="noticeAdmin-td5">2022-09-06</td>
                </tr>
                
            </table>
        </div>

    </div>