<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/frame/mpheader.jsp"%>
<script type="text/javascript">
function login(){
   if (document.getElementById("id").value == "") {
      alert("아이디를 입력하세요");
      return;
   } else if (document.getElementById("pass").value == "") {
      alert("비밀번호를 입력하세요");
      return;
   } else {
      document.loginform.action = "${root}/user?act=login&";
      document.loginform.submit();
   }
}

</script>
<div class="wrapper row3">
  <main class="hoc container clear"> 
    <div class="one_third first">　</div>
     <div class="one_third">
        <div style="text-align:center"><h3></b>INDIYA</b></h3></div>
        <form id="loginform" name="loginform" method="post">
          <div class="form-group">
            <span class="glyphicon glyphicon-user"></span>
            <input type="text" class="form-control" id="id" name="id" placeholder="Enter id">
          </div>
          <div class="form-group">
            <span class="glyphicon glyphicon-lock"></span>
            <input type="text" class="form-control" id="pass" name="pass" placeholder="Enter password">
          </div>
          <div class="checkbox">
            <label><input type="checkbox" value="saveok" checked>아이디 저장</label>
          </div>
          <input type="hidden" name="saveok" id="saveok" value="saveok">
          <input type="hidden" name="act" id="act" value="login">
          <button class="btn btn-default btn-success btn-block" onclick="javascript:login();"><span class="glyphicon glyphicon-off"></span>Login</button>
        </form>
    

        <div></div>
        <p><a href="#">아이디/비밀번호 찾기</a></p>
        <div></div>    
        <p>인디야의 계정이 없으세요? <a href="/Mainpage/join.jsp">Sign Up</a></p>
     
     </div>
   </main>
</div>
<%@include file="/frame/mpfooter.jsp"%>