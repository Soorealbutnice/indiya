<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="/frame/mpheader.jsp"%>
<%@ include file="/frame/board_common.jsp" %>

<script>
var amount = "";
function rewardSelect(){
   var selected = $("#rewardsel option:selected").val();
   if(selected != ""){
      amount = $("#"+selected + " p[name=rewardamount]").text();
   }else{
      amount = "";
   }
   $("#pricelabel").text(amount);
   $("#totalpricelabel").text(amount);
}

function backing(){
   if(amount == ""){
      alert("후원을 선택하세요");
      return;
   }else{
      $("input[name=amount]").val(amount);
      document.backingForm.action = "${root}/funding";
      document.backingForm.submit();
   }
}
</script>
<body id="top">

   <!-- 
Funding Detailes Body   Funding Detailes Body   Funding Detailes Body   Funding Detailes Body
Funding Detailes Body   Funding Detailes Body   Funding Detailes Body   Funding Detailes Body
Funding Detailes Body   Funding Detailes Body   Funding Detailes Body   Funding Detailes Body
-->

   <div class="wrapper row3">
      <main class="hoc container clear"> <!-- main body --> <!-- ############################################### -->
      <div class="content">
         <!-- ############################################### -->

         <!-- 펀딩 제목 -->
         <div class="content">
            <div class="article center">
               <h1>${detail.title}</h1>
            </div>
         </div>

         <!-- 펀딩 상세 상단 시작 -->
         <div>
            <!-- 펀딩 상세 상단 왼쪽 시작 -->
            <div class="three_quarter first">
               <div class="thumbnail">
                  <img src="../images/demo/backgrounds/01.png" alt="">
               </div>
            </div>
            <!-- 펀딩 상세 상단 왼쪽 끝 -->

            <!-- 펀딩 상세 상단 오른쪽 시작 -->
            <div class="one_quarter">
               <h1>${detail.musician_id}</h1>
               <div class="fl_right">${detail.amount}원</div>
               <label>달성금액1</label>

               <div class="progress">
                  <div class="progress-bar" role="progressbar" aria-valuenow="0"
                     aria-valuemin="0" aria-valuemax="100"
                     style="min-width: 2em; width: <fmt:formatNumber value="${detail.amount / detail.goal}" type="percent"/>;"><fmt:formatNumber value="${detail.amount / detail.goal}" type="percent"/></div>
               </div>
               <div class="inline">
                  <div class="">7일 남음</div>
               </div>
               
<c:if test="${userInfo.id != 'admin'}">
                  <button class="btn" style="width: 100%;" data-toggle="modal"
                  data-target="#myModal">후원하기</button>
</c:if>
            </div>
            <!-- 펀딩 상세 상단 오른쪽 끝 -->

         </div>
         <!-- 펀딩 상세 상단 끝 -->




         <!-- 펀딩 상세 본문 내용 시작 -->
         <div class="services clear">
            <h1>Funding Details</h1>
            <div>${detail.contents}</div>
            <article class="services"></article>
         </div>
         <!-- 펀딩 상세 본문 내용 끝 -->


         <!-- 리워드 영역 시작 -->
         <div class="clear"></div>
         <div id="comments">
            <h2>Rewards</h2>
            <ul>
            <c:forEach var="reward" items="${rewardlist}" varStatus="i">
               <li class="services">
                  <article class="" id="reward${i.count}">
                     <header>
                        <figure class="">
                           <img class="imgl borderedbox inspace-5"
                              src="${reward.pic}" alt=""><!-- 파일 업로드 경로 추가 -->
                        </figure>
                     <address>Reward${i.count}
                           <a href="#">${reward.title}</a>
                           <p class="comcont" name="rewardamount">${reward.amount}</p>
                        </address>
                     </header>
                     <div class="comcont">
                        <p>${reward.contents}</p>
                     </div>
                  </article>
               </li>
            </c:forEach>
            </ul>
         </div>
         <!-- 리워드 영역 끝 -->

         <!-- Modal -->
         <div class="modal fade" id="myModal" tabindex="-1" role="dialog"
            aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
            <form id="backingForm" name="backingForm" action="" method="post">
            <input type="hidden" name="act" value="backingfunding">
            <input type="hidden" name="seq" value="${detail.no}">
            <input type="hidden" name="amount" value="">
               <div class="modal-content">
                  <div class="modal-header">
                     <button type="button" class="close" data-dismiss="modal"
                        aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                     </button>
                     <h4 class="modal-title" id="myModalLabel">Funding</h4>
                  </div>


                  <!-- 모달 바디 시작 -->
                  <div class="modal-body">
                     <label class="center">메세지 제목</label>
                     <div class="comcont">
                        <p>This is an example of a comment made on a post. You can
                           either edit the comment, delete the comment or reply to the
                           comment. Use this as a place to respond to the post or to share
                           what you are thinking.</p>
                     </div>

                        

                     <div class="">

                           <div class="one_third first">
                              <!-- 위치지정 용 -->
                              <div>&nbsp;</div>
                           </div>

                           <div class="one_third">
                              <div class="input-group">
                                 <span class="input-group-addon" id="">Reward :</span>
                                 <select id="rewardsel" class="form-control" onchange="javacript:rewardSelect();">
                                    <!-- 리워드  -->
                                    <option name="none" value="">select</option>
                                 <c:forEach var="reward" items="${rewardlist}" varStatus="i">
                                    <option name="${i.count}" value="reward${i.count}">${i.count}</option>
                                 </c:forEach>
                                 </select>
                              </div>
                              <br>
                              <div class="input-group">
                                 <span class="input-group-addon" id="">금&nbsp;&nbsp;&nbsp;&nbsp;액
                                    :&nbsp;</span> <label for="" class="form-control" id="pricelabel"></label>
                                 <!-- 금액  -->
                              </div>
                              <br>
                              <div class="input-group">
                                 <span class="input-group-addon" id="">보유 코인 :</span> <label
                                    for="" class="form-control">0</label>
                                 <!-- 보유 코인  -->
                              </div>
                              <br>
                              <div class="input-group">
                                 <span class="input-group-addon" id="">사용 코인 :</span> <input
                                    type="number" class="form-control" name="" id="" value=""
                                    min="0">
                                 <!-- 사용코인  -->
                              </div>
                              <br>

                              <div class="input-group">
                                 <span class="input-group-addon" id="">총 금액 : </span> <label
                                    for="" class="form-control" id="totalpricelabel"></label>
                                 <!-- 총금액  -->
                                 <!-- <input type="text" class="input-group" name="" id="" value="" required> -->
                              </div>
                              <br>
                           </div>
                     </div>

                     <div class="block clear"></div>
                     
                  </div>
                  <!-- 모달 바디 끝 -->

                  <div class="modal-footer">
                     <button type="button" class="btn" data-dismiss="modal">취소</button>
                     <button type="button" class="btn" onclick="javascript:backing();">후원하기</button>
                  </div>
               </div>
               </form>
            </div>
         </div>
      </div>

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
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   <%@include file="/frame/mpfooter.jsp"%>