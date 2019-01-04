<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     
    <%
    String act = request.getParameter("act");
   String id = request.getParameter("id");
   String pass = request.getParameter("pass");
    String email = (request.getParameter("email1") + "@" + request.getParameter("email2"));
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
   <head>
   <title>INDIYA</title>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
   <link href="${root}/layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
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
<!------------------------------------------- header------------------------------------- -->

<body onload="initialize()"> <!--구글 맵 API -->
<!--네이버 지오코딩 https://developers.naver.com/apps/#/myapps/4yMwZsBHPQSwQFsvsaIO/overview -->
<!------------------------------------------- 사이드바------------------------------------- -->
<div>
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
                     Email: <a href="#"><%=email%></a>
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
      
<!------------------------------------------- 바디 시작------------------------------------- -->      

   <div class="three_quarter">
    <div id="intro" class="nospace clear" align="left" style="display:inline;">

    <h1>BUSKING TITLE</h1>   
     
    <div id="profile" class="two_third first" style="opacity:1; margin-bottom:50px">
    <img src="../images/demo/gallery/busking.jpg" style="width:400px; height:300px; opacity:1.0;">
    </div>
       <div align="center" class="one_third">
       <div>
      <h4>찜하기</h4>
      <a><img id="dips" src="${root}/images/filled_star_1.png" onclick="javascript:dips();" style="width:30px; height:30px; cursor:pointer;"></a>
       </div>
       </div>
       
       <div align="left" >
       <ul style="margin-bottom:50px;">
       <li>밴드명 : 밴드명을 받아옵니다.</li>
       <li>공연일정 : <input type="date" name="date" id="date"></li>  
       <li><span>공연장소 :<input type="text" name="replace" id="replace" onclick="javascript:goPopup();"></span></li>
       </ul>
       </div>
    </div>
           
   <hr>

   <h3>BUSKING INFO</h3>
   <div id="BUSKING INFO">
   <div class="content">
        <span>
        공연 소개를 합니다.매년 7~8월에 인천광역시에서 열리는 록 페스티벌로 국내에서는 규모가 꽤 큰 록 페스티벌이다. 인천광역시가 주최하고 예스컴이 주관한다. 펜타포트란 5개의 항구라는 뜻으로 인천공항, 인천항, 정보포트, 비즈니스포트, 레저포트를 말하며 인천광역시의 도시발전전략이다. 본래 1999년에 "트라이포트 페스티벌"이라는 이름으로 시작했다. 딥 퍼플, RATM, 프로디지, 드림시어터 들의 어마어마한 라인업이었으나 그 해의 가장 많은 비가 내렸고, 지금과 같은 트러스가 있는 무대가 아니었기 때문에 안전상 취소되었다. 그 뒤 2006년 1회를 시작으로 12회째 열리고 있다.
        </span> 
   </div>   
   </div>
          
   <hr>

    <div id="location" style="width:100%; height:400px;" align="left" style="margin-top:50px;">
    
    <h3>LOCATION</h3> 
      <div id="map_canvas" class="one_half first" align="center" style="height:300px;">
      </div>    
       <div align="center" class="one_half" style="height:300px;">
         <nav>
           <ul>
          <li>밴드명 : 밴드명을 받아옵니다.</li>
          <li>공연일정 : 공연일정을 받아옵니다.</li>
          <li>공연장소 : <input type="text" name="roadAddrPart1"
                     id="roadAddrPart1" value="" size="100" onclick="javascript:goPopup();"></li>
         </nav> 
       </div>
   </div>     

    <div id="video" class="hoc">
    
   <h3>VIDEO</h3>
      <ul class="group services"  style="margin-top:50px">

         <li class="one_third first">
         <iframe width="100%" height=width src="https://www.youtube.com/embed/uXMuWi0dUBc" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
         </li>
         <li class="one_third">
         <iframe width="100%" height=width src="https://www.youtube.com/embed/PjYUODTUsvc" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
         </li>
         <li class="one_third">
         <iframe width="100%" height=width src="https://www.youtube.com/embed/cUFVR5sgbt0" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
         </li>
      </ul>



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
   </div>       
    </div>           
   <hr>



   </div>    
    </div><!-- container -->
</div>
</body>
<!------------------------------------------- footer------------------------------------- -->
<%@include file="/frame/mpfooter.jsp"%>
<!--구글 맵 API, key 발급-->
<script type="text/javascript" src="http://maps.google.com/maps/api/js?key=AIzaSyASO-TtcmYDX1eNZRtTawpGPIa_te-uhN8&language=ko"></script>
<script type="text/javascript"> 
  function initialize() { 
  var myLatlng = new google.maps.LatLng(37.51619821, 127.1041016); // y, x좌표값 : 여기에 주소자료롤 받아 입력해야 함.
  var mapOptions = { 
        zoom: 15, 
        center: myLatlng, 
        mapTypeId: google.maps.MapTypeId.ROADMAP 
  } 
 
  var map = new google.maps.Map(document.getElementById('map_canvas'), mapOptions);
  var marker = new google.maps.Marker({ 
            position: myLatlng, 
            map: map, 
            title: "회사이름" 
  }); 
  var infowindow = new google.maps.InfoWindow( 
          { 
            content: "<h1>회사이름</h1>", 
            maxWidth: 300 
          } 
  ); 

  google.maps.event.addListener(marker, 'click', function() { 
  infowindow.open(map, marker); 
  }); 
  } 

 function dips(){

    if (document.getElementById("dips").src.match("${root}/images/filled_star_1.png")){
      document.getElementById("dips").src = "${root}/images/blank_star_1.png";
    } else if (document.getElementById("dips").src.match("${root}/images/blank_star_1.png")){
      document.getElementById("dips").src = "${root}/images/filled_star_1.png";
      
    }
 }
 
 function goPopup() {
     var pop = window.open("jusoPopup.jsp", "pop",
           "width=570,height=420, scrollbars=yes, resizable=yes");
  }

  function jusoCallBack(roadAddrPart1) {
     document.joinform.roadAddrPart1.value = roadAddrPart1;
  }
  
 </script> 
</html>