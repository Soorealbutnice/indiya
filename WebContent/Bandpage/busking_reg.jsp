<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/frame/mpheader.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<script type="text/javascript">
function registPerformance() {
   alert("등록뷰 자바스크립트 도착");
   document.getElementById("act").value="registPerformance";
    document.regiform.action = "${root}/musician";
    $("#regiform").submit(); 
}

function initMap() {
    var map = new google.maps.Map(document.getElementById('map'), {
      zoom: 16,
      center: {lat: 37.566535, lng: 126.97796919999996}
    });
    var geocoder = new google.maps.Geocoder();
    var myLatlng = new google.maps.LatLng(37.51619821, 127.1041016); // y, x좌표값 : 여기에 주소자료롤 받아 입력해야 함.
    
    document.getElementById('submit').addEventListener('click', function() {
      geocodeAddress(geocoder, map);
   });
 }
  
  function geocodeAddress(geocoder, resultsMap) {
    var address = document.getElementById('address').value;
    geocoder.geocode({'address': address}, function(results, status) {
      if (status === google.maps.GeocoderStatus.OK) {
        resultsMap.setCenter(results[0].geometry.location);
        var marker = new google.maps.Marker({
          map: resultsMap,
          position: results[0].geometry.location
        });

      /*   document.getElementById('location_code').innerHTML = results[0].geometry.location; */
      } else {
        alert('Geocode was not successful for the following reason: ' + status);
      }
    });
  }
   
   function goPopup() {
      var pop = window.open("bandJusoPopup.jsp", "pop",
            "width=570,height=420, scrollbars=yes, resizable=yes");
   }

   function jusoCallBack(roadAddrPart1) {
      document.regiform.roadAddrPart1.value = roadAddrPart1;
   }
   
   
   var cnt = 1;
   
   function addMovieForm(){
         var MovieForm = document.getElementById("rewardHiddenForm");
         var cloneForm = regiform.cloneNode(true);
         cloneForm.setAttribute("class", "reward" + cnt);
         cloneForm.setAttribute("id", "reward" + cnt);
         document.getElementById("rewardList").appendChild(cloneForm);
         
         $("#reward"+cnt+" [name='reward_pic']").attr("name", $("#reward"+cnt+" [name='reward_pic']").attr("name")+cnt);
         $("#reward"+cnt+" [name='reward_title']").attr("name", $("#reward"+cnt+" [name='reward_title']").attr("name")+cnt);
         $("#reward"+cnt+" [name='reward_amount']").attr("name", $("#reward"+cnt+" [name='reward_amount']").attr("name")+cnt);
         $("#reward"+cnt+" [name='reward_contents']").attr("name", $("#reward"+cnt+" [name='reward_contents']").attr("name")+cnt); 
         cnt++;
      }

      function removeRewardForm(object){
         var removeNode = object.parentNode.parentNode;
         document.getElementById("rewardList").removeChild(removeNode);
      }
</script>
<head>
<title>INDIYA</title>

<meta name="viewport"
   content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="${root}/layout/styles/layout.css" rel="stylesheet"
   type="text/css" media="all">
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<style type="text/css">
.fadding-photo {
   opacity: 0.4;
}

.fadding-photo:hover {
   opacity: 1;
}

a {
   color: #A0A0A0;
}

i {
   margin: 10px 10px 0px 1px;
}

h1, h2, h3, h4, h5, h6, .heading {
   font-family: Georgia, "Times New Roman", Times, serif;
}

img {
   width: 200px;
   height: 150px;
}

<!--
4
: 3-->
         .image_text {
   position: relative;
}

.text_on {
   position: absolute;
   color: #FFFFFF;
   top: 80px;
   left: 60px;
   width: 100px;
   opacity: 1;
}

