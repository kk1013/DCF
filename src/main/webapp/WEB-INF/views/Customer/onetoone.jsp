<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ page trimDirectiveWhitespaces="true" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
<link rel="stylesheet" href="/css/Customer/onetoone.css">

<div id="page-nav-wrap">
        <div id="page-nav">
            HOME > 1:1문의하기
        </div>
    </div>

    <form action="#">
    <div class="onetoonewrap">

        <div class="onetoone-top">
            <span>1:1문의</span>
        </div>
        
        <div class="onetoonediv">
            <div class="onetoone-head">
                <span>
                    이용중에 생긴 불편한점이나 문의내용을 남겨주세요.<br>
                    가능한 빨리 시간내에 답변드리겠습니다.
                </span>
            </div>

            <div class="onetoone-title">
                <span class="onetoone-title-span">제목</span>
                <input type="text" class="title">
            </div>

            <div class="onetoone-content">
                <span class="onetoone-content-span">문의내용</span>
                <textarea name="" class="content" ></textarea>
            </div>

            <div class="onetoone-confirm">
                <label for="imgupload" class="imgupload"><img src="/img/icons/camelaicon.jpg" class="uploadimg">사진첨부</label>
                <input type="file" name="filename" id="imgupload" class="imgupload">
                <input class="uploadname" value="첨부파일" placeholder="첨부파일" readonly="readonly">
            </div>
    
            <div class="onetoone-provision">
                <span>
                    본 양식을 통해 제출하신 개인 정보는 문의 주신 내용에 대한 답변을 드리기 위한 목적으로만 사용되며, 마케팅 목적으로 활용되지 않습니다.
                </span>
                <span class="provision2">
                    * 16세 이상에 한해 양식 제출이 가능합니다.
                </span>
            </div>
            
            <div class="onetoone-button">
                <button class="onetoone-cancel">취소</button>
                <input type="submit" class="onetoone-submit" value="등록하기">
            </div>

        </div>

        
    </div>
</form>
    
<script type="text/javascript">

    var uploadFile = $('.onetoone-confirm .imgupload');
    uploadFile.on('change', function(){
    	if(window.FileReader){
    		var filename = $(this)[0].files[0].name;
    	} else {
    		var filename = $(this).val().split('/').pop().split('\\').pop();
    	}
    	$(this).siblings('.uploadname').val(filename);
    });

</script>