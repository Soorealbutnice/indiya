<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@include file="/frame/mpheader.jsp"%>
	<section id="services" class="service-item">

		<!-- - 여기서 작업 -->
		<main class="hoc container clear"> <!-- main body --> <!-- ################################################################################################ -->
		<div class="sidebar one_quarter first">
			<!-- ################################################################################################ -->
			<h6>Lorem ipsum dolor</h6>
			<nav class="sdb_holder">
				<!-- 왼쪽 메뉴 -->
				<div class="card" style="width: 200px">
					<img src="images/demo/avatar.png" alt="Card image"
						class="img-circle" height="10">

					<p>당신은 '관객' 등급입니다!</p>
					<div class="card-body">
						<h4 class="card-title">John Doe</h4>
						<p class="card-text">Some example text some example text. John
							Doe is an architect and engineer</p>
						<address>
							Email: <a href="#">contact@domain.com</a>
						</address>
					</div>
				</div>
				<ul>
					<li><a href="member.html">정보수정</a></li>
					<li><a href="coin.html">일정관리</a></li>
					<li><a href="coin.html">찜목록</a></li>
					<li><a href="funding.html">결제내역확인</a></li>
					<li><a href="survey.html">펀딩목록확인</a></li>
					<li><a href="Q&A.html">뮤지션 전환</a></li>
					<br>
					<br>
					<li><a href="chart">공연등록</a></li>
					<li><a href="banner">공연안내</a></li>
				</ul>
			</nav>
			<div class="sdb_holder">
				<!-- 왼쪽 사이드바 바로밑 내용 
				<h6>Lorem ipsum dolor</h6>
				<address>
					Full Name<br> Address Line 1<br> Address Line 2<br>
					Town/City<br> Postcode/Zip<br> <br> Tel: xxxx xxxx
					xxxxxx<br> Email: <a href="#">contact@domain.com</a>
				</address>-->
			</div>
			<div class="sdb_holder">
				<!-- 왼쪽 사이드바 바로밑밑 내용 -->


			</div>
			<!-- ################################################################################################ -->
		</div>
		<!-- ################################################################################################ -->
		<!-- ################################################################################################ -->
		<div class="content three_quarter">
			<!-- 메인 내용################################################## -->
			<div class="container">
				<!-- ################################################################################################ -->

				<ul>

					<h1
						style="font-family: Nanum Gothic; font-size: 2.5em; font-weight: bold">공연등록</h1>
					<hr>


					<div class="container">
						<div class="row">

							<div class="col-sm-4">
								<img src="images/demo/gallery/map.PNG" style="width: 80%">
								
									<form class="form-search">
										<a class="btn btn-mini" href="#"
											style="float: right; WIDTH: 80pt; HEIGHT: 25pt"><i
											class="icon-search"></i>search</a> <input type="text"
											class="input-small search-query"
											style="float: right; WIDTH: 120pt; HEIGHT: 25pt">
									</form>
								


								<nav class="navbar navbar-expand-sm bg-dark navbar-grey">
									<form class="form-inline"></form>
								</nav>
								<br>
							</div>

							<div class="col-sm-6" style="width: 300px" style=float:>
								<table class="" size="30">
									<tr>
										<td>공연제목:</td>
										<td><input type="text" name="공연제목" id="공연제목" value="공연제목"></td>
									</tr>
									<tr>
										<td>장르:</td>
										<td><input type="text" name="장르" id="장르" value="장르"></td>
									</tr>
									<tr>
										<td>공연날짜:</td>
										<td><input type="text" name="공연날짜" id="공연날짜" value="공연날짜"></td>
									</tr>
									<tr>
										<td>시간:</td>
										<td><input type="text" name="장르" id="장르" value="장르"></td>
									</tr>
									<tr>
										<td>공연장소</td>
										<td><input type="radio" name="장르" id="장르" value="장르">실내
											<input type="radio" name="장르" id="장르" value="장르">실외</td>
									</tr>
									</tr>
								</table>
								<h4>공연소개 및 컨셉</h4>
								<input type="textarea" name="공연소개" id="공연소개" value="공연소개">
							</div>

						</div>
					</div>

					<!-- ################################################################################################ -->


					<!-- ################################################################################################ -->
					<!-- / main body -->
					<div class="clear"></div>
	</section>
	<!--/#services-->
	<%@include file="/frame/mpfooter.jsp"%>	