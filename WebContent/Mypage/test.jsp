

<html>
<head>
<title>INDIYA</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="/layout/styles/layout.css" rel="stylesheet" type="text/css"
	media="all">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<script type="text/javascript">
	var idx = 0;
	function addAnswer() {

		idx++;
		var newAnswer = document.createElement("div");//<div></div>
		//	var newAnswer
		newAnswer.setAttribute("id", "answerdiv_" + idx);//<div id="answerdiv_번호"></div>

		var newInput = document.createElement("input");//<input/>
		newInput.setAttribute("type", "text");//<input type="text">
		newInput.setAttribute("name", "pollanswer");//<input type="text" name="pollanswer">

		var newButton = document.createElement("button");//<button></button>
		newButton.setAttribute("onclick", "javascript:removeAnswer('" + idx
				+ "');");//<button onclick="javascript:removeAnswer('번호');"></button>
		var txt = document.createTextNode("제거");
		newButton.appendChild(txt);//<button onclick="javascript:removeAnswer('번호');">제거</button>

		newAnswer.appendChild(newInput);
		newAnswer.appendChild(newButton);
		//<div id="answerdiv_번호">
		//	<input type="text" name="pollanswer" >
		//	<button onclick="javascript:removeAnswer('번호');">제거</button>
		//</div>

		document.getElementById("answerlist").appendChild(newAnswer);
	}

	function removeAnswer(i) {
		var removeDiv = document.getElementById("answerdiv_" + i);
		//document.getElementById("answerlist").removeChild(removeDiv);
		removeDiv.parentNode.removeChild(removeDiv);
		//removeDiv.removeAttribute("style");
	}
</script>
</head>
<body>
	

<div class="bgded overlay"
	style="background-image: url('../images/demo/backgrounds/maintitle.png');">
	<div class="wrapper row1">
		<header id="header" class="hoc clear">

			<div id="logo" class="fl_left">
				<h1 class="heading">
					<a href="main.jsp">INDIYA</a>
				</h1>
			</div>

			<nav id="mainav" class="fl_right">
				<ul class="clear">
					<li><a href="recruit.jsp">recruit</a></li>
					<li><a href="community.jsp">community</a></li>
					<li><a href="bandpage.jsp">stage</a></li>
					<li><a href="fundinglist_m.jsp">funding</a></li>
					<li><a href="adminQ&A.jsp">Q&A</a></li>
					<li><a href="mypageX.jsp">LOGIN</a></li>
				</ul>
			</nav>
		</header>
	</div>
</div>
	<section id="services" class="service-item">

		<!-- - 여기서 작업 -->
		<main class="hoc container clear"> <!-- main body --> <!-- ################################################################################################ -->
		<div class="sidebar one_quarter first">
			<!-- ################################################################################################ -->
			<h6>Lorem ipsum dolor</h6>
			<nav class="sdb_holder">
				<!-- 왼쪽 메뉴 -->
				<ul>
					<li><a href="mypagemodify.jsp">정보수정</a></li>
					<li><a href="mypageschedule.jsp">일정관리</a></li>
					<li><a href="mypageX.jsp">찜목록</a></li>
					<li><a href="mypage">결제내역확인</a></li>
					<li><a href="survey.html">펀딩목록확인</a></li>
					<li><a href="Q&A.html">뮤지션 전환</a></li>
					<br>
					<br>
					<li><a href="performanceregister.jsp">공연등록</a></li>
					<li><a href="banner">공연일정관리</a></li>
					<li><a href="banner">홈피수정</a></li>
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
				<div class="thumbnail">
					<div class="caption" height="300">포스터 등록</div>
					<img src="../images/demo/backgrounds/01.png" alt=""> <input
						type="file" name="" id="" value="" required>
				</div>

			</div>
			<!-- ################################################################################################ -->
		</div>
		<!-- ################################################################################################ -->
		<!-- ################################################################################################ -->

		<!-- 메인 내용################################################## -->

		<h1
			style="font-family: Nanum Gothic; font-size: 2.5em; font-weight: bold">회원정보수정</h1>
		<hr>


		<form name="joinform" method="post" action="">
			<input type="hidden" name="act" value="register">
			<table width="300" height="700" cellspacing="4" cellpadding="5">
				<tr>
					<td class="td1">이름<font color="red">*</font></td>
					<td class="td3"><input type="text" name="name" id="name"
						value="" size="12"></td>
				</tr>

				<!--
			<tr>
			 <td class="td2">주민등록번호<font color="red">*</font></td>
			 <td class="td4"><input type="text" name="reginum1" value="" size="12" maxlength="6"> -
			 <input type="text" name="reginum2" value="" size="12" maxlength="7"></td>
			</tr>

			<tr>
			 <td class="td1">닉네임(별명)<font color="red">*</font></td>
			 <td class="td3"><input type="text" name="nickname" value="" size="12">&nbsp;&nbsp; 실명을 사용하지 않는 서비스에서 사용되는 <font color="#3cb371">별명</font>입니다.<br>입력하지 않으실 경우 회원님의 이름이 등록됩니다.</td>
			</tr>
