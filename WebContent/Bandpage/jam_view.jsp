<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%String root = request.getContextPath();%> 
<%@ include file="/frame/mpheader.jsp"%>
<%@ include file="/frame/board_common.jsp"%>
<style>
th, td {
	text-align : center;
}
</style>
<!------------------------------------------------------------------------------------------------------------------------------------------------------------>
<body>
<section id="services" class="service-item">
<div class="wrapper row3">
	<div class="hoc container clear"> <!-- main body -->
		<div class="content">
			<h2>JAM</h2>
				<div class="row">
<!--------------------------------------------------------------게시판  글보기 ------------------------------------------------------------------------------------->
					<div id="title">
					<h4> ${jam.subject}</h4>
					</div>
					<hr>
					<div class="row">
						<div style="float:left;padding-left: 20px;">
							by <b>${jam.jam_id}</b>
						</div>
						<div style="float:right;padding-right: 20px;">
						${jam.write_date}
						</div>
					</div>
					<hr style="border-top: 2px solid #bbb; border-bottom: 1px solid #fff;">
					<div>
						<p>
						${jam.contents}
						</p>
					</div>
					<hr style="border-top: 2px solid #bbb; border-bottom: 1px solid #fff;">
					<div style="float:left">
						<button type="button" class="btn btn-default" onclick="javascript:document.location.href='/jam?act=mvJamList';">
							글 목록
						</button>
					</div>
					<c:if test="${jam.jam_id eq userInfo.id}">
					<div style="float:right">
						<button type="button" class="btn btn-default" onclick="javascript:alert('해야된다');">글 수정</button>
						<button type="button" class="btn btn-outline-secondary" onclick="javascript:alert('해야된다');">글 삭제</button>
						<button type="button" class="btn btn-outline-secondary" onclick="javascript:document.location.href='/jam?act=jamUpdateState&no=${jam.no}';">모집 완료</button>
					</div>
					</c:if>
					<c:if test="${jam.jam_id != userInfo.id}">
					<div style="float:right">
						<button type="button" class="btn btn-default" onclick="javascript:document.location.href='/jam?act=mvJamApply&no=${jam.no}'">멤버 신청</button>
					</div>
					</c:if>					
					<br> <br>
					<hr>
			</div>
		</div>
	</div>
</div>
<!---------------------------------------------------------------------------------------------------------------------------------------------> 
   </section><!--/#services-->    
   <%@ include file="/frame/mpfooter.jsp"%>
