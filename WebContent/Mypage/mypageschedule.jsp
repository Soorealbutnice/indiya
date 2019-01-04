<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file="/frame/mpheader.jsp"%>
<section id="services" class="service-item">
   <%
      String act = request.getParameter("act");
      String id = request.getParameter("id");
      String pass = request.getParameter("pass");
      String email = (request.getParameter("email1") + "@" + request.getParameter("email2"));
   %>
   <script type="text/javascript">
      function initMap() {
         var markerArray = [];
         var directionsService = new google.maps.DirectionsService;
         var LatLng = new google.maps.LatLng(37.566535, 126.97796919999996);
         var mapOptions = {
            zoom : 16,
            mapTypeId : google.maps.MapTypeId.ROADMAP,
            center : LatLng
         }
         var map = new google.maps.Map(document.getElementById("map"),
               mapOptions);
         var directionsDisplay = new google.maps.DirectionsRenderer({
            map : map
         });
         var stepDisplay = new google.maps.InfoWindow;
         //directionsDisplay.setMap(map);
         var onChangeHandler = function() {
            calculateAndDisplayRoute(directionsDisplay, directionsService,
                  markerArray, stepDisplay, map);
         };
         document.getElementById('submit').addEventListener('click',
               onChangeHandler);
      }

      function calculateAndDisplayRoute(directionsDisplay, directionsService,
            markerArray, stepDisplay, map) {
         // First, remove any existing markers from the map.
         for (var i = 0; i < markerArray.length; i++) {
            markerArray[i].setMap(null);
         }

         // Retrieve the start and end locations and create a DirectionsRequest using
         // WALKING directions.
         directionsService.route({
            origin : document.getElementById('start').value,
            destination : document.getElementById('end').value,
            travelMode : 'TRANSIT'
         }, function(response, status) {
            // Route the directions and pass the response to a function to create
            // markers for each step.
            if (status === 'OK') {
               directionsDisplay.setDirections(response);
               showSteps(response, markerArray, stepDisplay, map);
            } else {
               window.alert('Directions request failed due to ' + status);
            }
         });
      }

      function showSteps(directionResult, markerArray, stepDisplay, map) {
         // For each step, place a marker, and add the text to the marker's infowindow.
         // Also attach the marker to an array so we can keep track of it and remove it
         // when calculating new routes.
         var myRoute = directionResult.routes[0].legs[0];
         for (var i = 0; i < myRoute.steps.length; i++) {
            var marker = markerArray[i] = markerArray[i]
                  || new google.maps.Marker;
            marker.setMap(map);
            marker.setPosition(myRoute.steps[i].start_location);
            attachInstructionText(stepDisplay, marker,
                  myRoute.steps[i].instructions, map);
         }
      }

      function attachInstructionText(stepDisplay, marker, text, map) {
         google.maps.event.addListener(marker, 'click', function() {
            // Open an info window when the marker is clicked on, containing the text
            // of the step.
            stepDisplay.setContent(text);
            stepDisplay.open(map, marker);
         });
      }
      function goPopup() {
         var pop = window.open("bandJusoPopup.jsp", "pop",
               "width=570,height=420, scrollbars=yes, resizable=yes");
      }

      function jusoCallBack(roadAddrPart1, roadAddrPart2) {
         document.supermap.roadAddrPart1.value = roadAddrPart1;
         document.supermap.roadAddrPart2.value = roadAddrPart2;
      }
   </script>
   <section id="services" class="service-item">
      <!-- - 여기서 작업 -->
      <main class="hoc container clear"> <!-- main body --> <!-- ################################################################################################ -->
      <div class="sidebar one_quarter first">
         <!-- ################################################################################################ -->

         <nav class="sdb_holder">
            <!-- 왼쪽 메뉴 -->
            <div class="card" style="width: 200px">
               <div class="thumbnail">
                  <div style="height: 200px; width: 180px;">
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
               <li><br /></li>
               <li><br /></li>
               <c:if test="${chk == 'SUCC'}">
                  <li><a href="performanceregister.jsp">공연등록</a></li>
                  <li><a href="banner">공연일정관리</a></li>
                  <li><a href="banner">홈피수정</a></li>
               </c:if>
            </ul>
         </nav>
         <div class="sdb_holder">
            <!-- 왼쪽 사이드바 바로밑 내용 
            <h6>Lorem ipsum dolor</h6>
            <address>
               Full Name<br> Address Line 1<br> Address Line 2<br>
               Town/City<br> Postcode/Zip<br> <br> Tel: xxxx xxxx
               xxxxxx<br> Email: <a href="#">contact@domain.com</a>
            </address>-->
         </div>
         <div class="sdb_holder">
            <!-- 왼쪽 사이드바 바로밑밑 내용 -->


         </div>
         
         <!-- ################################################################################################ -->
      </div>
      <!-- ################################################################################################ -->
      <!-- ################################################################################################ -->
      <div class="content three_quarter">
         <!-- 메인 내용################################################## -->

         <h1
            style="font-family: Nanum Gothic; font-size: 2.5em; font-weight: bold">Schedule</h1>
         <hr>
         <!--<form class="form-search">
            <a class="btn btn-mini" href="#"
               style="float: right; WIDTH: 80pt; HEIGHT: 25pt"><i
               class="icon-search"></i>search</a> <input type="text"
               class="input-small search-query"
               style="float: right; WIDTH: 120pt; HEIGHT: 25pt">
         </form> -->
         <!-- #################지도############################## -->
         <form action="" method="post" id="supermap" name="supermap">
            <body>

               <!-- <input type="button" name="location" id="location" 
            value="위치검색" onclick="javascript:goPopup();"><input type="text" name="roadAddrPart1"
                     id="roadAddrPart1" value="" size="100" readonly="readonly"> -->
               <div>
                  <input id="start" type="textbox" name="roadAddrPart2" value="서울"
                     onclick="javascript:goPopup();"> 
                     <input id="end" type="textbox" name="roadAddrPart1" value="인천"
                     onclick="javascript:goPopup();"> <input id="submit"
                     type="button" value="경로찾기">

                  <div id="map" style="width: 300px; height: 300px;"></div>
            </div>

                  <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyASO-TtcmYDX1eNZRtTawpGPIa_te-uhN8&signed_in=true&callback=initMap"></script>
                  <!-- 키값 -->
            </body>
         </form>
</div>

         <!-- ################################################################################################ -->


         <!-- ################################################################################################ -->
         <!-- / main body -->
         </main>
         <div class="clear"></div>
         <!--/#services-->
   </section>
   <%@include file="/frame/mpfooter.jsp"%>
   <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
   <script>
      function readURL(input) {

         if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function(e) {
               $('#image_section').attr('src', e.target.result);
               $('#image_section').attr('style',
                     "height:200px;width:180px;");
            }

            reader.readAsDataURL(input.files[0]);
         }
      }

      $("#file").change(function() {
         readURL(this);
      });
   </script>