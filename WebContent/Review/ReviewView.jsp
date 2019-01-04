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
   .carousel{
   background: #2f4357;
   margin-top: 20px;
   }
   .carousel .item{
       min-height: 280px; /* Prevent carousel from being distorted if for some reason image doesn't load */
   }
   .carousel .item img{
       margin: 0 auto; /* Align slide image horizontally center */
   }
   .bs-example{
      margin: 20px;
   }
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
<script>
var httpRequest = null;

function getXMLHttpRequest(){
    var httpRequest = null;

    if(window.ActiveXObject){
        try{
            httpRequest = new ActiveXObject("Msxml2.XMLHTTP");    
        } catch(e) {
            try{
                httpRequest = new ActiveXObject("Microsoft.XMLHTTP");
            } catch (e2) { httpRequest = null; }
        }
    }
    else if(window.XMLHttpRequest){
        httpRequest = new window.XMLHttpRequest();
    }
    return httpRequest;    
}

// 댓글 등록
function writeComment()
{
    var form = document.getElementById("commentform");
    
    var reviewNo = ${review.reviewNo};
    var commentWriter = form.commentWriter.value;
    var contents = form.commentContent.value;
    
    if(!content)
    {
        alert("내용을 입력하세요.");
        return false;
    }
    else
    {    
        var param="reviewNo="+reviewNo+"&commentWriter="+commentWriter+"&contents="+contents;
            
        httpRequest = getXMLHttpRequest();
        httpRequest.onreadystatechange = checkFunc;
        httpRequest.open("POST", "CommentWriteAction.co", true);    
        httpRequest.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded;charset=EUC-KR'); 
        httpRequest.send(param);
    }
}

function checkFunc(){
    if(httpRequest.readyState == 4){
        // 결과값을 가져온다.
        var resultText = httpRequest.responseText;
        if(resultText == 1){ 
            document.location.reload(); // 상세보기 창 새로고침
        }
    }
}


출처: http://all-record.tistory.com/143 [세상의 모든 기록]
</script>

   
</head>
<%@include file="/frame/mpheader.jsp"%>

<!-------------------------------------------후기 뷰 페이지------------------------------------- -->
<body>
<div class="wrapper row3">
	<main class="hoc container clear"> <!-- main body -->
		<div class="content">
<!-- -----------------------------------------------전체틀----------------------------------------------------------- -->     
			<div style="width:66%; height:100px; float:left;">
    			<h1>BANDNAME</h1> 
			</div>
			<div style="width:34%; height:100px; float:left; align:center;">
				<br>
	         	<a class="faicon-facebook" href="#"><i class="fa fa-facebook"></i></a>
	        	<a class="faicon-twitter" href="#"><i class="fa fa-twitter"></i></a>
	            <a class="faicon-instagram" href="#"><i class="fa fa-instagram"></i></a>
	            <a class="faicon-youtube" href="#"><i class="fa fa-youtube"></i></a>
			</div>              
<!-- -----------------------------------가수 사진-------------------------------------------------------------- -->    
			<div id="intro" class="nospace clear" align="left" style="display:inline;">  
				<div id="profile" class="two_third first" style="margin-bottom: 60px;" style="opacity:1;">
				   <img src="../picup/ci_logo01.gif" style="width:100%; height:100%">
				</div>
<!-- ---------------------------------------좋아요---------------------------------------------------------- -->			       
				<div class="one_third" style="margin-bottom:60px; align:center;">
				   <h3>4.5</h3> ${review.count}명의 리스너가 좋아합니다<br>          
				   <span style="cursor:pointer"><%@include file="icon.jsp"%></span>
				   <button id="score" class="btn btn-default" value="">점수주기</button>
				</div>    
<!-- ------------------------------------------------------------------------------------------ -->				  
			</div>
   			<hr>
			<div id="musician info" class="content"> 
			      <h3>공연후기</h3>
			     <span>${reviw.contents}</span> 
			</div>
			<hr>
			<div id="Schedule" style="margin-top:20px;">
			<h3>공연장소</h3>
			  ${review.location}
			</div>
			<hr>
			<c:if test="${review.url ne null}">
			<h3>VIDEO</h3>
			 <div class="container" align="center" style="width:550px; height:300px; padding:0 0 0 0;">
				 <div class="embed-responsive embed-responsive-16by9">
				 	<iframe class="embed-responsive-item" src="${review.url}" width="320" height="180" frameborder="0"></iframe>
				 </div>
			</div>
			<hr>
			</c:if>
<!-- --------------------------------------------------------------------------------------- -->	
			<div id="Board">
			      <div id="comments">
			        <h3>댓글</h3>
			        <ul>
<!--------------------------------------------------------- 댓글보기  foreach로 돌려줌-------------- -->
			          <li>            
			              <div>
			                <address>
			                By <a href="#">${comment.member_id}</a>
			                </address>
			                <time datetime="2045-04-06T08:15+00:00">${comment.write_date}</time>
			              </div>
			              <div class="comcont">
			                <p>${comment.contents}</p>
			              </div>            
			          </li>
<!--------------------------------------------------------- 댓글보기  foreach로 돌려줌-------------- -->
			        </ul>
			<hr>
<!-- ----------------------------------------------------------댓글쓰기------------------------------------ -->
			        <h3>댓글 쓰기</h3>
			        
			        <form name="commentform" id="commentform" method="post" action="${root}/community?act=writecomment">
						<input type="hidden" name="no" value="${review.reviewNo}">
							
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
						<span style="float:right;"><input type="button" onclick="javascript:writeComment();" value="작성"></span>
						</div>
					</form>
    
<!-- ----------------------------------------------------------댓글쓰기------------------------------------ -->

				</div>
			</div>	
<!-- -----------------------------------------------전체틀----------------------------------------------------------- -->
		</div>    
	</main><!-- container -->
</div><!-- wrapper row3 -->
<!------------------------------------------- footer------------------------------------- -->
<%@include file="/frame/mpfooter.jsp"%>