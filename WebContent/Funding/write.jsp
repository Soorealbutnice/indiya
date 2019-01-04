<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/frame/mpheader.jsp"%>
<%@ include file="/frame/board_common.jsp" %>
<c:if test="${param.userinfo != 'musician'}">
<script>
alert("뮤지션전용 서비스입니다.");
document.location.href = "${root}/funding/index.jsp";
</script>
</c:if>
<script>
var cnt = 1;

function writeArticle(){
   if(document.writeForm.title.value == ""){
      alert("제목을 입력하세요.");
      return;
   }else if(document.writeForm.contents.value == ""){
      alert("내용을 입력하세요.");
      return;
   }else{
      document.writeForm.action = "${root}/funding";
      document.writeForm.submit();
   }
}


function addRewardForm(){
   var rewardForm = document.getElementById("rewardHiddenForm");
   var cloneForm = rewardForm.cloneNode(true);
   cloneForm.setAttribute("class", "reward" + cnt);
   cloneForm.setAttribute("id", "reward" + cnt);
   document.getElementById("rewardList").appendChild(cloneForm);
   
   $("#reward"+cnt+" [name='reward_pic']").attr("name", $("#reward"+cnt+" [name='reward_pic']").attr("name")+cnt);
   $("#reward"+cnt+" [name='reward_title']").attr("name", $("#reward"+cnt+" [name='reward_title']").attr("name")+cnt);
   $("#reward"+cnt+" [name='reward_amount']").attr("name", $("#reward"+cnt+" [name='reward_amount']").attr("name")+cnt);
   $("#reward"+cnt+" [name='reward_contents']").attr("name", $("#reward"+cnt+" [name='reward_contents']").attr("name")+cnt);
   cnt++;
}

function removeRewardForm(object){
   var removeNode = object.parentNode.parentNode;
   document.getElementById("rewardList").removeChild(removeNode);
}
</script>
<body id="top">

<!-- 
Funding Detailes Body   Funding Detailes Body   Funding Detailes Body   Funding Detailes Body
Funding Detailes Body   Funding Detailes Body   Funding Detailes Body   Funding Detailes Body
Funding Detailes Body   Funding Detailes Body   Funding Detailes Body   Funding Detailes Body
-->




<div class="wrapper row3">
  <main class="hoc container clear"> 
    <!-- main body -->
    <!-- ############################################### -->
    <div class="content"> 
      <!-- ############################################### -->
<!-- 펀딩 작성 폼 시작 -->
   <form id="writeForm" name="writeForm" action="" method="post">
   
   <input type="hidden" name="act" value="writefunding">
   <input type="hidden" name="pg" value="1">
   <input type="hidden" name="key" value="">
   <input type="hidden" name="word" value="">

<!-- TEST -->
   <input type="hidden" name="userinfo" value="musician">
   <input type="hidden" name="musician_id" value="musician">
   
<!-- 펀딩 상세 상단 시작 -->
   <div>
<!-- 펀딩 상세 상단 왼쪽 시작 -->   
      <div class="one_quarter first">
         <div class="thumbnail">
         <div class="caption">이미지 등록</div>
         <img src="../images/demo/backgrounds/01.png" alt="">
<!--          <input type="file" name="pic" id="pic" value="" required> -->
         <input type="file" name="pic" id="pic" value="" >
         </div>
      </div>
<!-- 펀딩 상세 상단 왼쪽 끝 -->

<!-- 펀딩 상세 상단 오른쪽 시작 -->   
      <div class="one_quarter">
         <div class="input-group">
            <span class="input-group-addon" id="">
               <span class="glyphicon glyphicon-th-list" aria-hidden="true"></span>
            </span>
<!--             <select class="form-control" name="category" id="category" required> -->
            <select class="form-control" name="category" id="category" >
               <option value="">카테고리</option>
               <option value="음반">음반</option>
               <option value="공연">공연</option>
            </select>
         </div><br>
         
         <div class="input-group">
            <span class="input-group-addon" id="">
               <span class="glyphicon glyphicon-usd" aria-hidden="true"></span>
            </span>
<!--             <input type="number" class="form-control" name="goal" id="goal" value="" size="" min="1" max="" required> -->
            <input type="number" class="form-control" name="goal" id="goal" value="" size="" min="1" max="" >
         </div><br>

         <div class="input-group">
            <span class="input-group-addon" id="">
               <span class="glyphicon glyphicon-play" aria-hidden="true"></span>
            </span>
<!--             <input type="date" class="form-control" name="open" id="open" value="" required> -->
            <input type="date" class="form-control" name="open" id="open" value="" >
         </div><br>

         <div class="input-group">
            <span class="input-group-addon" id="">
               <span class="glyphicon glyphicon-stop" aria-hidden="true"></span>
            </span>
<!--             <input type="date" class="form-control" name="close" id="close" value="" required> -->
            <input type="date" class="form-control" name="close" id="close" value="" >
         </div>
      </div>      
<!-- 펀딩 상세 상단 오른쪽 끝 -->      
   
   </div>  
<!-- 펀딩 상세 상단 끝 -->




<!-- 펀딩 상세 본문 내용 시작 -->   
      <div class="services clear">
         <h2>Title</h2>
<!--          <input type="text" class="form-control" name="title" id="title" value="" size="99" required><br> -->
         <input type="text" class="form-control" name="title" id="title" value="" size="99" ><br>
         
         <h2>Content</h2>
