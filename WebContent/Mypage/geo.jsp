<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <title>INDIYA</title>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
    <meta charset="utf-8">
   <script> 
    function initMap() {
       var markerArray = [];
      var directionsService = new google.maps.DirectionsService;
      var LatLng = new google.maps.LatLng(37.566535, 126.97796919999996);
      var mapOptions = {
        zoom:16,
        mapTypeId: google.maps.MapTypeId.ROADMAP,
        center: LatLng
      }
      var map = new google.maps.Map(document.getElementById("map"), mapOptions);
      var directionsDisplay = new google.maps.DirectionsRenderer({map: map});
      var stepDisplay = new google.maps.InfoWindow;
      //directionsDisplay.setMap(map);
      var onChangeHandler = function() {
          calculateAndDisplayRoute(
              directionsDisplay, directionsService, markerArray, stepDisplay, map);
        };
        document.getElementById('submit').addEventListener('click', onChangeHandler);
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
            origin: document.getElementById('start').value,
            destination: document.getElementById('end').value,
            travelMode: 'TRANSIT'
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
          var marker = markerArray[i] = markerArray[i] || new google.maps.Marker;
          marker.setMap(map);
          marker.setPosition(myRoute.steps[i].start_location);
          attachInstructionText(
              stepDisplay, marker, myRoute.steps[i].instructions, map);
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

    
    
    
    //google.maps.event.addDomListener(window, 'load', initMap);
 
    </script>  
  </head>
 <form action="" method="post" id="supermap" name="supermap">
  <body>
  
  <!-- <input type="button" name="location" id="location" 
            value="위치검색" onclick="javascript:goPopup();"><input type="text" name="roadAddrPart1"
                     id="roadAddrPart1" value="" size="100" readonly="readonly"> -->
    <div>
    <input id="start" type="textbox" name="roadAddrPart2" value="서울" onclick="javascript:goPopup();">
      <input id="end" type="textbox" name="roadAddrPart1" value="인천" onclick="javascript:goPopup();">
            
      <input id="submit" type="button" value="경로찾기">

    <div id="map" style="width:300px; height:300px;"></div>


    <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyASO-TtcmYDX1eNZRtTawpGPIa_te-uhN8&signed_in=true&callback=initMap"></script>
    </script><!-- 키값 -->
  </body>
  </form>
</html>