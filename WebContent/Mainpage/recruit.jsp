<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/frame/mpheader.jsp"%>
<body>
	
	<section id="services" class="service-item">
		<!---------------------------------------------------------------------------------------------------------------------------------------------------------->
		<div class="wrapper row3">
			<main class="hoc container clear"> <!-- main body -->
			<div class="content">
				<h2>
					<b><font color="black">Recruit</font></b>
				</h2>
				<!--------------------------------------------------------------게시판 본문 ------------------------------------------------------------------------------------->
				<div class="row">
					<hr                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
						style="border-top: 2px solid #bbb; border-bottom: 1px solid #fff;">
					<!-- Title -->

					<div name="title">
						<h3>ㅅㅄㅄㅄㅄㅄㅂ</h3>
					</div>
					<hr>
					<!-- Author & date -->
					<div id="container">
						<div style="float:left">
							by <a href="#">작성자 이름</a>
						</div>
						<div style="float: right">January 1, 2018 at 12:00 PM</div>
					</div>
					<hr>
					<!-- Post Content -->
					<p class="lead">Lorem ipsum dolor sit amet, consectetur
						adipisicing elit. Ducimus, vero, obcaecati, aut, error quam
						sapiente nemo saepe quibusdam sit excepturi nam quia corporis
						eligendi eos magni recusandae laborum minus inventore?</p>

					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
						Ut, tenetur natus doloremque laborum quos iste ipsum rerum
						obcaecati impedit odit illo dolorum ab tempora nihil dicta earum
						fugiat. Temporibus, voluptatibus.</p>

					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
						Eos, doloribus, dolorem iusto blanditiis unde eius illum
						consequuntur neque dicta incidunt ullam ea hic porro optio ratione
						repellat perspiciatis. Enim, iure!</p>

					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
						Error, nostrum, aliquid, animi, ut quas placeat totam sunt tempora
						commodi nihil ullam alias modi dicta saepe minima ab quo
						voluptatem obcaecati?</p>

					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
						Harum, dolor quis. Sunt, ut, explicabo, aliquam tenetur ratione
						tempore quidem voluptates cupiditate voluptas illo saepe quaerat
						numquam recusandae? Qui, necessitatibus, est!</p>
					<hr>
				</div>
			
			<div align="right">
				<button type="button" class="btn btn-outline-secondary" data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo">신청</button>
				<button type="button" class="btn btn-outline-secondary">수정</button>
				<button type="button" class="btn btn-outline-secondary">삭제</button>
			</div>
		</div>
							<!---------------------------------------------------신청버튼 모달 가눙 --------------------------------------------------------->
				<script>
				$(#exampleModal).on('show.bs.modal', function (event) {
					  var button = $(event.relatedTarget)
					  var recipient = button.data('whatever')
					  var modal = $(this)
					  modal.find('.modal-title').text('New message to ' + recipient)
					  modal.find('.modal-body input').val(recipient)
					})
				
				</script>
				
				<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
					<div class="modal-dialog" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="exampleModalLabel">신청하기</h5>
								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
							<div class="modal-body">
								<form>
									<div class="form-group">
										<textarea class="form-control" id="message-text" rows="20"></textarea>
									</div>
								</form>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-outline-secondary pull-left" data-dismiss="modal">취소</button>
								<button type="button" class="btn btn-outline-secondary pull-right">보내기</button>
							</div>
						</div>
					</div>
				</div>
								
				<!---------------------------------------------------신청버튼 모달 가눙 --------------------------------------------------------->
				<br> <br>
				<hr>
			<!--------------------------------------------------댓글 보기 --------------------------------------------------------->
			<div id="comments">
					<h3>댓글</h3>
					<ul>
						<li>
							<article>
								<header>
									<figure class="avatar">
										<img src="../images/demo/avatar.png" alt="">
									</figure>
									<address>
										By <a href="#">A Name</a>
									</address>
									<time datetime="2045-04-06T08:15+00:00">
										Friday, 6<sup>th</sup> April 2045 @08:15:00
									</time>
								</header>
								<div class="comcont">
									<p>This is an example of a comment made on a post. You can
										either edit the comment, delete the comment or reply to the
										comment. Use this as a place to respond to the post or to
										share what you are thinking.</p>
								</div>
								<div align="right">
									<a href="#">수정</a> <a href="#">삭제</a>
								</div>
							</article>
						</li>
						<li>
							<article>
								<header>
									<figure class="avatar">
										<img src="../images/demo/avatar.png" alt="">
									</figure>
									<address>
										By <a href="#">A Name</a>
									</address>
									<time datetime="2045-04-06T08:15+00:00">
										Friday, 6<sup>th</sup> April 2045 @08:15:00
									</time>
								</header>
								<div class="comcont">
									<p>This is an example of a comment made on a post. You can
										either edit the comment, delete the comment or reply to the
										comment. Use this as a place to respond to the post or to
										share what you are thinking.</p>
								</div>
								<div align="right">
									<a href="#">수정</a> <a href="#">삭제</a>
							</article>
						</li>
						<li>
							<article>
								<header>
									<figure class="avatar">
										<img src="../images/demo/avatar.png" alt="">
									</figure>
									<address>
										By <a href="#">A Name</a>
									</address>
									<time datetime="2045-04-06T08:15+00:00">
										Friday, 6<sup>th</sup> April 2045 @08:15:00
									</time>
								</header>
								<div class="comcont">
									<p>This is an example of a comment made on a post. You can
										either edit the comment, delete the comment or reply to the
										comment. Use this as a place to respond to the post or to
										share what you are thinking.</p>
								</div>
								<div align="right">
									<a href="#">수정</a> <a href="#">삭제</a>
							</article>
						</li>
					</ul>
				</div>
					<!---------------------------------------------------댓글 보기 --------------------------------------------------------->
					<!---------------------------------------------------댓글 작성 --------------------------------------------------------->
				<form>
				<div class="form-group">
					<label for="formGroupExampleInput">이름</label>
					<input type="text" class="form-control col-2" id="formGroupExampleInput" placeholder="이름을 작성하세요">
				</div>
				<div class="form-group">
					<label for="formGroupExampleInput2">댓글</label>
					 <textarea class="form-control" rows="7" placeholder="내용을 작성하세요"></textarea>
				</div>
				<div align="right">
					<button type="submit" class="btn btn-outline-primary">작성</button>
				</div>
			</form>
				<br> <br>
				<hr>
				<hr>
			<!-----------------------------------------댓글 작성 --------------------------------------------------------->
			<!---------------------------------------------------게시판 본문 --------------------------------------------------------->
			<!---------------------------------------------------게시판 목록 --------------------------------------------------------->
			<div>
				<table class="table table-hover">
					<thead>
						<tr>
							<th>번호</th>
							<th>제목</th>
							<th>작성자</th>
							<th>날짜</th>
							<th>조회수</th>
							<th>댓글수</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><a href="#">Value 1</a></td>
							<td>Value 2</td>
							<td>Value 3</td>
							<td>Value 4</td>
							<td>Value 4</td>
							<td>Value 4</td>
						</tr>
						<tr>
							<td>Value 5</td>
							<td>Value 5</td>
							<td>Value 5</td>
							<td>Value 5</td>
							<td>Value 6</td>
							<td><a href="#">Value 8</a></td>
						</tr>
						<tr>
							<td>Value 9</td>
							<td>Value 10</td>
							<td>Value 11</td>
							<td>Value 12</td>
							<td>Value 12</td>
							<td>Value 12</td>
						</tr>
						<tr>
							<td>Value 13</td>
							<td><a href="#">Value 14</a></td>
							<td>Value 15</td>
							<td>Value 16</td>
							<td>Value 16</td>
							<td>Value 16</td>
						</tr>
						</tr>
						<tr>
							<td>Value 13</td>
							<td><a href="#">Value 14</a></td>
							<td>Value 15</td>
							<td>Value 16</td>
							<td>Value 16</td>
							<td>Value 16</td>
						</tr>
						</tr>
						<tr>
							<td>Value 13</td>
							<td><a href="#">Value 14</a></td>
							<td>Value 15</td>
							<td>Value 16</td>
							<td>Value 16</td>
							<td>Value 16</td>
						</tr>
						</tr>
						<tr>
							<td>Value 13</td>
							<td><a href="#">Value 14</a></td>
							<td>Value 15</td>
							<td>Value 16</td>
							<td>Value 16</td>
							<td>Value 16</td>
						</tr>
					</tbody>
				</table>
			</div>
			<br>
			<!---------------------------------------------------게시판 목록 --------------------------------------------------------->
			<!-------------------------------------------------- 페이징------------------------------------------------------------->
			<nav class="pagination">
						<!--페이징  -->
						<ul>
							<li><a href="#">&laquo; 이전페이지</a></li>
							<li><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li class="current"><strong>5</strong></li>
							<li><a href="#">6</a></li>
							<li><a href="#">7</a></li>
							<li><strong>&hellip;</strong></li>
							<li><a href="#">9</a></li>
							<li><a href="#">다음페이지 &raquo;</a></li>
						</ul>
					</nav>
			<!-------------------------------------------------- 페이징------------------------------------------------------------->
		</div>
		<!-- / main body -->
		<div class="clear"></div>
		</main>
	</div>

<!---------------------------------------------------------------------------------------------------------------------------------------------> 
    </section><!--/#services-->    
    <%@include file="/frame/mpfooter.jsp"%>
  
  