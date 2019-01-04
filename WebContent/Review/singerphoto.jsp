<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	<head>
	<title>INDIYA</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
	<link href="../layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<style type="text/css">
			.fadding-photo { opacity:0.4;}
			.fadding-photo:hover { opacity:1;}
			a{color:#A0A0A0;}
			i{margin:10px 10px 0px 1px;}
			h1, h2, h3, h4, h5, h6, .heading{font-family:Georgia, "Times New Roman", Times, serif;}
			img{width:200px; height:150px;}<!--4:3-->
			.image_text{position:relative;}			
			.text_on{position:absolute; color:#FFFFFF; top:80px; left:60px; width:100px; opacity:1;}
			#modal{display:none;background-color:#FFFFFF;position:absolute;top:300px;left:200px;padding:10px;border:2px solid #E2E2E2;z-Index:9999}
		</style>		
	</head>
<%@include file="/frame/mpheader.jsp"%>

<body>
<!------------------------------------------- header------------------------------------- -->
<!-- left sidebar wrapper3 div를 빌려와 두개의div(sidebar one_quarter first, content three_quarter)태그에 나눔 -->

<div class="wrapper row3">
	<div class="hoc container clear">
	<div class="one_quarter first">
		<nav class="sdb_holder">
			<div class="wrapper row1">
				<ul>
					<div class="card" style="padding-top:28px">
					<img class="card-img-top" src="../images/demo/backgrounds/sky.jpg" alt="Card image" style="width: 100%">
					<p>excuse me!</p>
						<div class="card-body">
						<h4 class="card-title">Doctor OH</h4>
							<p class="card-text"></p>
							<div class="sdb_holder">
								<address>
								Full Name<br> Address Line 1<br> Address Line 2<br>
								Town/City<br> Postcode/Zip<br> <br> Tel: xxxx
								xxxx xxxxxx<br> Email: <a href="#">contact@domain.com</a>
								</address>
							</div>
						</div>
					</div>
				</ul>
			</div>
			
			<div class="wrapper row1">
				<li><a href="#">정보수정</a></li>
				<li><a href="#">일정관리</a></li>
				<li><a href="#">Q&A</a></li>
				<li><a href="#">충전내역확인</a></li>
				<li><a href="#">내가펀딩한목록</a></li>
				<li><a href="#">찜목록</a></li>
				<li><a href="#">뮤지션 전환</a></li> <br> <br>
				<li><a href="#">공연등록</a></li>
				<li><a href="#">공연관리</a></li>
			</div>
		</nav>
	</div> 

	
    
<!--------------------------------------------------------------------------사이드 파트 끝 ------------------------------------------------------>
  		

			<div class="content three_quarter"> <!-- wrapper3 의 3/4 -->
				<div class="content">
					<div align="right">날짜 검색 <input type="date" id="date" value="today" style="display:inline; height:24px;"></div><!-- 자바스크립트 -->
						<h1>Band Name</h1>
						<h3 class="nospace clear" align="left">Photo</h3><!-- div space 80삭제 -->  
							<ul class="group services" style="padding-top:10px; padding-left:0px;">
								<li class="one_third first" style="margin-bottom: 60px;">
									<article class="bgded overlay">
										<div class="txtwrap fadding-photo"class=image_text ><!--.services article .txtwrap{padding:5px; border:1px solid;}  -->
												<div class=text_on>
												<h5>공연날짜|공연장소|사진제목|조회수|작성자</h5>
												</div>
											<a href=><img src="../images/demo/gallery/Vocal.jpg"></a>  
											<footer><a href="photoviewpage.html" class="fadding-photo" onclick="javascript:open()">더보기 &raquo;</a></footer>
										</div>
									</article>
									<div align="right">
									
										<button id="modify" class="btn">관리자 삭제</button>	
																			
										<!-- Trigger the modal with a button -->
										<button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Open Modal</button>
										
										<!-- Modal -->
										<div id="myModal" class="modal fade" role="dialog">
										  <div class="modal-dialog">
										
										    <!-- Modal content-->
										    <div class="modal-content">
										      <div class="modal-header">
										        <button type="button" class="close" data-dismiss="modal">&times;</button>
										        <h4 class="modal-title">Modal Header</h4>
										      </div>
										      <div class="modal-body">
										        <p>Some text in the modal.</p>
										      </div>
										      <div class="modal-footer">
										        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
										      </div>
										    </div>
										
										  </div>
										</div>
										
										
				
									</div>
								</li>
								<li class="one_third" style="margin-bottom: 60px;">
									<article class="bgded overlay" style="border-bottom-width:0px; padding-bottom:20px;">
										<div class="txtwrap fadding-photo" ><!--.services article .txtwrap{padding:5px; border:1px solid;}  -->
											<a href="../pages/photoviewpage.html"><img src="../images/demo/gallery/busking.jpg"></a>
										</div>
										<div>

										</div>
									</article>
									<div align="center">공연날짜 | 공연장소</div>
									<div align="center">사진제목 | 조회수</div>
									<div align="center">작성자</div>
									<div align="right"><button id="modify" class="btn btn-default">관리자 삭제</button><button id="modify" class="btn btn-default">뮤지션 수정</button></div>
								</li>
								<li class="one_third" style="margin-bottom: 60px;">
									<article class="bgded overlay">
										<div class="txtwrap fadding-photo" ><!--.services article .txtwrap{padding:5px; border:1px solid;}  -->
											<a href="../pages/photoviewpage.html"><img src="../images/demo/gallery/Vocal.jpg"></a>  
											<footer><a href="photoviewpage.html" class="fadding-photo" onclick="javascript:open()">더보기 &raquo;</a></footer>
										</div>
									</article>
									<div align="right"><button id="modify">관리자 삭제</button><button id="modify">뮤지션 수정</button></div>
								</li>
							</ul>

					
					        <nav class="pagination"> 
					          <ul>
					            <li><a href="#">&laquo; 이전페이지</a></li>
					            <li><a href="#">1</a></li>
					            <li><a href="#">2</a></li>
					            <li><a href="#">3</a></li>
					            <li><a href="#">4</a></li>
					            <li class="current"><strong>5</strong></li>
					            <li><a href="#">6</a></li>
					            <li><a href="#">7</a></li>
					            <li><a href="#">8</a></li>
					            <li><a href="#">9</a></li>
					            <li><a href="#">다음페이지 &raquo;</a></li>
					          </ul>
					        </nav>
					
							<div id="search" align="center">   
							<select name="due" style="display:inline; height:26px">
								<option value="">기간</option>
								<option value="1">1일</option>
								<option value="7">7일</option>
								<option value="30">30일</option>
							</select>
							
							<select name="loc" style="display:inline; height:26px">
								<option value="">검색 조건</option>
								<option value="location">장소</option>
								<option value="name">게시자</option>
							</select>
							
							<input type="text" placeholder="검색어를 입력하세요" style="display:inline">
							<button name="search" style="display:inline">검색</button>
							</div>  
							
							
							</div>
			</div>
	</div> <!-- hoc container -->
</div><!-- wrapper -->
<!------------------------------------------- footer------------------------------------- -->
<%@include file="/frame/mpfooter.jsp"%>
</body>
</html>
