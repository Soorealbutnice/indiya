<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@include file="/frame/mpheader.jsp"%>

<body>
   <%  
          String act = request.getParameter("act");
      String id = request.getParameter("id");
      String pass = request.getParameter("pass");
      String email = (request.getParameter("email1") + "@" + request.getParameter("email2"));
       %>
   <section id="services" class="service-item">

      <!-- - 여기서 작업 -->
      <main class="hoc container clear"> <!-- main body --> <!-- ################################################################################################ -->
      <div class="sidebar one_quarter first">
         <!-- ################################################################################################ -->
         
         <nav class="sdb_holder">
            <!-- 왼쪽 메뉴 -->
            <div class="card" style="width: 200px">
               <div class="thumbnail">
                            <div style="height:200px;width:180px;">
                                <img id="image_section" src="#" alt="" />
                            </div>                      
                                <input type="file" id="file" name="file"><br>                          
                        </div>
               <div class="card-body">
                  <h4 class="card-title">오병호</h4>
                  <p class="card-text">뮤직 is my 라이프</p>
                  <address>
                     Email: <a href="#"><%=email%></a>
                  </address>
               </div>
            </div>
            <ul>
                     <li><a href="${root}/Mypage/mypagemodify.jsp">정보수정</a></li>
                    <li><a href="${root}/Mypage/mypageschedule.jsp">일정관리</a></li>
                    <li><a href="${root}/Mypage/mypage.jsp">찜목록</a></li>
            
                    <li><a href="${root}/funding/">펀딩목록확인</a></li>
                    <li><a href="${root}/Mypage/musicianchange.jsp">뮤지션 전환</a></li>
                    <li><br/></li>
                    <li><br/></li>
                    <c:if test="${chk == 'SUCC'}">
                    <li><a href="performanceregister.jsp">공연등록</a></li>
                    <li><a href="banner">공연일정관리</a></li>
                    <li><a href="banner">홈피수정</a></li>
                    </c:if>
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


         </div>
         <!-- ################################################################################################ -->
      </div>
      <!-- ################################################################################################ -->
      <!-- ################################################################################################ -->
      <div class="content three_quarter">
         <!-- 메인 내용################################################## -->

         <h1
            style="font-family: Nanum Gothic; font-size: 2.5em; font-weight: bold">펀딩내역확인</h1>
         <hr>
         <form class="form-search">
            <a class="btn btn-mini" href="#"
               style="float: right; WIDTH: 80pt; HEIGHT: 25pt"><i
               class="icon-search"></i>search</a> <input type="text"
               class="input-small search-query"
               style="float: right; WIDTH: 120pt; HEIGHT: 25pt">
         </form>
         <div class="scrollable">

            <table>
               <thead>
                  <tr>
                     <th>No</th>
                     <th>밴드명</th>
                     <th>누적금액</th>
                     <th>최근결제일</th>
                  </tr>
               </thead>
               <tbody>
                  <tr>
                     <td>1.</td>
                     <td>끓여야맛</td>
                     <td>라면은</td>
                     <td><a href="#">2018-02-02</a></td>
                  </tr>
                  <tr>
                     <td>2.</td>
                     <td>구워야맛</td>
                     <td>고기는</td>
                     <td><a href="#">2018-02-02</a></td>
                  </tr>
                  <tr>
                     <td>3.</td>
                     <td>뭐가문제인거냐</td>
                     <td>대체</td>
                     <td><a href="#">2018-02-02</a></td>
                  </tr>
                  <tr>
                     <td>3.</td>
                     <td>뭐가문제인거냐</td>
                     <td>대체</td>
                     <td><a href="#">2018-02-02</a></td>
                  </tr>
                  <tr>
                     <td>3.</td>
                     <td>뭐가문제인거냐</td>
                     <td>대체</td>
                     <td><a href="#">2018-02-02</a></td>
                  </tr>
                  <tr>
                     <td>3.</td>
                     <td>뭐가문제인거냐</td>
                     <td>대체</td>
                     <td><a href="#">2018-02-02</a></td>
                  </tr>
                  <tr>
                     <td>3.</td>
                     <td>뭐가문제인거냐</td>
                     <td>대체</td>
                     <td><a href="#">2018-02-02</a></td>
                  </tr>
                  <tr>
                     <td>3.</td>
                     <td>뭐가문제인거냐</td>
                     <td>대체</td>
                     <td><a href="#">2018-02-02</a></td>
                  </tr>
               </tbody>
            </table>
            <center>
               <form class="form-inline" action="/action_page.php">
                  <span><font size="3">보유코인:</font></span>
                  <input type="text" class="form-control" id="coin"
                     placeholder="" name="coin" readonly="readonly">
               </form>
               <hr style="color: aqua;">
               <br>
            </center>
            <h2>그래프</h2>
            <button type="button" class="btn btn-info" data-toggle="collapse"
               data-target="#demo">Simple collapsible</button>
            <div id="demo" class="collapse">여기안에 그래프 넣어서 하기</div>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>

         </div>
         <div id="comments" f="center">
            <div class="pagination">

               <ul>
                  <li class="disabled"><a href="#">&laquo;</a></li>
                  <li class="active"><a href="#">1</a></li>
                  <li class="active"><a href="#">2</a></li>
                  <li class="active"><a href="#">3</a></li>
                  <li class="active"><a href="#">4</a></li>
                  <li class="active"><a href="#">5</a></li>
                  <li class="disabled"><a href="#">&raquo;</a></li>
               </ul>
            </div>

         </div>
         <!-- ################################################################################################ -->


         <!-- ################################################################################################ -->
         <!-- / main body -->
         <div class="clear"></div>
   </section>
   <!--/#services-->
   <%@include file="/frame/mpfooter.jsp"%>
   <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
   <script type="text/javascript">
   
        function readURL(input) {
              
            if (input.files && input.files[0]) {
                var reader = new FileReader();
          
                reader.onload = function (e) {
                    $('#image_section').attr('src', e.target.result);
                    $('#image_section').attr('style', "height:200px;width:180px;"); 
                }
          
                reader.readAsDataURL(input.files[0]);
            }
        }
          
        $("#file").change(function() {
            readURL(this);
        });    
    </script>     
   