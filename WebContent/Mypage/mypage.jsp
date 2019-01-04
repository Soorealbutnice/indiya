<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@include file="/frame/mpheader.jsp"%>
<body>
   <section id="services" class="service-item">
<%  
          String act = request.getParameter("act");
      String id = request.getParameter("id");
      String pass = request.getParameter("pass");
      String email = (request.getParameter("email1") + "@" + request.getParameter("email2"));
      
      
       %>
        
      <!-- - 여기서 작업 -->
      <main class="hoc container clear"> <!-- main body --> <!-- ################################################################################################ -->
      <form action="" method="post" id="joinform" name="joinform" enctype="multipart/form-data">
      <div class="sidebar one_quarter first">
         <!-- ################################################################################################ -->

         <nav class="sdb_holder">
            <!-- 왼쪽 메뉴 -->
            <div class="card" style="width: 200px">
               <!-- 이미지등록 -->
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
                    <li><a href="${root}/Mypage/musicianChange.jsp">뮤지션 전환</a></li>
                    <li><br/></li>
                    <li><br/></li>
                    <c:if test="${musician_flag == 'Y'}">
                    <li><a href="performanceregister.jsp">공연등록</a></li>
                    <li><a href="banner">공연일정관리</a></li>
                    <li><a href="banner">홈피수정</a></li>
                    </c:if>
                </ul>
         </nav>
         <!-- ################################################################################################ -->
      </div>
      <!-- ################################################################################################ -->
      <!-- ################################################################################################ -->
      <div class="content three_quarter">
         <!-- 메인 내용##########넣을곳######## -->

         <h1
            style="font-family: Nanum Gothic; font-size: 2.5em; font-weight: bold">My
            stage</h1>
         <hr>
         <div class="scrollable">
            <div class="container">
               <div class="row">
                  <h2>Filterable Table</h2>
                  <p>Type something in the input field to search the table for
                     first names, last names or emails:</p>
                  <input class="form-control" id="myInput" type="text"
                     placeholder="Search.."> <br>
                  <table class="table table-bordered table-striped">
                     <thead>
                        <tr>
                           <th>No.</th>
                           <th>찜목록</th>
                           <th>날짜</th>
                        </tr>
                     </thead>
                     <tbody id="myTable">
                        <tr>
                           <td>1.</td>
                           <td>Doe</td>
                           <td>john@example.com</td>
                        </tr>
                        <tr>
                           <td>2.</td>
                           <td>Moe</td>
                           <td>mary@mail.com</td>
                        </tr>
                        <tr>
                           <td>3.</td>
                           <td>Dooley</td>
                           <td>july@greatstuff.com</td>
                        </tr>
                        <tr>
                           <td>4.</td>
                           <td>Ravendale</td>
                           <td>a_r@test.com</td>
                        </tr>
                     </tbody>
                  </table>

                  <p>Note that we start the search in tbody, to prevent
                     filtering the table headers.</p>
               </div>

               <script>
                  $(document)
                        .ready(
                              function() {
                                 $("#myInput")
                                       .on(
                                             "keyup",
                                             function() {
                                                var value = $(
                                                      this)
                                                      .val()

                                                      .toLowerCase();
                                                $("#myTable tr")
                                                      .filter(
                                                            function() {
                                                               $(
                                                                     this)
                                                                     .toggle(
                                                                           $(
                                                                                 this)
                                                                                 .text()
                                                                                 .toLowerCase()
                                                                                 .indexOf(
                                                                                       value) > -1)
                                                            });
                                             });
                              });
               </script>

               <!-- 본문입니당 -->
            </div>
         </div>
      </div>
      </form>
      <!-- / main body --> </main>

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