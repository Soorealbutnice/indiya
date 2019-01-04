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
		<main class="hoc container clear"> <!-- main body --> <!-- ############################################### -->
		<div class="content">
			<!-- ############################################### -->

			<!-- 펀딩 제목 -->
			<div class="content">
				<div class="article center">
					<h1>Funding Title</h1>
				</div>
			</div>

			<!-- 펀딩 상세 상단 시작 -->
			<div>
				<!-- 펀딩 상세 상단 왼쪽 시작 -->
				<div class="three_quarter first">
					<div class="thumbnail">
						<img src="../images/demo/backgrounds/01.png" alt="">
					</div>
				</div>
				<!-- 펀딩 상세 상단 왼쪽 끝 -->

				<!-- 펀딩 상세 상단 오른쪽 시작 -->
				<div class="one_quarter">
					<h1>작성자</h1>
					<div class="fl_right">$500</div>
					<label>달성금액</label>

					<div class="progress">
						<div class="progress-bar" role="progressbar" aria-valuenow="0"
							aria-valuemin="0" aria-valuemax="100"
							style="min-width: 2em; width: 50%;">50%</div>
					</div>
					<div class="inline">
						<div class="">7일 남음</div>
					</div>
					<button class="btn" style="width: 100%;" data-toggle="modal"
						data-target="#myModal">후원하기</button>
				</div>
				<!-- 펀딩 상세 상단 오른쪽 끝 -->

			</div>
			<!-- 펀딩 상세 상단 끝 -->




			<!-- 펀딩 상세 본문 내용 시작 -->
			<div class="services clear">
				<h1>Funding Details</h1>
				<img class="imgr borderedbox inspace-5"
					src="../images/demo/imgr.gif" alt="">
				<p>Aliquatjusto quisque nam consequat doloreet vest orna partur
					scetur portortis nam. Metadipiscing eget facilis elit sagittis
					felisi eger id justo maurisus convallicitur.</p>
				<p>
					Dapiensociis <a href="#">temper donec auctortortis cumsan</a> et
					curabitur condis lorem loborttis leo. Ipsumcommodo libero nunc at
					in velis tincidunt pellentum tincidunt vel lorem.
				</p>
				<img class="imgl borderedbox inspace-5"
					src="../images/demo/imgl.gif" alt="">
				<p>
					This is a W3C compliant free website template from <a
						href="http://www.os-templates.com/" title="Free Website Templates">OS
						Templates</a>. For full terms of use of this template please read our
					<a href="http://www.os-templates.com/template-terms">website
						template licence</a>.
				</p>
				<p>
					You can use and modify the template for both personal and
					commercial use. You must keep all copyright information and credit
					links in the template and associated files. For more website
					templates visit our <a href="http://www.os-templates.com/">free
						website templates</a> section.
				</p>
				<p>Portortornec condimenterdum eget consectetuer condis
					consequam pretium pellus sed mauris enim. Puruselit mauris nulla
					hendimentesque elit semper nam a sapien urna sempus.</p>
				<article class="services"></article>
			</div>
			<!-- 펀딩 상세 본문 내용 끝 -->


			<!-- 리워드 영역 시작 -->
			<div class="clear"></div>
			<div id="comments">
				<h2>Rewards</h2>
				<ul>
					<li class="services">
						<article class="">
							<header>
								<figure class="">
									<img class="imgl borderedbox inspace-5"
										src="../images/demo/imgl.gif" alt="">
								</figure>
								<address>
									Reward1 <a href="#">Title</a>
									<p class="comcont">$10</p>
								</address>
							</header>
							<div class="comcont">
								<p>This is an example of a comment made on a post. You can
									either edit the comment, delete the comment or reply to the
									comment. Use this as a place to respond to the post or to share
									what you are thinking.</p>
							</div>
						</article>
					</li>
					<li class="services">
						<article class="">
							<header>
								<figure class="">
									<img class="imgl borderedbox inspace-5"
										src="../images/demo/imgl.gif" alt="">
								</figure>
								<address>
									Reward2 <a href="#">Title</a>
									<p class="comcont">$30</p>
								</address>
							</header>
							<div class="comcont">
								<p>This is an example of a comment made on a post. You can
									either edit the comment, delete the comment or reply to the
									comment. Use this as a place to respond to the post or to share
									what you are thinking.</p>
							</div>
						</article>
					</li>
					<li class="services">
						<article class="">
							<header>
								<figure class="">
									<img class="imgl borderedbox inspace-5"
										src="../images/demo/imgl.gif" alt="">
								</figure>
								<address>
									Reward3 <a href="#">Title</a>
									<p class="comcont">$50</p>
								</address>
							</header>
							<div class="comcont">
								<p>This is an example of a comment made on a post. You can
									either edit the comment, delete the comment or reply to the
									comment. Use this as a place to respond to the post or to share
									what you are thinking.</p>
							</div>
						</article>
					</li>
				</ul>
			</div>
			<!-- 리워드 영역 끝 -->

			<!-- Modal -->
			<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
				aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
							<h4 class="modal-title" id="myModalLabel">Funding</h4>
						</div>


						<!-- 모달 바디 시작 -->
						<div class="modal-body">
							<label class="center">메세지 제목</label>
							<div class="comcont">
								<p>This is an example of a comment made on a post. You can
									either edit the comment, delete the comment or reply to the
									comment. Use this as a place to respond to the post or to share
									what you are thinking.</p>
							</div>


							<div class="">
								<form action="#" method="post">

									<div class="one_third first">
										<!-- 위치지정 용 -->
										<div>&nbsp;</div>
									</div>

									<div class="one_third">
										<div class="input-group">
											<span class="input-group-addon" id="">Reward :</span> <select
												class="form-control">
												<!-- 리워드  -->
												<option name="" value="">Reward1</option>
												<option name="" value="">Reward2</option>
												<option name="" value="">Reward3</option>
											</select>
										</div>
										<br>
										<div class="input-group">
											<span class="input-group-addon" id="">금&nbsp;&nbsp;&nbsp;&nbsp;액
												:&nbsp;</span> <label for="" class="form-control">$100</label>
											<!-- 금액  -->
										</div>
										<br>
										<div class="input-group">
											<span class="input-group-addon" id="">보유 코인 :</span> <label
												for="" class="form-control">$50</label>
											<!-- 보유 코인  -->
										</div>
										<br>
										<div class="input-group">
											<span class="input-group-addon" id="">사용 코인 :</span> <input
												type="number" class="form-control" name="" id="" value=""
												min="0" required>
											<!-- 사용코인  -->
										</div>
										<br>

										<div class="input-group">
											<span class="input-group-addon" id="">총 금액 : </span> <label
												for="" class="form-control">$50</label>
											<!-- 총금액  -->
											<!-- <input type="text" class="input-group" name="" id="" value="" required> -->
										</div>
										<br>
									</div>
							</div>

							<div class="block clear"></div>
							</form>
						</div>
						<!-- 모달 바디 끝 -->

						<div class="modal-footer">
							<button type="button" class="btn" data-dismiss="modal">취소</button>
							<button type="button" class="btn">후원하기</button>
						</div>
					</div>
				</div>
			</div>
		</div>

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