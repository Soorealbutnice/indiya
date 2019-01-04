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
				<h2>공연 영상 등록</h2><hr/>
				<form id="writeForm" name="writeForm" action="/musicianShowMovie" enctype="multipart/form-data" method="post" action="">
				<input type="hidden" id="id" name="id" value="${userInfo.id}" />
				<div class="form-group row">
					<label class="col-lg-2 col-form-label" style="text-align: right;">공연 제목</label>
					<div class="col-lg-10">
					<input type="text" id="show_title" name="show_title" class="form-control" placeholder="" required/>
					</div>
				</div>				
				<div class="form-group row">
					<label class="col-lg-2 col-form-label" style="text-align: right;">공연 날짜</label>
					<div class="col-lg-4">
					<input type="date" id="show_date" name="show_date" class="form-control" required/>
					</div>
				</div>
				<div class="form-group row">
					<label class="col-lg-2 col-form-label" style="text-align: right;">공연 장소</label>
					<div class="col-lg-10">
					<input type="text" id="show_place" name="show_place" class="form-control" placeholder="" required/>
					</div>
				</div>	
				<div class="form-group row">
					<label class="col-lg-2 col-form-label" style="text-align: right;">동영상 파일</label>
					<div class="col-lg-10">
						<input type="file" id="file" name="file">
					</div>
				</div>	
				<div class="form-group row">
					<label class="col-lg-2 col-form-label" style="text-align: right;" >동영상 URL</label>
					<div class="col-lg-10">
					<input type="text" id="show_movie_url" name="show_movie_url" class="form-control" placeholder="" required />
					</div>
				</div>				
				<div class="form-group row">
					<label class="col-lg-2 col-form-label" style="text-align: right;">동영상 설명</label>
					<div class="col-lg-10">
					<textarea class="form-control" id="show_info" name="show_info" rows="15" id="contents" name="contents" required placeholder=""></textarea>
					<p>&nbsp;<p/>
					<button type="submit" class="btn btn-default pull-left">등록하기</button>
					</div>
				</div>										
				</form>

			</div>
		</div>
	</div>
</section>
<%@ include file="/frame/mpfooter.jsp"%>