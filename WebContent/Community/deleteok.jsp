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
function articleList() {
	document.getElementById("act").value = "listarticle";
	document.getElementById("pg").value = "1";
	document.getElementById("key").value = "";
	document.getElementById("word").value = "";
	
	document.commonform.action = "${root}/community";
	document.commonform.submit();
}
</script>

<div class="container">
	<div class="jumbotron">
		<h3 class="text-center">글 삭제에 성공하였습니다!</h3>
		<p class="text-center"><a class="btn btn-primary btn-lg" href="javascript:articleList();">&nbsp;&nbsp;글 목록 돌아가기&nbsp;&nbsp;</a></p>
	</div>
</div>
<!---------------------------------------------------------------------------------------------------------------------------------------------> 
    </section><!--/#services-->    
    <%@ include file="/frame/mpfooter.jsp"%>