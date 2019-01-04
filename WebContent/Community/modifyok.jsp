<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/frame/mpheader.jsp"%>
<%@ include file="/frame/board_common.jsp"%>
<%@ include file="/frame/confirm.jsp"%>
<section id="services" class="service-item">
<!---------------------------------------------------------------------------------------------------------------------------------------------------------->
<style type="text/css">
.jumbotron {
	text-shdow : black 0.2em 0.2em 0.2em;
	color : black;
}
</style>

<script type="text/javascript">
function viewArticle(no) {
	document.getElementById("act").value = "viewarticle";
	document.getElementById("pg").value = "${param.pg}";
	document.getElementById("key").value = "${param.key}";
	document.getElementById("word").value = "${param.word}";
	document.getElementById("no").value = no;
	
	document.commonform.action = "${root}/community";
	document.commonform.submit();
}
</script>

<div class="container">
	<div class="jumbotron">
		<h3 class="text-center">글 수정에 성공하였습니다!</h3>
		<p class="text-center"><a class="btn btn-primary btn-lg" href="javascript:viewArticle(${param.no});">수정한 글 확인</a></p>
		<p class="text-center"><a class="btn btn-primary btn-lg" href="${root}/community?act=listarticle&page=${param.pg}&key=${param.key}&word=">&nbsp;&nbsp;글 목록 보기&nbsp;&nbsp;</a></p>
	</div>
</div>
<!---------------------------------------------------------------------------------------------------------------------------------------------> 
    </section><!--/#services-->    
    <%@ include file="/frame/mpfooter.jsp"%>