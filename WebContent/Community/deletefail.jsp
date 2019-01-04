<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

	<%@ include file="/frame/mpheader.jsp"%>
	<section id="services" class="service-item">
<!---------------------------------------------------------------------------------------------------------------------------------------------------------->
<style type="text/css">
.jumbotron {
	text-shdow : black 0.2em 0.2em 0.2em;
	color : black;
}
</style>

<script>
function goBack() {
    window.history.back();
}

</script>
<body>
<div class="container">
	<div class="jumbotron">
		<h3 class="text-center">글 삭제에 실패하였습니다.</h3>
		<p class="text-center"><a class="btn btn-primary btn-lg" href="${root}/community/list.jsp?act=listarticle&pg=1&key=&word=">&nbsp;&nbsp;글 목록 보기&nbsp;&nbsp;</a></p>
		<p class="text-center"><a class="btn btn-primary btn-lg" href="javascript:goBack();">&nbsp;&nbsp;내 글로 돌아가기&nbsp;&nbsp;</a></p>
	</div>
</div>
<!---------------------------------------------------------------------------------------------------------------------------------------------> 
    </section><!--/#services-->    
    <%@ include file="/frame/mpfooter.jsp"%>