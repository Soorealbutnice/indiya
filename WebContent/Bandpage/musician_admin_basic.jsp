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
			 		<div style="width:66%; height:100px; float:left;">
					    <h1>${musician.musician_name}</h1> 
					</div>
					<div id="intro" class="nospace clear" align="left" style="display:inline;">  
					       
						    <div id="profile" class="two_third first" style="margin-bottom: 60px;" style="opacity:1;">
						    	<img src="/music/${musician.pic}" style="width:400px; height:250px">
						    </div>
						    
							<div class="one_third" style="margin-bottom:60px; align:center;">
								<h3>장르</h3>
								<p style="padding-left:30px;">${musician.genre}</p>
								<hr/>
								<h3>지역</h3>
								<p style="padding-left:30px;">${musician.area}</p>
							</div>
					</div>
					<hr>
					
					<div id="musician info" class="content"> 
					      <h3>MUSICIAN INFO</h3>
						  <span>${musician.musician_info}</span> 
					</div>
					<hr>
					<div style="float:left">
						<button type="button" class="btn btn-default" onclick="javascript:alert('병호야 만들어라');">
							기본 정보 수정
						</button>
					</div>
			</div>
		</div>
	</div>
</section>
<%@ include file="/frame/mpfooter.jsp"%>