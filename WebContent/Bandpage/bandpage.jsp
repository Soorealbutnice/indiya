<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String act = request.getParameter("act");
   String id = request.getParameter("id");
   String pass = request.getParameter("pass");
    String email = (request.getParameter("email1") + "@" + request.getParameter("email2"));
    %>
   <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
   <link href="${root}/layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
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
   </head>
<%@include file="/frame/mpheader.jsp"%>

<!------------------------------------------- footer------------------------------------- -->
<body>
<div class="wrapper row3">
  <div class="hoc container clear" style="padding-top:50px" >
  
      <div class="sidebar one_quarter first">
            <nav class="sdb_holder">
            <!-- 왼쪽 메뉴 -->
            <div class="card" style="width: 200px">
               <!-- 이미지등록 -->
               <div class="thumbnail">
                            <div style="height:200px;width:180px;">
                                <img id="image_section" src="#" alt="" />
                            </div>
                                <input type="file" id="file" name="file"><br>
                        </div>
                     
               <div class="card-body">
                  <h4 class="card-title">오병호</h4>
                  <p class="card-text">뮤직 is my 라이프</p>
                  <address>
                     Email: <a href="#"></a>
                  </address>
               </div>
            </div>
            <ul>
                    <li><a href="${root}/Mypage/mypagemodify.jsp">정보수정</a></li>
                    <li><a href="${root}/Mypage/mypageschedule.jsp">일정관리</a></li>
                    <li><a href="${root}/Mypage/mypage.jsp">찜목록</a></li>
            
                    <li><a href="${root}/funding/">펀딩목록확인</a></li>
                    <li><a href="${root}/Mypage/musicianchange.jsp">뮤지션 전환</a></li>
                    <li><br/></li>
                    <li><br/></li>
                    <c:if test="${chk == 'SUCC'}">
                    <li><a href="performanceregister.jsp">공연등록</a></li>
                    <li><a href="banner">공연일정관리</a></li>
                    <li><a href="banner">홈피수정</a></li>
                    </c:if>
                </ul>
         </nav>
      </div>  
      <div class="three_quarter">
       
<div style="width:66%; height:100px; float:left;">
    <h1>BANDNAME</h1> 
</div>
<div style="width:34%; height:100px; float:left; align:center;">
<br>
          <a class="faicon-facebook" href="http://facebook.com"><i class="fa fa-facebook"></i></a>
          <a class="faicon-twitter" href="https://twitter.com"><i class="fa fa-twitter"></i></a>
          <a class="faicon-instagram" href="http://instagram.com/"><i class="fa fa-instagram"></i></a>
          <a class="faicon-youtube" href="https://youtube.com"><i class="fa fa-youtube"></i></a>
