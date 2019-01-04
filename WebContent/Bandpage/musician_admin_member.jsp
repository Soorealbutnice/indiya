<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@include file="/frame/mpheader.jsp"%>
<body> 
<section id="services" class="service-item">
	<div class="hoc container clear">
		<div class="content">
			<div class="sidebar one_quarter first">
				<%@include file="musician_admin_submenu.jsp"%>
			</div>
			<div class="three_quarter">
  					<h2>멤버 리스트</h2><hr/>
  					<table class="table">
						<thead style="background-color: #afafaf;">
							<tr>
								<td>포지션</td>
								<td>이름(아이디)</td>
								<td>가입일</td>
								<td>&nbsp;</td>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="member" items="${musicianMemberList}">
								<tr>
									<td>${member.position}</td>
									<td>${member.member_id}</td>
									<td>${member.write_date}</td>
									<td><button type="button" onclick="javascript:alert('해야된다');" class="btn btn-default btn-sm">맴버삭제</button></td>
								</tr>
							</c:forEach>						
						</tbody>
  					</table>
  					
  					<h2>멤버 신청 리스트</h2><hr/>  
  					<table class="table">
						<thead style="background-color: #afafaf;">
							<tr>
								<td width="410">멤버 모집 제목</td>
								<td width="60">작성일</td>
								<td width="60">신청수</td>
								<td>&nbsp;</td>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="jam" items="${jamList}">
							<tr>
								<td><a href="javascript:alert('해야된다');">${jam.subject}</a></td>
								<td>${jam.write_date}</td>
								<td>${fn:length(jam.jamApplyList)}명</td>
								<td align="right">
									<button type="button" 
											onclick="javascript:document.location.href='/jam?act=jamUpdateState&no=${jam.no}&chk=admin&id=${userInfo.id}';"
											class="btn btn-default btn-sm">
										모집완료
									</button>
									<button type="button" class="btn btn-default btn-sm" onclick="javascript:alert('해야된다');">삭제</button>
								</td>								

							</tr>
							<tr>
								<td colspan="4" style="margin-right: 30px;">
									
									<table style="border: none;">

										<c:forEach var="jamApply" items="${jam.jamApplyList}">
										<tr style="border: none;">
											<td style="border: none;">
												${jamApply.apply_id }
											</td>
											<td style="border: none;">
												${jamApply.position }
											</td>
											<td width="300px;" style="border: none;">
												${jamApply.contents }
											</td>											
											<td align="right" style="border: none;">
												<button type="button" class="btn btn-default btn-sm" 
													onclick="javascript:document.location.href='/musician?act=memberApplySign&sign=OK&no=${jamApply.no }&jamId=${jam.jam_id}&jamApplyId=${jamApply.apply_id}&position=${jamApply.position}'">승인</button>
												<button type="button" onclick="javascript:alert('해야된다');" class="btn btn-default btn-sm">거절</button>
											</td>											
										</tr>
										</c:forEach>

									</table>
								</td>
							</tr>
							</c:forEach>	
						</tbody>
  					</table>
			</div>
		</div>
	</div>
</section>
<%@ include file="/frame/mpfooter.jsp"%>