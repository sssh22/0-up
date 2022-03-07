<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- Google Font: Source Sans Pro -->
 <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<!--   Font Awesome -->
 <link rel="stylesheet" href="${path}/resources/plugins/fontawesome-free/css/all.min.css">
<!--   Theme style -->
 <link rel="stylesheet" href="${path}/resources/dist/css/adminlte.min.css">

<!-- ssh CSS -->
 <link rel="stylesheet" href="${path}/resources/dist/css/statement_list.css">


</head>
<body class="hold-transition sidebar-mini layout-fixed">
<div class = "wrapper"> 
<%@ include file="/WEB-INF/views/common/menubar-sidebar.jsp" %>


<!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 style="font-size: 40px;">거래 명세서 조회</h1>
          </div>
          <br><br><br>

          
          
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    
    
      
      
      

   


      <!-- Default box -->
      <div class="card" id="cardss">


        <table class="atb1">
          <tr>
            <td>날짜 : </td>
            <td><input type="date"></td>
            <td> &nbsp; ~ &nbsp; </td>
            <td><input type="date"></td>
          </tr>
        </table>
        <table class="atb2">
          <tr>
            <td>
              <select name="category" id="cate">
                <option value="거래처명">거래처명</option>
                <option value="거래처코드">거래처코드</option>
                <option value="일련번호">주문서번호</option>
                <option value="일련번호">프로젝트명</option>
              </select>
            </td>
            <td><input type="text"></td>
            <td><input type="submit" value="검색"></td>
          </tr>
        </table>
        <br>



        <div>
          <table class="table" id="btb">
            <thead>
              <tr>
                <th>선택</th>
                <th>주문서번호</th>
                <th>명세서번호</th><!-- 번호/미발급 (발급버튼) -->
                <th>거래처코드</th>
                <th>거래처명</th>
                <th>사업자번호</th>
                <th>SKU</th>
                <th>공급가액</th>
                <th>세액</th>
                <th>합계금액</th>
                <th>수정</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td><input type="checkbox"></td>
                <td>0</td>
                <td>0</td>
                <td>0</td>
                <td>0</td>
                <td>0</td>
                <td>0</td>
                <td>0</td>
                <td>0</td>
                <td>0</td>
                <td><button id="btn1">수정</button></td>
              </tr>
            </tbody>
          </table>

         <!-- Pagination -->
         <div><br>
          <nav aria-label="Page navigation example">
            <ul class="pagination nav justify-content-center">
              <li class="page-item">
                <a class="page-link" href="#" aria-label="Previous">
                  <span aria-hidden="true">&laquo;</span>
                </a>
              </li>
              <li class="page-item"><a class="page-link" href="#">1</a></li>
              <li class="page-item"><a class="page-link" href="#">2</a></li>
              <li class="page-item"><a class="page-link" href="#">3</a></li>
              <li class="page-item">
                <a class="page-link" href="#" aria-label="Next">
                  <span aria-hidden="true">&raquo;</span>
                </a>
              </li>
            </ul>
          </nav>

         </div><!-- /paging -->
          
        </div><!-- table -->
       
        
        
        
      </div>
      <!-- /.card -->
      
    </div>
  <!-- /.content-wrapper -->



 <%@ include file="/WEB-INF/views/common/footer.jsp" %>
</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script src="${path}/resources/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="${path}/resources/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="${path}/resources/dist/js/adminlte.min.js"></script>


</body>
</html>