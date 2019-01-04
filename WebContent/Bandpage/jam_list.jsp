<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/frame/mpheader.jsp"%>
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
			<h5>* 멤버 모집은 뮤지션만 가능합니다. 뮤지션 전환 후에 모집글 쓰세요</h5>
				<div class="row">
					<hr style="border-top: 2px solid #bbb; border-bottom: 1px solid #fff;">
<!---------------------------------------------------게시판 본문 --------------------------------------------------------->
<!---------------------------------------------------게시판 목록 --------------------------------------------------------->
					<div align="right">
						<c:if test="${userInfo.musician_flag == 'Y' }">
							<button type="button" class="btn btn-default" onclick="javascript:document.location.href='/jam?act=mvJamRegister';">글쓰기</button>
						</c:if>
					</div>
					<br>
					<div>
						<table class="table table-hover">
							<thead>
								<tr>
								<td width="100">뮤지션명</td>
								<td width="500">멤버 모집 제목</td>
								<td width="50">조횟수</td>
								<td width="150">등록일</td>
								</tr>
							</thead>
							<tbody>
							<c:forEach var="jam" items="${jamList}">
								<tr>
									<td style="word-break: break-all;">${jam.jam_id}</td>
									<td style="text-align:left">
										<a href="javascript:document.location.href='/jam?act=mvJamView&no=${jam.no }'">
											${jam.subject}
										</a>
									</td>
									<td>${jam.visited}</td>
									<td>${jam.write_date}</td>
								</tr>
							</c:forEach>
							</tbody>
						</table>
					</div>
<!---------------------------------------------------게시판 목록 --------------------------------------------------------->
			</div>
		</div>
	</div>
</div>
<!---------------------------------------------------------------------------------------------------------------------------------------------> 
</section><!--/#services-->    
<%@ include file="/frame/mpfooter.jsp"%>