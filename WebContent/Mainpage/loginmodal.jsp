<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  .modal-header, h4, .close {
      background-color:#f9f9f9;
      color:lightgray !important;
      text-align: center;
      font-size: 30px;
  }
  .modal-footer {
      background-color: #f9f9f9;
  }
  </style>
</head>
<body>

   <!-- <h2>Modal Example</h2> -->
  <!-- Trigger the modal with a button -->
  <a data-toggle="modal" data-target="#loginModal">로그인</a>
	<center>
	  <!-- Modal -->
	  <div class="modal fade" id="loginModal" role="dialog">
	    <div class="modal-dialog">
	    
	      <!-- Modal content-->
	      <div class="modal-content">
	      	<div class="modal-header" style="padding:35px 50px;">
         			<button type="button" class="close" data-dismiss="modal">&times;</button>
         			<h2>INDIYA</h2>
       		</div>
	        <div class="modal-body">
	          <form role="form">
	            <div class="form-group">
	              <span class="glyphicon glyphicon-user"></span>
	              <input type="text" class="form-control" id="usrname" placeholder="Enter id">
	            </div>
	            <div class="form-group">
	              <span class="glyphicon glyphicon-lock"></span>
	              <input type="text" class="form-control" id="psw" placeholder="Enter password">
	            </div>
	            <div class="checkbox">
	              <label><input type="checkbox" value="" checked>아이디 저장</label>
	            </div>
	            <button type="submit" class="btn btn-default btn-success btn-block"><span class="glyphicon glyphicon-off"></span> Login</button>
	          </form>
	        </div>
	        <div class="modal-footer">
			  <div></div>
			  <p><a href="#">아이디/비밀번호 찾기</a></p>
			  <div></div>    
	          <p>인디야의 계정이 없으세요? <a href="#">Sign Up</a></p>
	        </div>
	      </div>
	     </div>
		</div>
	</center>
</body>
</html>