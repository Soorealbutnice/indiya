<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%String root = request.getContextPath();%> 
<%@ include file="/frame/mpheader.jsp"%>
<%@ include file="/frame/board_common.jsp"%>

<section id="services" class="service-item">

<script>
function getArticle(){
	document.getElementById("act").value = "getarticle";
	document.getElementById("pg").value = "${pg}";
	document.getElementById("key").value = "${key}";
	document.getElementById("word").value = "${word}";
	document.getElementById("no").value = "${article.no}";
	
	document.commonform.action = "${root}/community";
	document.commonform.submit();
	
}

function articleDelete(){
	var msg = confirm("글을 삭제하시겠습니까?")
	var board_no;
	if (msg == true){
		document.getElementById("act").value = "deletearticle";
		document.getElementById("pg").value = "1";
		document.getElementById("key").value = "";
		document.getElementById("word").value = "";
		document.getElementById("no").value = "${article.no}";
		
		document.commonform.action = "${root}/community";
		document.commonform.submit();
	} else{
		return;
	}
}

function listArticle(pg){
	document.getElementById("act").value = "listarticle";
	document.getElementById("pg").value = pg;
	document.getElementById("key").value = "${key}";
	document.getElementById("word").value = "${word}";

	
	document.commonform.action = "${root}/community";
	document.commonform.submit();
}

function writeComment(){ 	
	if(document.writeCommentForm.getElementById("commentWriter").value=""){
		alert('댓글 작성자 이름을 입력하세요.');
		return;
	} else if(document.writeCommentForm.getElementById("commentContent").value="") {
		alert('댓글 내용을 입력하세요.');
		return;
	} else{
		document.commentform.action = "${root}/community";
		document.commentform.submit();
	}
}


function needLogin(){
	alert('댓글을 작성하시려면 로그인을 해야합니다.');
	return;
}

function commentDelete(no){
	
	document.location.href = "${root}/community?act=deletecomment&pg=${pg}&boardno=${article.no}&key=${key}&no="+no;
	
}

</script>

<style>
th, td {
	text-align : center;
}
</style>
<!------------------------------------------------------------------------------------------------------------------------------------------------------------>
<body>
<div class="wrapper row3">
	<main class="hoc container clear"> <!-- main body -->
		<div class="content">
			<h2>Community</h2>
				<div class="row">
					<hr style="border-top: 2px solid #bbb; border-bottom: 1px solid #fff;">
<!--------------------------------------------------------------게시판  글보기 ------------------------------------------------------------------------------------->
					<div name="title" id="title">
					<h4> ${article.title}</h4>
					</div>
					<hr>
					<div id="container">
						<div style="float:left">
							by <b>${article.member_id}</b>
						</div>
						<div style="float: right">${article.write_date}</div>
					</div>
					<hr style="border-top: 2px solid #bbb; border-bottom: 1px solid #fff;">
						<p>
						${article.contents}
						</p>
					<hr>
					<div style="float:left">
						<button type="button" class="btn btn-default" onclick="javascript:listArticle(${param.pg});">글 목록</button>
					</div>
					<c:if test="${article.member_id eq sessionScope.userId}">
					<div style="float:right">
						<button type="button" class="btn btn-default" onclick="javascript:getArticle();">글 수정</button>
						<button type="button" class="btn btn-outline-secondary" onclick="javascript:articleDelete();">글 삭제</button>
					</div>
					</c:if>
					<br> <br>
					<hr>
<!----------------------------------------------------------------댓글 보기 ------------------------------------------------------------------------------------->
					<div id="comments">
					<h3>댓글</h3>
						<ul>
						<c:forEach var="comment" items="${comment}">
							<li>
								<article>
								<div>
									<header>
										<span style="float:left"><address>
											By <a href="#">${comment.member_id}</a>
										</address></span>
										<span style="float:right"><time>
											작성시간 : ${comment.write_date}
										</time></span>
									</header>
									<hr>
									</div>
									
									<div class="comcont">
										<p>
										${comment.contents}
										</p>
									</div>
									<c:if test="${comment.member_id eq sessionScope.userId}">
									<div align="right">
									<hr>
									 <a href="javascript:commentDelete(${comment.no});">삭제</a>
									</div>
									</c:if>
								</article>
							</li>
						</c:forEach>
						</ul>
					</div>				
<!---------------------------------------------------댓글 보기 --------------------------------------------------------->
<!---------------------------------------------------댓글 작성 --------------------------------------------------------->
					<form name="commentform" id="commentform" method="post" action="${root}/community?act=writecomment">
						<input type="hidden" name="pg" value="${pg}">
						<input type="hidden" name="key" value="${key}">
						<input type="hidden" name="word" value="${word}">
						<input type="hidden" name="no" value="${article.no}">
							
						<c:if test="${null eq userInfo}">
						<div class="form-group">
							<label for="commentWriter">작성자</label>
							<input type="text" class="form-control"id="commentWriter" name="commentWriter" placeholder="이름을 작성하세요" required>
						</div>
						</c:if>
						
						<c:if test="${null ne userInfo}">
						<div class="form-group">
							<label for="commentWriter">작성자</label>
							<input type="text" class="form-control"id="commentWriter" name="commentWriter" value="${userInfo.id}" readonly="readonly">
						</div>
						</c:if>

						<div class="form-group">
							<label for="commentContent">댓글</label>
							<textarea class="form-control" rows="7" id="commentContent" name="commentContent" placeholder="내용을 작성하세요"></textarea>
						</div>
						<div>
						<span style="float:right;"><input type="submit" value="작성"></span>
						</div>
					</form>
<!-----------------------------------------댓글 작성 --------------------------------------------------------->
					<br><br>
					<hr>
					<hr>

<!--------------------------------------------------------------------------------------------------------------->
			</div>
		</div>
	</main>
</div>
<!---------------------------------------------------------------------------------------------------------------------------------------------> 
   </section><!--/#services-->    
   <%@ include file="/frame/mpfooter.jsp"%>
