<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/frame/mpheader.jsp"%>
<script type="text/javascript">
	function writeComplete(){
		if(document.writeForm.subject.value == ""){
			alert("제목을 입력하세요");
			return;
		}else if(document.writeForm.contents.value == ""){
			alert("내용을 입력하세요");
			return;
		}else{
			document.writeForm.action = "${root}/jam";
			document.writeForm.submit();
		}
	}
</script>
<body>
<section id="services" class="service-item">

<div class="wrapper row3">
	<div class="hoc container clear"> <!-- main body -->
		<div class="content">
			<h2><b><font color="black">JAM</font></b></h2>
<!--------------------------------------------------------------글쓰기 ---------------------------------------------------------------------------->
			<div class="row">
			<hr style="border-top: 2px solid #bbb; border-bottom: 1px solid #fff;">
			<form id="writeForm" name="writeForm" method="post" action="">
			<input type="hidden" name="act" id="act" value="jamRegister">
			<input type="hidden" name="id" id="id" value="${userInfo.id }">
		
				<div id="container">
					<div id="title">
						<input type="text" class="form-control" id="subject" name="subject" placeholder="제목을 입력하세요.">
					</div>
					<hr>
					<div>
					  <textarea class="form-control" rows="15" id="contents" name="contents" placeholder="내용을 입력하세요." required></textarea>
					</div>
					<hr>
					<div style="float:right">
						<button type="button" class="btn btn-default pull-right" onclick="javascript:writeComplete();">작성하기</button>
						<button type="button" class="btn btn-outline-secondary" onclick="javascript:document.location.href='/jam?act=mvJamList';">목록으로</button>
					</div>
				</div>
			</form>
			</div>
		</div>
	</div>
</div>
<!---------------------------------------------------------------------------------------------------------------------------------------------> 

</section><!--/#services-->    
 <%@include file="/frame/mpfooter.jsp"%>    