<!--          <textarea class="form-control" name="contents" id="contents" rows="50" cols="100" required></textarea> -->
         <textarea class="form-control" name="contents" id="summernote" rows="50" cols="100" ></textarea>
         
        <article class="services">

        </article>
      </div>
<!-- 펀딩 상세 본문 내용 끝 -->   
   

 <!-- 리워드 영역 시작 -->
   <div class="clear"></div>
      <div id="rewardList">
      <div class="fl_right">
         <input class="btn" type="button" onclick="javascript:addRewardForm();" value="+">
      </div>
      <h2>Reward List</h2>
        <ul>
          <li class="services clear">
            <article class="">
            <div class="one_quarter first">
               <div class="thumbnail">
                  <div class="caption">이미지 등록</div>
                  <img src="" alt="">
<!--                   <input type="file" name="pic" id="pic" value="" required> -->
                  <input type="file" name="reward_pic0" id="reward_pic0" value="" >
               </div>
            </div>
            <div class="three_quarter">
               <div class="input-group">
                  <span class="input-group-addon" id="">Title :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
<!--                   <input type="text" class="input-group form-control" name="rtitle" id="rtitle" value="" required> -->
                  <input type="text" class="input-group form-control" name="reward_title0" id="reward_title0" value="" >
               </div><br>
               <div class="input-group">
                  <span class="input-group-addon" id="">Price :&nbsp;&nbsp;&nbsp;&nbsp;</span>
<!--                   <input type="number" class="input-group form-control" name="amount" id="amount" value="" min="1" required> -->
                  <input type="number" class="input-group form-control" name="reward_amount0" id="reward_amount0" value="" min="1" >
               </div><br>
            
               <div class="input-group">
                  <span class="input-group-addon" id="">Content : </span>
<!--                   <textarea class="form-control" name="rcontents" id="rcontents" value="" rows="5" cols="" required></textarea> -->
                  <textarea class="form-control" name="reward_contents0" id="reward_contents0" value="" rows="5" cols="" ></textarea>
                  <!-- <input type="text" class="input-group" name="" id="" value="" required> -->
               </div><br>
            </div>

            <p class="comcont">&nbsp;</p><!-- 하단 띠 위치 조절용  -->
              
            </article>
          </li>
      </ul>
      </div>
<!-- 리워드 영역 끝 -->     


      <div class="fl_right">
         <a href="javascript:writeArticle();" class="btn">펀딩 신청하기</a>
      </div>
   </form>
   <!-- 펀딩 작성 폼 끝 -->

<!-- 리워드 추가용 숨김 div 시작 -->
      <div id="rewardHiddenForm" class="hidden">
        <div class="fl_right">
            <input class="btn" type="button" onclick="javascript:removeRewardForm(this);" value="&nbsp;-&nbsp;">
      </div>
      <ul>
          <li class="services clear">
            <article id="" class="">
            <div class="one_quarter first">
               <div class="thumbnail">
                  <div class="caption">이미지 등록</div>
                  <img src="../images/demo/imgl.gif" alt="">
<!--                   <input type="file" name="addrewardfile" id="" value="" required> -->
                  <input type="file" name="reward_pic" id="" value="">
               </div>
            </div>
            <div class="three_quarter">
               <div class="input-group">
                  <span class="input-group-addon" id="">Title :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
<!--                   <input type="text" class="input-group form-control" name="" id="" value="" required> -->
                  <input type="text" class="input-group form-control" name="reward_title" id="" value="">
               </div><br>
               <div class="input-group">
                  <span class="input-group-addon" id="">Price :&nbsp;&nbsp;&nbsp;&nbsp;</span>
<!--                   <input type="number" class="input-group form-control" name="" id="" value="" min="1" required> -->
                  <input type="number" class="input-group form-control" name="reward_amount" id="" value="" min="1">
               </div><br>
            
               <div class="input-group">
                  <span class="input-group-addon" id="">Content : </span>
<!--                   <textarea class="form-control" name="" id="" value="" rows="5" cols="" required></textarea> -->
                  <textarea class="form-control" name="reward_contents" id="" value="" rows="5" cols=""></textarea>
                  <!-- <input type="text" class="input-group" name="" id="" value="" required> -->
               </div><br>
            </div>

            <p class="comcont">&nbsp;</p><!-- 하단 띠 위치 조절용  -->
              
            </article>
          </li>
      </ul>
      </div>
<!-- 리워드 추가용 숨김 div 끝 -->
      <!-- ############################################### -->
    </div>
    <!-- ############################################### -->
    <!-- / main body -->
    <div class="clear"></div>
  </main>
</div>


<!-- 
Funding Detailes Body   Funding Detailes Body   Funding Detailes Body   Funding Detailes Body
Funding Detailes Body   Funding Detailes Body   Funding Detailes Body   Funding Detailes Body
Funding Detailes Body   Funding Detailes Body   Funding Detailes Body   Funding Detailes Body
-->





<!-- ############################################### -->
<!-- ############################################### -->
<!-- ############################################### -->
<a id="backtotop" href="#top"><i class="fa fa-chevron-up"></i></a>
<!-- JAVASCRIPTS -->
<script src="/project/layout/scripts/jquery.min.js"></script>
<link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote-lite.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote-lite.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.10/lang/summernote-ko-KR.js"></script>
    <script>
      $('#summernote').summernote({
        height: 500,
        lang : 'ko-KR'
      });
    </script>
<%@include file="/frame/mpfooter.jsp"%>