-->

				<tr>
					<td class="td2">아이디(ID)<font color="red">*</font></td>
					<td class="td4"><input type="text" name="id" id="id" value=""
						size="12" onkeyup="javascript:idcheck();"> <span
						id="result"></span></td>
				</tr>

				<tr>
					<td class="td1">비밀번호입력<font color="red">*</font></td>
					<td class="td3"><input type="password" name="pass" id="pass"
						size="12" maxlength="12">&nbsp;&nbsp;<font color="#3cb371">6~12</font>자리의
						영문(대소문자 구별)이나 숫자</td>
				</tr>

				<tr>
					<td class="td2">비밀번호확인<font color="red">*</font></td>
					<td class="td4"><input type="password" name="passcheck"
						id="passcheck" size="12" maxlength="12">&nbsp;&nbsp;비밀번호를
						한번더 입력하세요</td>
				</tr>
				<tr>
					<div class="thumbnail">
						<div class="caption" height="300">포스터 등록</div>
						<img src="../images/demo/backgrounds/01.png" alt=""> <input
							type="file" name="" id="" value="" required>
					</div>
				</tr>
				<!--
            <tr>
			 <td width="120" class="td1">비밀번호 재발급<font color="red">*</font><br>질문 선택</td>
			 <td class="td3">
			  <select name="question">
			   <option value="">가장 좋아하는 색상은?(예: 빨강)</option>
			   <option value="">어릴 적 단짝 친구의 이름은?</option>
			   <option value="">가장 좋아하는 음식은?</option>
			   <option value="">가장 여행하고 싶은 나라는?</option>
			   <option value="">기억에 남는 추억의 장소는?</option>
			   <option value="">가장 좋아하는 연예인은?</option>
			  <option value="">친구들에게 공개하지 않은 어릴 적 별명이 있다면?</option>
			  </select><br>
			  혹시 비밀번호를 잊어버리신 경우 여기에서 선택한 질문을 하게됩니다.
			 </td>
			</tr>

			<tr>
			 <td width="120" class="td2">비밀번호 재발급<font color="red">*</font><br>답변 입력</td> 
	         <td class="td4"><input type="text" name="answer" size="35"><br>
			 위에서 선택하신 질문에 대한 답변을 입력하세요.<br>
			 비밀번호를 잊어버리신 경우 이 답변을 이용하여 비밀번호를 재발급 받으실 수 있습니다.</td>
			</tr>
-->
				<tr>
					<td class="td1">연락처<font color="red">*</font></td>
					<td class="td3">휴 대 폰&nbsp;&nbsp;<select name="tel1">
							<option value="">----</option>
							<option value="010">010</option>
							<option value="010">011</option>
							<option value="010">016</option>
							<option value="010">017</option>
							<option value="010">018</option>
					</select> - <input type="text" name="tel2" value="" size="4" maxlength="4">
						- <input type="text" name="tel3" value="" size="4" maxlength="4"><br>
						<!--
			  유선전화&nbsp;<select name="tel1">
			   <option value="">----</option>
		       <option value="010">02</option>
			   <option value="010">031</option>
			   <option value="010">032</option>
			   <option value="010">033</option>
			   <option value="010">041</option>
			  </select> -
					<input type="text" name="tel2" value="" size="4" maxlength="4" > -
					<input type="text" name="tel3" value="" size="4" maxlength="4" >
					<input type="radio" name="location" value="집" checked>집
        	        <input type="radio" name="location" value="회사">회사
					<br>휴대폰이나 유선전화 중에서 <font color="#3cb371">하나는 반드시 입력하셔야 합니다.</font>
