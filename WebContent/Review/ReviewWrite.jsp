<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@include file="/frame/mpheader.jsp"%>
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
function writeArticle(){
	alert('눌리긴 함?');
   if(document.writeForm.bandname.value == ""){
      return;
   }else if(document.writeForm.summernote.value == ""){
      return;
   }else{
      document.writeForm.action = "${root}/review?act=writeReview&";
      document.writeForm.submit();
   }
}
</script>  
   
</head>


<!-------------------------------------------후기 뷰 페이지------------------------------------- -->
<body>
<div class="wrapper row3">
	<main class="hoc container clear"> <!-- main body -->
		<div class="content">
<!-- -----------------------------------------------전체틀----------------------------------------------------------- -->     
		<h1 style="font-family: Nanum Gothic; font-size: 2.5em; font-weight: bold">후기 등록</h1>
        <hr style="border-top: 2px solid #bbb; border-bottom: 1px solid #fff;">
		<div>       
			<form id="writeForm" name="writeForm" method="post" enctype="multipart/form-data">
			   <input type="hidden" name="pg" value="1">
			   <input type="hidden" name="key" value="">
	
			   <div>
<!------------------------------------------ 사진등록 ------------------------------------>
		          <div class="thumbnail" style="text-align:center;">
	                  <div style="height: 300px; width: auto;">
	                     <img id="image_section" src="#" alt="" >
	                  </div>
                  	  <input type="file" name="file" id="file">
                  </div>
<!------------------------------------------ 사진등록 ------------------------------------>                
<!------------------------------------------ 가수이름&공연후기 ------------------------------------>		
				  <div class="services clear">
	                  <h2>가수이름</h2>
	                  <input type="text" class="form-control" name="bandname" id="bandname" value="" size="99"><br>
	
	                  <h2>공연후기</h2>
	                  <textarea class="form-control" name="contents" id="summernote" rows="10" cols="30"></textarea>
	             
	              </div><br><br>
<!------------------------------------------ 주소검색 ------------------------------------>   				   
			      <div>                  
			            <div class="input-group">
					      <span class="input-group-btn">
					        <button class="btn btn-default" type="button" onclick="location.href=" style="height:34px">주소검색</button>
					      </span>
					      <input type="text" id="location" name="location" required class="form-control" placeholder="버스킹 위치">
					    </div>
			      </div><br><br> 
<!------------------------------------------ 유튜브 ------------------------------------>   				      
			      <div>     
			      		<span style="float:right"><input class="btn" type="button" onclick="javascript:addMovieForm();" value="+"></span>             
			            <div class="input-group">
					      <span class="input-group-btn">
					        <button class="btn btn-default" type="button" onclick="location.href=" style="height:34px;width:80px">URL</button>
					      </span>
					      <input type="text" id="youtube" name="youtube" required class="form-control" placeholder="공연 영상 URL">
					    </div>
			      </div>
			       <hr>  
				   <br>
			   </div>
<!------------------------------------------ 등록버튼 ------------------------------------>   
				<div>
					<p class="text-center">
					<a class="btn btn-primary btn-lg" href="${root}/review?act=reviewlist">목록보기</a>&nbsp;&nbsp;&nbsp;
					<a class="btn btn-primary btn-lg" href="javascript:writeArticle();">후기작성</a>
					</p>
				</div>
			</form>
   		</div>
<!-- -----------------------------------------------전체틀----------------------------------------------------------- -->
		</div>    
	</main><!-- container -->
</div><!-- wrapper row3 -->
<!------------------------------------------- footer------------------------------------- -->
 <!-- JAVASCRIPTS -->
 <%@include file="/frame/mpfooter.jsp"%>
<script src="/project/layout/scripts/jquery.min.js"></script>
<link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote-lite.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote-lite.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.10/lang/summernote-ko-KR.js"></script>
<script>
  $('#summernote').summernote({
    height: 500,
    lang : 'ko-KR'
  });
      
      
function readURL(input) {

    if (input.files && input.files[0]) {
       var reader = new FileReader();

       reader.onload = function(e) {
          $('#image_section').attr('src', e.target.result);
          if(document.getElementById("image_section"))
          $('#image_section').attr('style', "height:300px;width:auto;");
       }

       reader.readAsDataURL(input.files[0]);
    }
 }

 $("#file").change(function() {
    readURL(this);
 });
      
   </script>