</div>              
    
    <div id="intro" class="nospace clear" align="left" style="display:inline;">  
       
       <div id="profile" class="two_third first" style="margin-bottom: 60px;" style="opacity:1;">
          <img src="${root}/images/radiohead.jpg" style="width:100%; height:100%">
       </div>
       
      <div class="one_third" style="margin-bottom:60px; align:center;">
         <h3>4.5</h3>
         123명의 리스너가 좋아합니다.<br>          
         <span style="cursor:pointer"><%@include file="icon.jsp"%></span>
         <button id="score" class="btn btn-default" value="">점수주기</button>
      </div>
      
   </div>
       
   <hr>

   <div id="Member info" style="display:inline;">
   <h3>Member Info</h3> 
    <ul class="group services" style="padding-top:10px; padding-left:0px; list-style:none;">
    
     <li class="one_quarter first" style="margin-bottom: 60px;">
    <a href="photoviewpage.html" target="_blank"><img class="fadding-photo" src="${root}/images/demo/gallery/Vocal.jpg" alt="사진을 클릭하시면 확대할 수 있습니다."></a>              
     <a class="faicon-facebook" href="http://facebook.com"><i class="fa fa-facebook"></i></a>
          <a class="faicon-twitter" href="https://twitter.com"><i class="fa fa-twitter"></i></a>
          <a class="faicon-instagram" href="http://instagram.com/"><i class="fa fa-instagram"></i></a>
          <a class="faicon-youtube" href="https://youtube.com"><i class="fa fa-youtube"></i></a>
    <div>포지션</div>
    <div>이름</div>
   <details>
    <summary id="summary" onmouseover="javascript:blue()">상세정보</summary>
    <p>여기에<br>
     상세정보가 옵니다.<br>
    </p>
   </details>
    </li>
   
     <li class="one_quarter" style="margin-bottom: 60px;">
    <a href="photoviewpage.html" target="_blank"><img class="fadding-photo" src="${root}/images/demo/gallery/Vocal.jpg" alt="사진을 클릭하시면 확대할 수 있습니다."></a>              
   <a class="faicon-facebook" href="http://facebook.com"><i class="fa fa-facebook"></i></a>
          <a class="faicon-twitter" href="https://twitter.com"><i class="fa fa-twitter"></i></a>
          <a class="faicon-instagram" href="http://instagram.com/"><i class="fa fa-instagram"></i></a>
          <a class="faicon-youtube" href="https://youtube.com"><i class="fa fa-youtube"></i></a>
    <div>포지션</div>
    <div>이름</div>
   <details>
    <summary id="summary" onmouseover="javascript:blue()">상세정보</summary>
    <p>여기에<br>
     상세정보가 옵니다.<br>
    </p>
   </details>  
    </li>
    
     <li class="one_quarter" style="margin-bottom: 60px;">
    <a href="photoviewpage.html" target="_blank"><img class="fadding-photo" src="${root}/images/demo/gallery/Vocal.jpg" alt="사진을 클릭하시면 확대할 수 있습니다."></a>              
   <a class="faicon-facebook" href="http://facebook.com"><i class="fa fa-facebook"></i></a>
          <a class="faicon-twitter" href="https://twitter.com"><i class="fa fa-twitter"></i></a>
          <a class="faicon-instagram" href="http://instagram.com/"><i class="fa fa-instagram"></i></a>
          <a class="faicon-youtube" href="https://youtube.com"><i class="fa fa-youtube"></i></a>
    <div>포지션</div>
    <div>이름</div>
   <details>
    <summary id="summary" onmouseover="javascript:blue()">상세정보</summary>
    <p>여기에<br>
     상세정보가 옵니다.<br>
    </p>
   </details>  
    </li>
    
     <li class="one_quarter" style="margin-bottom: 60px;">
    <a href="photoviewpage.html" target="_blank"><img class="fadding-photo" src="../images/demo/gallery/Vocal.jpg" alt="사진을 클릭하시면 확대할 수 있습니다."></a>              
   <a class="faicon-facebook" href="http://facebook.com"><i class="fa fa-facebook"></i></a>
          <a class="faicon-twitter" href="https://twitter.com"><i class="fa fa-twitter"></i></a>
          <a class="faicon-instagram" href="http://instagram.com/"><i class="fa fa-instagram"></i></a>
          <a class="faicon-youtube" href="https://youtube.com"><i class="fa fa-youtube"></i></a>
    <div>포지션</div>
    <div>이름</div>
   <details>
    <summary id="summary">상세정보</summary>
    <p>여기에<br>
     상세정보가 옵니다.<br>
    </p>
   </details>  
    </li>
   
    </ul>   

    <ul class="group services" style="padding-top:10px; padding-left:0px; list-style:none;">
    
     <li class="one_quarter first" style="margin-bottom: 60px;">
    <a href="photoviewpage.html" target="_blank"><img class="fadding-photo" src="${root}/images/demo/gallery/Vocal.jpg" alt="사진을 클릭하시면 확대할 수 있습니다."></a>              
    <a class="faicon-facebook" href="http://facebook.com"><i class="fa fa-facebook"></i></a>
          <a class="faicon-twitter" href="https://twitter.com"><i class="fa fa-twitter"></i></a>
          <a class="faicon-instagram" href="http://instagram.com/"><i class="fa fa-instagram"></i></a>
          <a class="faicon-youtube" href="https://youtube.com"><i class="fa fa-youtube"></i></a>
    <div>포지션</div>
    <div>이름</div>
   <details>
    <summary id="summary" onmouseover="javascript:blue()">상세정보</summary>
    <p>여기에<br>
     상세정보가 옵니다.<br>
    </p>
   </details>  
    </li>
   
     <li class="one_quarter" style="margin-bottom: 60px;">
    <a href="photoviewpage.html" target="_blank"><img class="fadding-photo" src="${root}/images/demo/gallery/Vocal.jpg" alt="사진을 클릭하시면 확대할 수 있습니다."></a>              
   <a class="faicon-facebook" href="http://facebook.com"><i class="fa fa-facebook"></i></a>
          <a class="faicon-twitter" href="https://twitter.com"><i class="fa fa-twitter"></i></a>
          <a class="faicon-instagram" href="http://instagram.com/"><i class="fa fa-instagram"></i></a>
          <a class="faicon-youtube" href="https://youtube.com"><i class="fa fa-youtube"></i></a>
    <div>포지션</div>
    <div>이름</div>
   <details>
    <summary id="summary" onmouseover="javascript:blue()">상세정보</summary>
    <p>여기에<br>
     상세정보가 옵니다.<br>
    </p>
   </details>  
    </li>
    
     <li class="one_quarter" style="margin-bottom: 60px;">
    <a href="photoviewpage.html" target="_blank"><img class="fadding-photo" src="${root}/images/demo/gallery/Vocal.jpg" alt="사진을 클릭하시면 확대할 수 있습니다."></a>              
    <a class="faicon-facebook" href="http://facebook.com"><i class="fa fa-facebook"></i></a>
          <a class="faicon-twitter" href="https://twitter.com"><i class="fa fa-twitter"></i></a>
          <a class="faicon-instagram" href="http://instagram.com/"><i class="fa fa-instagram"></i></a>
          <a class="faicon-youtube" href="https://youtube.com"><i class="fa fa-youtube"></i></a>
    <div>포지션</div>
    <div>이름</div>
   <details>
    <summary id="summary">상세정보</summary>
    <p>여기에<br>
     상세정보가 옵니다.<br>
    </p>
   </details>  
    </li>
    
     <li class="one_quarter" style="margin-bottom: 60px;">
    <a href="photoviewpage.html" target="_blank"><img class="fadding-photo" src="${root}/images/demo/gallery/Vocal.jpg" alt="사진을 클릭하시면 확대할 수 있습니다."></a>              
   <a class="faicon-facebook" href="http://facebook.com"><i class="fa fa-facebook"></i></a>
          <a class="faicon-twitter" href="https://twitter.com"><i class="fa fa-twitter"></i></a>
          <a class="faicon-instagram" href="http://instagram.com/"><i class="fa fa-instagram"></i></a>
          <a class="faicon-youtube" href="https://youtube.com"><i class="fa fa-youtube"></i></a>
    <div>포지션</div>
    <div>이름</div>
   <details>
    <summary id="summary">상세정보</summary>
    <p>여기에<br>
     상세정보가 옵니다.<br>
    </p>
   </details>  
    </li>
   
    </ul>   

   </div>    
             
   <hr>
   
