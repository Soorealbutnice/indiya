<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/frame/mpheader.jsp"%>
<body> 
<section id="services" class="service-item">
	<div class="hoc container clear">
		<div class="content">
			<div class="sidebar one_quarter first">
				<%@include file="musician_admin_submenu.jsp"%>
			</div>
			<div class="three_quarter">
				<h2>공연 동영상 리스트</h2><hr/>
				<div>
  					<table class="table">
						<thead style="background-color: #afafaf;">
							<tr>
								<td><input type="checkbox" ></td>
								<td>공연제목</td>
								<td>공연장소</td>
								<td>공연날짜</td>
								<td>&nbsp;</td>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="movie" items="${movieList}">
								<tr>
									<td><input type="checkbox" value="${movie.no }"></td>
									<td><a href="javascript:alert('해야된다');">${movie.show_title}</a></td>
									<td>${movie.show_place}</td>
									<td>${movie.show_date}</td>
									<td>	
										<button type="button" onclick="javascript:alert('해야된다');" class="btn btn-default btn-sm">수정</button>
										<button type="button" onclick="javascript:alert('해야된다');" class="btn btn-default btn-sm">삭제</button>
									</td>
								</tr>
							</c:forEach>						
						</tbody>
  					</table>	
				</div>  				
				<div style="float:right">
					<button type="button" 
							class="btn btn-default" 
							onclick="javascript:document.location.href='/musician?act=mvMusicianMovieRegister'">
						공연 동영상 등록
					</button>
				</div>				
			</div>
		</div>
	</div>
</section>
<%@ include file="/frame/mpfooter.jsp"%>