#modal {
   display: none;
   background-color: #FFFFFF;
   position: absolute;
   top: 300px;
   left: 200px;
   padding: 10px;
   border: 2px solid #E2E2E2;
   z-Index: 9999
}
</style>
</head>
<body>

   <!------------------------------------------- header------------------------------------- -->

   <!-- - 레프트 바 -->
   <main class="hoc container clear" style="padding-top: 50px;"> <!-- main body -->
   <div class="sidebar one_quarter first">
      <!-- ################################################################################################ -->

      <nav class="sdb_holder"> <!-- 왼쪽 메뉴 --> <br>
      <br>
      <br>
      <br>
      <br>
      <br>
      <br>
      <ul>
         <li><a href="${root}/Mypage/mypagemodify.jsp">정보수정</a></li>
         <li><a href="${root}/Mypage/mypageschedule.jsp">일정관리</a></li>
         <li><a href="${root}/Mypage/mypage.jsp">찜목록</a></li>
         <li><a href="${root}/funding/">펀딩목록확인</a></li>
         <li><a href="${root}/Mypage/musicianchange.jsp">뮤지션 전환</a></li>
         <li><br /></li>
         <li><br /></li>
         <li><a href="performanceregister.jsp">공연등록</a></li>
         <li><a href="banner">공연일정관리</a></li>
         <li><a href="banner">홈피수정</a></li>
      </ul>
      </nav>
   </div>

   <!-- ############################################ 본문  ############################################# -->
   <div class="content three_quarter">
      <!-- 메인 내용################################################## -->

      <div class="hoc container clear"
         style="padding-top: 0px; width: 703px;">

         <h1
            style="font-family: Nanum Gothic; font-size: 2.5em; font-weight: bold">공연 등록</h1>
         <hr>
         <!-- 이미지 -->
         <form  name="regiform" action="" method="post" id="form">
         
            <input type="hidden" name="act" id="act" value="registPerformance">
            <div class="row">
               <div class="thumbnail">
                  <div class="caption">이미지 등록</div>
                  <div style="height: 200px; width: 800px;">
                     <img id="image_section" src="#" alt="" />
                  </div>
                  <input type="file" name="file" id="file" value="">
               </div>

               <!-- 펀딩 상세 본문 내용 시작 -->
               <div class="services clear">
                  <h2>Title</h2>
                  <!--          <input type="text" class="form-control" name="title" id="title" value="" size="99" required><br> -->
                  <input type="text" class="form-control" name="title" id="title"
                     value="" size="99"><br>

                  <h2>Content</h2>
                  <!--          <textarea class="form-control" name="contents" id="contents" rows="50" cols="100" required></textarea> -->
                  <textarea class="form-control" name="contents" id="summernote"
                     rows="10" cols="30"></textarea>
                  </article>
               </div>
               <!-- 펀딩 상세 본문 내용 끝 -->


               <!-- 리워드 영역 시작 -->

               <div class="fl_right"></div>
               <br>
               <br>
               <br>
               <!-- ####################################################################################### -->
               
                  <h2>공연 상세 정보</h2>
                  <br>
                  <ul>
                     <li class="services clear">

                        <div class="one_quarter first"></div>
                        <div class="three_quarter">
                           <div class="input-group">
                              <span class="input-group-addon" id="">공연날짜:&nbsp;&nbsp;</span>
                              <!--                   <input type="text" class="input-group form-control" name="rtitle" id="rtitle" value="" required> -->
                              <input type="date" class="input-group form-control"
                                 name="date" id="date" value="">
                           </div>
                           <br>
                           
                           <div class="input-group">
                              <span class="input-group-addon">공연장소:&nbsp;&nbsp;&nbsp;</span>
                              
                              <input class="input-group form-control" id="address" type="textbox" value="" name="roadAddrPart1" onclick="javascript:goPopup();">
                                                      
                                 <span class="input-group-addon">
                                 <input id="submit" type="button" value="등록하기">
                                 </span>                                 

                           </div>
                           <br>
                           <center>
                              <div id="map" style="width: 500px; height: 300px;"></div>
                           </center>
                        
                           <!-- <div class="input-group">
                  <span class="input-group-addon" id="">Content : </span>
                  <textarea class="form-control" name="rcontents" id="rcontents" value="" rows="5" cols="" required></textarea>
                  <textarea class="form-control" name="reward_contents0" id="reward_contents0" value="" rows="5" cols="" ></textarea>
                  <input type="text" class="input-group" name="" id="" value="" required>
               </div><br> -->
                        </div>

                        <p class="comcont">&nbsp;</p>
                        <!-- 하단 띠 위치 조절용  -->
                     </li>
                  </ul>
                  <br>
                  <br>
              <div id="rewardList">
               <span style="float:right"><input class="btn" type="button" onclick="javascript:addMovieForm();" value="+"></span>
                  <span><h4>공연 관련 영상</h4></span>
                  <hr>
                  <ul class="group services" style="margin-top: 50px">
                     <li class="one_third first"><iframe width="100%"
                           height=width src="https://www.youtube.com/embed/uXMuWi0dUBc"
                           frameborder="0" allow="autoplay; encrypted-media"
                           allowfullscreen></iframe></li>
                     <li class="one_third"><iframe width="100%" height=width
                           src="https://www.youtube.com/embed/PjYUODTUsvc" frameborder="0"
                           allow="autoplay; encrypted-media" allowfullscreen></iframe></li>
                     <li class="one_third"><iframe width="100%" height=width
                           src="https://www.youtube.com/embed/cUFVR5sgbt0" frameborder="0"
                           allow="autoplay; encrypted-media" allowfullscreen></iframe></li>
                  </ul>
            </div>
         </div>
            <!-- 메인 영역 끝 -->
            <div>
               <input type="button" value="공연 등록하기" onclick="javascript:registPerformance();">
            </div>
            
         </form>
   
         <div class="clear"></div>
      </div>
   <!-- -- -- -- -- -- -- -- -- -- -- -- -- 영상반복 파트 -- -- -- -- -- -- -- -- -- -- -- -- -- -- -->
   <!--    <div id="rewardHiddenForm" class="hidden">
        <div class="fl_right">
            <input class="btn" type="button" onclick="javascript:removeRewardForm(this);" value="&nbsp;-&nbsp;">
      </div>
      <ul>
          <li class="services clear">
            <article id="" class="">
                     <ul class="group services" style="margin-top: 50px">
                     <li class="one_third first"><iframe width="100%"
                           height=width src="https://www.youtube.com/embed/uXMuWi0dUBc"
                           frameborder="0" allow="autoplay; encrypted-media"
                           allowfullscreen></iframe></li>
                     <li class="one_third"><iframe width="100%" height=width
                           src="https://www.youtube.com/embed/PjYUODTUsvc" frameborder="0"
                           allow="autoplay; encrypted-media" allowfullscreen></iframe></li>
                     <li class="one_third"><iframe width="100%" height=width
                           src="https://www.youtube.com/embed/cUFVR5sgbt0" frameborder="0"
                           allow="autoplay; encrypted-media" allowfullscreen></iframe></li>
                  </ul>
           

            <p class="comcont">&nbsp;</p>하단 띠 위치 조절용 
            </article>
          </li>
      </ul>
      </div> -->
   </main>

 
   <!------------------------------------------- footer------------------------------------- -->
   <%@include file="/frame/mpfooter.jsp"%>
   <script src="${root}/layout/scripts/jquery.min.js"></script>
   <script
  src="https://maps.googleapis.com/maps/api/js?callback=initMap&signed_in=true&key=AIzaSyASO-TtcmYDX1eNZRtTawpGPIa_te-uhN8" async defer>
</script>
   
   <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
   <script>
      function readURL(input) {

         if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function(e) {
               $('#image_section').attr('src', e.target.result);
               $('#image_section').attr('style', "height:200px;width:680px;");
            }

            reader.readAsDataURL(input.files[0]);
         }
      }

      $("#file").change(function() {
         readURL(this);
      });
      
   </script>
   