<div id="musician info" class="content"> 
      <h3>MUSICIAN INFO</h3>
     <span>뮤지션에 대한 소개가 옵니다. 뮤지션에 대한 소개가 옵니다. 뮤지션에 대한 소개가 옵니다. 뮤지션에 대한 소개가 옵니다. 뮤지션에 대한 소개가 옵니다. 뮤지션에 대한 소개가 옵니다. 
     뮤지션에 대한 소개가 옵니다. 뮤지션에 대한 소개가 옵니다. 뮤지션에 대한 소개가 옵니다. 뮤지션에 대한 소개가 옵니다. 뮤지션에 대한 소개가 옵니다. 뮤지션에 대한 소개가 옵니다.</span> 
</div>

<hr>

<div id="Schedule" style="margin-top:20px;">
<h3>SCHEDULE</h3>
      <table id="table" style="width:100%; height:200px; text_align:center;" >
          <thead>
            <tr>
              <th>날짜</th>
              <th>시간</th>
              <th colspan="2">장소</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td><a href="#">2018.01.01.</a></td>
              <td>00:00 AM ~ 24:00 PM</td>
              <td colspan="2">서울시 구로구 구로동 디지털로 34길 43
              <button name="loc" class="btn btn-default">장소확인</button>
              </td>
            </tr>
            <tr>
              <td>Value 5</td>
              <td>Value 6</td>
              <td colspan="2"><a href="#">Value 8</a></td>
            </tr>
            <tr>
              <td>Value 9</td>
              <td>Value 10</td>
              <td colspan="2">Value 3</td>
            </tr>
         <tr>
            <td><a href="#">Value 5</a></td>
            <td>Value 2</td>
            <td>Value 2</td>
         </tr>
          </tbody>
        </table>
