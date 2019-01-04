<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
var cnt = 0;
function count1(){

	 if (document.getElementById("1").src.match("../images/filled_star_1.png")){
		for(var i=1;i<6;i++){
			document.getElementById(i).src = "../images/blank_star_1.png";
		 	} 
		cnt = 0; 	
	 } else if (document.getElementById("1").src.match("../images/blank_star_1.png")){
		for(var i=1;i<2;i++){
			document.getElementById(i).src = "../images/filled_star_1.png";
			}		
		cnt = 1;
	 }		 
}

function count2(){
	 if (document.getElementById("2").src.match("../images/filled_star_1.png")){
		 for(var i=2;i<6;i++){
			document.getElementById(i).src = "../images/blank_star_1.png";
		 	}
		 cnt = 1;
	 } else if (document.getElementById("2").src.match("../images/blank_star_1.png")){
	     for(var i=1;i<3;i++){
			document.getElementById(i).src = "../images/filled_star_1.png";
			}	
	     cnt = 2;
	 }		 
}

function count3(){

	 if (document.getElementById("3").src.match("../images/filled_star_1.png")){
		for(var i=3;i<6;i++){
			document.getElementById(i).src = "../images/blank_star_1.png";
		 	}		
		cnt = 2;
		} else if (document.getElementById("3").src.match("../images/blank_star_1.png")){
		for(var i=1;i<4;i++){
			document.getElementById(i).src = "../images/filled_star_1.png";
			}
		cnt = 3;
		}		 
}

function count4(){

	 if (document.getElementById("4").src.match("../images/filled_star_1.png")){
		for(var i=4;i<6;i++){
			document.getElementById(i).src = "../images/blank_star_1.png";
		 	}		
		cnt = 3;
		} else if (document.getElementById("4").src.match("../images/blank_star_1.png")){
		for(var i=1;i<5;i++){
			document.getElementById(i).src = "../images/filled_star_1.png";
			}
		cnt = 4;
		}		 
}

function count5(){

	 if (document.getElementById("5").src.match("../images/filled_star_1.png")){
		for(var i=5;i<6;i++){
			document.getElementById(i).src = "../images/blank_star_1.png";
		 	}		
		cnt = 4;
		} else if (document.getElementById("5").src.match("../images/blank_star_1.png")){
			for(var i=1;i<6;i++){
			document.getElementById(i).src = "../images/filled_star_1.png";
			}
			cnt = 5;
		}		 
	}


</script>
</head>
<body>

<div>

<div style="height:100%; width:100%; display:inline;"><img id="1" src="../images/blank_star_1.png" style="width:30px; height:30px" onclick="javascript:count1();"></div>
<div style="height:100%; width:100%; display:inline;"><img id="2" src="../images/blank_star_1.png" style="width:30px; height:30px" onclick="javascript:count2();"></div>
<div style="height:100%; width:100%; display:inline;"><img id="3" src="../images/blank_star_1.png" style="width:30px; height:30px" onclick="javascript:count3();"></div>
<div style="height:100%; width:100%; display:inline;"><img id="4" src="../images/blank_star_1.png" style="width:30px; height:30px" onclick="javascript:count4();"></div>
<div style="height:100%; width:100%; display:inline;"><img id="5" src="../images/blank_star_1.png" style="width:30px; height:30px" onclick="javascript:count5();"></div>

</div>

</body>
</html>