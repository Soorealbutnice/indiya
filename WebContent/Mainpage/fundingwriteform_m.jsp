<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/frame/mpheader.jsp"%>
<body id="top">

<!-- 
Funding Detailes Body	Funding Detailes Body	Funding Detailes Body	Funding Detailes Body
Funding Detailes Body	Funding Detailes Body	Funding Detailes Body	Funding Detailes Body
Funding Detailes Body	Funding Detailes Body	Funding Detailes Body	Funding Detailes Body
-->




<div class="wrapper row3">
  <main class="hoc container clear"> 
    <!-- main body -->
    <!-- ############################################### -->
    <div class="content"> 
      <!-- ############################################### -->
<!-- 펀딩 작성 폼 시작 -->
	<form action="#" method="post">
<!-- 펀딩 상세 상단 시작 -->
	<div>
<!-- 펀딩 상세 상단 왼쪽 시작 -->	
		<div class="one_quarter first">
			<div class="thumbnail">
			<div class="caption">이미지 등록</div>
			<img src="../images/demo/backgrounds/01.png" alt="">
			<input type="file" name="" id="" value="" required>
			</div>
		</div>
<!-- 펀딩 상세 상단 왼쪽 끝 -->

<!-- 펀딩 상세 상단 오른쪽 시작 -->	
		<div class="one_quarter">
			<div class="input-group">
				<span class="input-group-addon" id="">
					<span class="glyphicon glyphicon-th-list" aria-hidden="true"></span>
				</span>
				<select class="form-control" name="" id="">
					<option value="">카테고리</option>
					<option value="">음반</option>
					<option value="">공연</option>
				</select>
			</div><br>
			
			<div class="input-group">
				<span class="input-group-addon" id="">
					<span class="glyphicon glyphicon-usd" aria-hidden="true"></span>
				</span>
				<input type="number" class="form-control" name="" id="" value="" size="" min="1" max="" required>
			</div><br>

			<div class="input-group">
				<span class="input-group-addon" id="">
					<span class="glyphicon glyphicon-play" aria-hidden="true"></span>
				</span>
				<input type="date" class="form-control" name="" id="" value="" required>
			</div><br>

			<div class="input-group">
				<span class="input-group-addon" id="">
					<span class="glyphicon glyphicon-stop" aria-hidden="true"></span>
				</span>
				<input type="date" class="form-control" name="" id="" value="" required>
			</div>
		</div>		
<!-- 펀딩 상세 상단 오른쪽 끝 -->		
	
	</div>  
<!-- 펀딩 상세 상단 끝 -->




<!-- 펀딩 상세 본문 내용 시작 -->	
		<div class="services clear">
			<h2>Title</h2>
			<input type="text" class="form-control" name="" id="" value="" size="99" required><br>
			
			<h2>Content</h2>
			<textarea class="form-control" name="" id="" rows="50" cols="100" required></textarea>
			
		  <article class="services">

		  </article>
		</div>
<!-- 펀딩 상세 본문 내용 끝 -->	
	

 <!-- 리워드 영역 시작 -->
	<div class="clear"></div>
      <div id="comments">
		<div class="fl_right">
			<button class="btn">+</button>
		</div>
		<h2>Reward List</h2>
        <ul>
          <li class="services clear">
            <article class="">
				<div class="one_quarter first">
					<div class="thumbnail">
						<div class="caption">이미지 등록</div>
						<img src="lll" alt="">
						<input type="file" name="" id="" value="lll" required>
					</div>
				</div>
				<div class="three_quarter">
					<div class="input-group">
						<span class="input-group-addon" id="">Title :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
						<input type="text" class="input-group form-control" name="" id="" value="" required>
					</div><br>
					<div class="input-group">
						<span class="input-group-addon" id="">Price :&nbsp;&nbsp;&nbsp;&nbsp;</span>
						<input type="number" class="input-group form-control" name="" id="" value="" min="1" required>
					</div><br>
				
					<div class="input-group">
						<span class="input-group-addon" id="">Content : </span>
						<textarea class="form-control" name="" id="" value="" rows="5" cols="" required></textarea>
						<!-- <input type="text" class="input-group" name="" id="" value="" required> -->
					</div><br>
				</div>

				<p class="comcont">&nbsp;</p><!-- 하단 띠 위치 조절용  -->
              
            </article>
          </li>
		</ul>
      </div>
<!-- 리워드 영역 끝 -->	  


<!-- 리워드 추가용 숨김 div 시작 -->
      <div id="comments" class="hidden">
		<ul>
          <li class="services clear">
            <article class="">
				<div class="one_quarter first">
					<div class="thumbnail">
						<div class="caption">이미지 등록</div>
						<img src="../images/demo/imgl.gif" alt="">
						<input type="file" name="" id="" value="" required>
					</div>
				</div>
				<div class="three_quarter">
					<div class="input-group">
						<span class="input-group-addon" id="">Title :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
						<input type="text" class="input-group form-control" name="" id="" value="" required>
					</div><br>
					<div class="input-group">
						<span class="input-group-addon" id="">Price :&nbsp;&nbsp;&nbsp;&nbsp;</span>
						<input type="number" class="input-group form-control" name="" id="" value="" min="1" required>
					</div><br>
				
					<div class="input-group">
						<span class="input-group-addon" id="">Content : </span>
						<textarea class="form-control" name="" id="" value="" rows="5" cols="" required></textarea>
						<!-- <input type="text" class="input-group" name="" id="" value="" required> -->
					</div><br>
				</div>

				<p class="comcont">&nbsp;</p><!-- 하단 띠 위치 조절용  -->
              
            </article>
          </li>
		</ul>
      </div>
<!-- 리워드 추가용 숨김 div 끝 -->

		<div class="fl_right">
			<button class="btn">펀딩 신청하기</button>
		</div>
	</form>
	<!-- 펀딩 작성 폼 끝 -->
      <!-- ############################################### -->
    </div>
    <!-- ############################################### -->
    <!-- / main body -->
    <div class="clear"></div>
  </main>
</div>


<!-- 
Funding Detailes Body	Funding Detailes Body	Funding Detailes Body	Funding Detailes Body
Funding Detailes Body	Funding Detailes Body	Funding Detailes Body	Funding Detailes Body
Funding Detailes Body	Funding Detailes Body	Funding Detailes Body	Funding Detailes Body
-->





<!-- ############################################### -->
<!-- ############################################### -->
<!-- ############################################### -->
<a id="backtotop" href="#top"><i class="fa fa-chevron-up"></i></a>
<!-- JAVASCRIPTS -->
<%@include file="/frame/mpfooter.jsp"%>