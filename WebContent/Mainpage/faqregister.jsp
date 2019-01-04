<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@include file="/frame/mpheader.jsp"%>
    <section id="services" class="service-item">
    
<!----------------------------------------------------------------------------------------------------------------------------------------->

  <div class="wrapper row3">
  <main class="hoc container clear"> 
  	<h2><b><font color="black">자주하는질문</font></b></h2>
  	<hr style="border-bottom: 2px solid #bbb">
	<!------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------->
	<hr>
    <!-------------------------------------------------------------------------------------------------------->
	<center>
	<form action="#" method="post">
          <div class="form-group">
            	제목 <input type="text" name="title" id="title" value="">
          </div>
          <div class="form-group">
            	내용<textarea name="comment" id="comment" cols="25" rows="10"></textarea>
          </div>
          <div>
            <input type="submit" name="submit" value="등록하기">
          </div>
   	</form>
  	</center>
  </main>
</div>
<!----------------------------------------------------------------------------------------------------------------------------------------->
    </section><!--/#services-->    
    <%@include file="/frame/mpfooter.jsp"%>