</div>
                
   <hr>

<h3>PHOTO</h3>
<div align="center">
<div class="w3-content" style="width:300px; height:300px;" align="center">
<div class="bs-example">
    <div id="myCarousel_photo" class="carousel slide" data-ride="carousel">
        <!-- Carousel indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel_photo" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel_photo" data-slide-to="1"></li>
            <li data-target="#myCarousel_photo" data-slide-to="2"></li>
        </ol>   
        <!-- Wrapper for carousel items -->
        <div class="carousel-inner">
            <div class="item active">
                <img style="width:300px; height:300px;" src="${root}/images/demo/gallery/Vocal.jpg" alt="First Slide">
            </div>
            <div class="item">
                <img style="width:300px; height:300px;" src="${root}/images/demo/gallery/Vocal.jpg" alt="Second Slide">
            </div>
            <div class="item">
                <img style="width:300px; height:300px;" src="${root}/images/demo/gallery/Vocal.jpg" alt="Third Slide">
            </div>
        </div>
        <!-- Carousel controls -->
        <a class="carousel-control left" href="#myCarousel_photo" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
        </a>
        <a class="carousel-control right" href="#myCarousel_photo" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
        </a>
    </div>
</div>
</div>
</div>


   <hr>


<h3>VIDEO</h3>

 <div class="container" align="center" style="width:550px; height:300px; padding:0 0 0 0;">
   <div id="myCarousel_video" class="carousel slide" data-ride="carousel" style="width:500px; height:250px; padding: 0 0 0 0;">
      <ol class="carousel-indicators">
         <li data-target="#myCarousel_video" data-slide-to="0" class=""></li>
         <li data-target="#myCarousel_video" data-slide-to="1" class=""></li>
         <li data-target="#myCarousel_video" data-slide-to="2" class="active"></li>
         <li data-target="#myCarousel_video" data-slide-to="3" class="active"></li>
      </ol>
      <div class="carousel-inner">
         <div class="item active">
            <div class="embed-responsive embed-responsive-16by9">
               <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/7t3xBqAWLaU?start=15" width="320" height="180" frameborder="0"></iframe>
            </div>
         </div>
         <div class="item">
            <div class="embed-responsive embed-responsive-16by9">
               <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/7t3xBqAWLaU?start=15" width="320" height="180" frameborder="0"></iframe>
            </div>
         </div>
         <div class="item">
            <div class="embed-responsive embed-responsive-16by9">
               <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/7t3xBqAWLaU?start=15" width="320" height="180" frameborder="0" ></iframe>
            </div>
         </div>
         <div class="item">
            <div class="embed-responsive embed-responsive-16by9">
               <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/7t3xBqAWLaU?start=15" width="320" height="180" frameborder="0"></iframe>
            </div>
         </div>
         <a class="left carousel-control" href="#myCarousel_video" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>
         <a class="right carousel-control" href="#myCarousel_video" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
      </div>
   </div>
</div>

   <hr>

