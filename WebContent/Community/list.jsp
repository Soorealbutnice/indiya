<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/frame/mpheader.jsp"%>
<%@ include file="/frame/board_common.jsp"%>
<section id="services" class="service-item">
<script>
function moveWrite(){
	document.getElementById("act").value = "mvwrite";
	document.getElementById("pg").value = "1";
	document.getElementById("key").value = "";
	document.getElementById("word").value = "";
	
	document.commonform.action = "${root}/community";
	document.commonform.submit();
}

function listArticle(pg) {
	document.getElementById("act").value = "listarticle";
	document.getElementById("pg").value = pg;
	document.getElementById("key").value = "${key}";
	document.getElementById("word").value = "${word}";
	
	document.commonform.action = "${root}/community";
	document.commonform.submit();
}

function totalArticle() {
	document.getElementById("act").value = "listarticle";
	document.getElementById("pg").value = '1';
	document.getElementById("key").value = "";
	document.getElementById("word").value = "";
	
	document.commonform.action = "${root}/community";
	document.commonform.submit();
}

function goCommunitySearch() {
	document.getElementById("act").value = "listarticle";
	document.getElementById("pg").value = "1";
	document.getElementById("key").value = document.getElementById("skey").value;
	document.getElementById("word").value = document.getElementById("sword").value;

	document.commonform.action = "${root}/community";
	document.commonform.submit();
}

function goMyList(userid) {
	document.getElementById("act").value = "listarticle";
	document.getElementById("pg").value = "1";
	document.getElementById("key").value = "member_id";
	document.getElementById("word").value = userid;
	
	document.commonform.action = "${root}/community";
	document.commonform.submit();
}

function viewArticle(no) {
	document.getElementById("act").value = "viewarticle";
	document.getElementById("pg").value = "${pg}";
	document.getElementById("key").value = "${key}";
	document.getElementById("word").value = "${word}";
	document.getElementById("no").value = no;

	document.commonform.action = "${root}/community";
	document.commonform.submit();

}

function getCommentCount(){
	
	document.location.href= "${root}/community?act=getcommentcount";
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
<!---------------------------------------------------게시판 본문 --------------------------------------------------------->
<!---------------------------------------------------게시판 목록 --------------------------------------------------------->
					<div align="right">
						<button type="button" class="btn btn-default" onclick="javascript:moveWrite();">글쓰기</button>
					</div>
					<br>
					<div>
						<table class="table table-hover">
							<thead>
								<tr>
									<th>글번호</th>
									<th width=450 style="word-break:break-all">제목</th>
									<th>작성자</th>
									<th>조회수</th>
									<th>작성일</th>
								</tr>
							</thead>
							<tbody>
							<c:forEach var="article" items="${list}">
								<tr>
									<td style="word-break: break-all;">${article.no}</td>
									<td style="text-align:left"><a href="javascript:viewArticle('${article.no}');">${article.title}</a></td>
									<td>${article.member_id}</td>
									<td>${article.visited}</td>
									<td>${article.write_date}</td>
								</tr>
							</c:forEach>
							</tbody>
						</table>
					</div>
<!---------------------------------------------------게시판 목록 --------------------------------------------------------->
					<br>
<!---------------------------------------------------검색부분----------------------------------------------------------->
					<div align="center" class="col-lg-12">
			                <span style="float:left;">
				                <select name="skey" id="skey" class="inp" style="width:80px;height:35px;">
									<option value="title">글제목
									<option value="member_id">작성자
									<option value="no">글번호
								</select>
							</span>&nbsp;&nbsp;&nbsp;
							<span style="float:left;"> 
			                    <input class="form-control" id="sword" name="sword" placeholder="검색어 입력" required>
			                </span>
		                    <span style="float:left;">
		                        <button class="btn btn-default" onclick="javascript:goCommunitySearch();"><i class="glyphicon glyphicon-search"></i></button>
		                    </span>
		                    <c:if test="${sessionScope.userInfo != null}">
		                    <span style="float:right;">
		                    	<button class="btn btn-default" onclick="javascript:goMyList('${userId}')">내가 쓴 글 목록</button>
		                    </span>
		                    </c:if>
			        </div>
<!-------------------------------------------------- 페이징------------------------------------------------------------->
				<div class="pagination">
					${navigator.navigator}
				</div>
<!--------------------------------------------------------------------------------------------------------------->
			</div>
		</div>
	</main>
</div>
<!---------------------------------------------------------------------------------------------------------------------------------------------> 
   </section><!--/#services-->    
   <%@ include file="/frame/mpfooter.jsp"%>