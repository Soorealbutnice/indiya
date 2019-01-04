<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/frame/mpheader.jsp"%>
<%@ include file="/frame/board_common.jsp"%>
<%@ include file="/frame/confirm.jsp"%>
<script>
function modifyArticle(){
	if(document.modifyForm.title.value == ""){
		alert("제목을 입력하세요");
		return;
	}else if(document.modifyForm.contents.value == ""){
		alert("내용을 입력하세요");
		return;
	}else{
		document.modifyForm.action = "${root}/community";
		document.modifyForm.submit();
	}
}

function goBack(){
	window.history.back();
}
</script>


<section id="services" class="service-item">
<body>
<!--------------------------------------------------------------------------------------------------------------------------------------------->	
<div class="wrapper row3">
	<main class="hoc container clear"> <!-- main body -->
		<div class="content">
			<h2><b><font color="black">Community</font></b></h2>
<!--------------------------------------------------------------글쓰기 ---------------------------------------------------------------------------->
			<div class="row">
			<hr style="border-top: 2px solid #bbb; border-bottom: 1px solid #fff;">
			<form id="modifyForm" name="modifyForm" method="post" action="">
			<input type="hidden" name="act" value="modifyarticle">
			<input type="hidden" name="pg" value="${param.pg}">
			<input type="hidden" name="key" value="${param.key}">
			<input type="hidden" name="word" value="${param.word}">
			<input type="hidden" name="no" value="${article.no}">
			
				<div id="container">
					<div id="title">
						<input type="text" class="form-control" id="title" name="title" value="${article.title}">
					</div>
					<hr>
					<div>
					 <%--  <textarea class="form-control" rows="7" id="contents" name="contents">${article.contents}</textarea> --%>
					  <textarea class="form-control" name="summernote" id="summernote" rows="50" cols="100" >${article.contents}</textarea>
					</div>
					<hr>
					<div>
						<button type="button" class="btn btn-default pull-right" onclick="javascript:modifyArticle();">수정하기</button>
						<button type="button" class="btn btn-outline-secondary" onclick="javascript:goBack();">뒤로가기</button>
					</div>
				</div>
			</form>
			</div>
		</div>
	</main>
</div>
<!---------------------------------------------------------------------------------------------------------------------------------------------> 

</section><!--/#services-->    
 <%@include file="/frame/mpfooter.jsp"%>    
 
 
 <!-- JAVASCRIPTS -->
<script src="/project/layout/scripts/jquery.min.js"></script>
<link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote-lite.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote-lite.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.10/lang/summernote-ko-KR.js"></script>
    <script>
      $('#summernote').summernote({
        height: 500,
        lang : 'ko-KR'
      });
    </script>