<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%String root = request.getContextPath();%> 
<%@ include file="/frame/mpheader.jsp"%>
<%@ include file="/frame/board_common.jsp"%>

<section id="services" class="service-item">

<script>
function reviewlist(){
	document.location.href="${root}/review?act=reviewlist";
}

function getList(no){
	document.location.href="${root}/review?act=getlist&reviewNo="+no;
	
}

function reviewWrite(){
	document.location.href="${root}/Review/ReviewWrite.jsp";
}

function needLogin(){
	alert('로그인을 하셔야 후기를 작성하실 수 있습니다.');
	return;
}
</script>

<style>
      #columns{
        column-width:250px;
        column-gap: 15px;
      }
      #columns figure{
        display: inline-block;
        border:1px solid rgba(0,0,0,0.2);
        margin:0;
        margin-bottom: 15px;
        padding:10px;
        box-shadow: 2px 2px 5px rgba(0,0,0,0.5);;
      }
      #columns figure img{
        width:100%;
      }
      #columns figure figcaption{
        border-top:1px solid rgba(0,0,0,0.2);
        padding:10px;
        margin-top:11px;
      }
</style>

<!------------------------------------------------------------------------------------------------------------------------------------------------------------>
<body>
<div class="row">
<div class="col-lg-8 col-lg-offset-2">
		<div class="content">
			<h2>PhotoReview</h2>
				<div class="row">
				<div align="right">
						<c:if test="${userInfo.id ne null}">
						<button type="button" class="btn btn-default" onclick="javascript:reviewWrite();">후기작성</button>
						</c:if>
						<c:if test="${userInfo.id eq null}">
						<button type="button" class="btn btn-default" onclick="javascript:needLogin();">후기작성</button>
						</c:if>
				</div>
					<hr style="border-top: 2px solid #bbb; border-bottom: 1px solid #fff;">
<!--------------------------------------------------------------게시판  글보기 ------------------------------------------------------------------------------------->
<!------------------------------ ----------FOREACH 돌리자---------------------------------------------- -->
				<div id="columns">
					<c:forEach var="review" items="${review}">
					<a onclick="javascript:getList(${review.reviewNo});"><figure>
						<img src="../picup/${review.write_date}/${review.photoRoot}" class="img-rounded">
						<figcaption>${review.musicianName}<br>${review.contents}</figcaption>
					</figure></a>
					</c:forEach>
				</div>		
<!------------------------------ ----------FOREACH 돌리자---------------------------------------------- -->
<!--------------------------------------------------------------------------------------------------------------->
			</div>
			</div>
	</div>
</div>
<!---------------------------------------------------------------------------------------------------------------------------------------------> 
   </section><!--/#services-->    
   <%@ include file="/frame/mpfooter.jsp"%>