<div id="music_div" style="margin-bottom:60px;">     
<h3>MUSIC</h3>
<div id="Music" align="left">
<audio controls="controls" >
<source src="${root}/mp3/Nirvana - Smells Like Teen Spirit.mp3" type="audio/mp3"    >
</audio>
<span>Nirvana - Smells Like Teen Spirit.mp3</span>
</div>

<div id="Music" align="left">    
<audio controls="controls" >
<source src="${root}/mp3/Radiohead - Exit Music (For A Film) lyrics.mp3" type="audio/mp3">
</audio>
<span>Radiohead - Exit Music (For A Film) lyrics.mp3</span>
</div>
    
<div id="Music" align="left">    
<audio controls="controls" >
<source src="${root}/mp3/Radiohead - Karma Police.mp3" type="audio/mp3">
</audio>
<span>Radiohead - Karma Police.mp3</span>
</div>
</div> 

<div style="margin-top:50px;" align="center">
<button id="pre" class="btn" style="margin-right:60px;">이전으로</button>
<button id="next" class="btn">다음으로</button>
</div>

   <hr>

<div id="Board">
      <div id="comments">
        <h3>COMMENT</h3>
        <ul>
          <li>            
              <div>
                <figure class="avatar"><img src="${root}/images/demo/avatar.png" style="width:32px; height:32px;" alt=""></figure>
                <address>
                By <a href="#">A Name</a>
                </address>
                <time datetime="2045-04-06T08:15+00:00">Friday, 6<sup>th</sup> April 2045 @08:15:00</time>
              </div>
              <div class="comcont">
                <p>This is an example of a comment made on a post. You can either edit the comment, delete the comment or reply to the comment. Use this as a place to respond to the post or to share what you are thinking.</p>
              </div>            
          </li>
          <li>
              <div>
                <figure class="avatar"><img src="${root}/images/demo/avatar.png" style="width:32px; height:32px;" alt=""></figure>
                <address>
                By <a href="#">A Name</a>
                </address>
                <time datetime="2045-04-06T08:15+00:00">Friday, 6<sup>th</sup> April 2045 @08:15:00</time>
              </div>
              <div class="comcont">
                <p>This is an example of a comment made on a post. You can either edit the comment, delete the comment or reply to the comment. Use this as a place to respond to the post or to share what you are thinking.</p>
              </div>            
          </li>
          <li>            
              <div>
                <figure class="avatar"><img src="${root}/images/demo/avatar.png" style="width:32px; height:32px;" alt=""></figure>
                <address>
                By <a href="#">A Name</a>
                </address>
                <time datetime="2045-04-06T08:15+00:00">Friday, 6<sup>th</sup> April 2045 @08:15:00</time>
              </div>
              <div class="comcont">
                <p>This is an example of a comment made on a post. You can either edit the comment, delete the comment or reply to the comment. Use this as a place to respond to the post or to share what you are thinking.</p>
              </div>            
          </li>
        </ul>
             
   <hr>

        <h3>WRITE A COMMENT</h3>
        <form action="#" method="post">
          <div class="one_third first">
            <label for="name">Name <span>*</span></label>
            <input type="text" name="name" id="name" value="" size="22" required>
          </div>
          <div class="one_third">
            <label for="email">Mail <span>*</span></label>
            <input type="email" name="email" id="email" value="" size="22" required>
          </div>
          <div class="one_third">
            <label for="url">Website</label>
            <input type="url" name="url" id="url" value="" size="22">
          </div>
          <div class="block clear">
            <label for="comment">Your Comment</label>
            <textarea name="comment" id="comment" cols="25" rows="10"></textarea>
          </div>
          <div align="right">
            <input type="submit" name="submit" class="btn btn-primary" style="margin-right:50px;" value="Submit Form">
            <input type="reset" name="reset" class="btn" value="Reset Form">
          </div>
        </form>
</div>

    



    </div>
   </div>    
    </div><!-- container -->
    </div><!-- wrapper row3 -->
<!------------------------------------------- footer------------------------------------- -->
<%@include file="/frame/mpfooter.jsp"%>