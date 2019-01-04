<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/frame/mpheader.jsp"%>
<script type="text/javascript">
	function writeComplete(){
		if(document.writeForm.contents.value == ""){
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
  					<h2 align="center">신청하기</h2><hr/>
					<form id="writeForm" name="writeForm" method="post" action=""  class="form-horizontal">  
						<input type="hidden" name="act" id="act" value="jamApply">
						<input type="hidden" id="jam_no" name="jam_no" value="${jam_no }" />
						<input type="hidden" id="apply_id" name="apply_id" value="${userInfo.id }"/>
						<div class="form-group">
							<label class="col-lg-2 control-label">포지션</label>
							<div class="col-sm-9">
									<select  id="position" name="position" class="selectpicker" style="vertical-align:bottom;">
										  <option value="드럼">드럼</option>
										  <option value="기타">기타</option>
										  <option value="트라이엥글">트라이엥글</option>
										  <option value="4">직접입력</option>
									</select>     	
							</div>
						</div>
						
						<div class="form-group">
							<label class="col-lg-2 control-label">내용</label>
							<div class="col-sm-9">
								 <textarea id="contents" name="contents" required rows="15" class="form-control" placeholder=""></textarea>
							</div>
						</div>	
						<div class="form-group">
							<label class="col-lg-2 control-label">&nbsp;</label>
							<div class="col-sm-9">
								 <button type="submit" class="btn btn-default" onclick="writeComplete()">등록</button>
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