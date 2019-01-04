<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/frame/mpheader.jsp"%>
<body>
    
    <section id="services" class="service-item">
    
<!----------------------------------------------------------------------------------------------------------------------------------------->

  <div class="wrapper row3">
  <main class="hoc container clear"> 
  	<h2><b><font color="black">1:1문의하기</font></b></h2>
  	<hr style="border-bottom: 2px solid #bbb">
	<!------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------->
	<hr>
    <!-------------------------------------------------------------------------------------------------------->
	<center>
	<form action="#" method="post">
	<div>
         <div class="form-group">

			  <input type="text" class="form-control" id="usr" placeholder="이름을 작성하세요">
		</div>
          
      		<div class="form-group">
			
				 <textarea class="form-control" rows="7" placeholder="내용을 작성하세요"></textarea>
			</div>
			<div align="right">
				<button type="submit" class="btn btn-outline-primary" onclick="javascript:conAlert();">작성하기</button>
				<button type="submit" class="btn btn-outline-primary">목록</button>
			</div>
          </div>
   	</form>
  	</center>
  </main>
</div>
<!----------------------------------------------------------------------------------------------------------------------------------------->
    </section><!--/#services-->    
    <%@include file="/frame/mpfooter.jsp"%>