-->
					</td>
				</tr>

				<tr>
					<td class="td2">우편번호<font color="red">*</font></td>
					<td class="td4"><input type="text" name="zipcode" id="zipcode"
						value="" size="5" maxlength="5" readonly="readonly"> <input
						type="button" value="우편번호검색" onclick="javascript:openzip();"></td>
				</tr>
				<tr>
					<td class="td1">주소<font color="red">*</font></td>
					<td class="td3"><input type="text" name="addr1" id="addr1"
						value="" size="100" readonly="readonly"></td>
				</tr>

				<tr>
					<td class="td2">상세주소<font color="red">*</font></td>
					<td class="td4"><input type="text" name="addr2" size="100"></td>
				</tr>

				<tr>
					<td class="td1">주로 쓰는 이메일<font color="red">*</font></td>
					<td class="td3"><input type="text" name="email1" value=""
						size="12"> @ <!--<input type="text" name="direct" value="" size=12>-->
						<select name="email2">
							<!--<option value="naver.com">직접입력</option>-->
							<option value="naver.com">naver.com</option>
							<option value="hanmail.net">hanmail.net</option>
					</select></td>
				</tr>
				<!--			
			<tr>
			 <td class="td2">성별<font color="red">*</font></td> 
	         <td class="td4"><input type="radio" name="gender" value="남" checked>남자
        	        <input type="radio" name="gender" value="여">여자</td>
			</tr>

			<tr>
			 <td class="td1">결혼여부<font color="red">*</font></td> 
	         <td class="td3"><input type="radio" name="married" value="미혼" checked>미혼 
				<input type="radio" name="married" value="기혼">기혼</td>
        	   
			</tr>

			<tr>
			 <td class="td2">취미 & 관심사항</td>
			 <td class="td4"><input type="checkbox" name="컴퓨터">컴퓨터&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="게임">게임&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="음악">음악&nbsp;&nbsp;&nbsp;&nbsp;
				    <input type="checkbox" name="연예">연예&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="뉴스">뉴스&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="IT">IT&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="맛집">맛집&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="IT">맛집
			</tr>
-->
				<tr>
					<td colspan="2" align="center"><input type="button"
						value="회원가입" onclick="javascript:join();"> &nbsp;&nbsp; <input
						type="reset" value="취소"></td>
				</tr>
			</table>
		</form>




		<!-- ################################################################################################ -->


		<!-- ################################################################################################ -->
		<!-- / main body -->
		<div class="clear"></div>
	</section>
	<!--/#services-->
	

<!DOCTYPE html>

<div class="bgded overlay" style="background-image:url('../images/demo/backgrounds/maintitle.png');"> 
  <footer id="footer" class="hoc clear">
    <!-- ################################################################################################ -->
    <div class="one_third first">
     <h1 class="heading"><font size="20">INDIYA</font></h1>
      
    </div>
    <div class="one_third">
        <p>+82 (123) 456 7890</p>
    </div>
    <div class="one_third">
        <p>kitri715@gmail.com</p>
    </div>
      <div class="one_third">
    <p>주소 : 서울특별시 종로구 청와대로 1</p>
    </div>
     <div class="one_third">
    <p><a href=""><font color="white">고객센터</font></a></p><!-- 여기에 Q&A 주소 넣어주기 -->
    </div>
    <!-- ################################################################################################ -->
  </footer>
    </div>

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.prettyPhoto.js"></script>
	<script src="js/jquery.isotope.min.js"></script>
	<script src="js/wow.min.js"></script>
	<script src="js/main.js"></script>

</body>
</html>