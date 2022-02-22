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
 <link rel="stylesheet" href="${path}/resources/dist/css/statement.css">


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
            <h1 style="font-size: 40px;">거래 명세서 [저장]</h1>
          </div>
          <br><br><br>

          
          
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    
    <table id="atb">
      <tr>
        <td>프로젝트</td>
        <td>
          <select>
            <option>each</option>
            <option></option>
            <option></option>
          </select>
        </td>
      </tr>
      <tr>
        <td>주문서</td>
        <td>
          <select>
            <option></option>
            <option></option>
            <option></option>
          </select>
        </td>
      </tr>
    </table>
    <br>



      <!-- Default box -->
      <div class="card">
        
        
       

        <table border="1" id="btb">
          <tr>
            <td class="colName">일련번호</td>
            <td colspan="9"></td>
          </tr>
          <tr>
            <td class="colName">작성일자</td>
            <td rowspan="2" colspan="9" style="font-size: 50px; font-family: 궁서체;"> 거 래 명 세 서</td>
          </tr>
          <tr>
            <td></td>
          </tr>
          <tr>
            <td colspan="5" class="colName2"> 곻급 받는 자</td>
            <td colspan="5" class="colName3">공급자</td>
          </tr>
          <tr>
            <td class="colName">상호명</td>
            <td colspan="2"></td>
            <td class="colName">성명</td>
            <td></td>
            <td class="colName">상호명</td>
            <td colspan="2"></td>
            <td class="colName">성명</td>
            <td></td>
          </tr>
          <tr>
            <td class="colName">등록번호</td>
            <td colspan="4"></td>
            <td class="colName">등록번호</td>
            <td colspan="4"></td>
          </tr>
          <tr>
            <td class="colName">사업장 주소</td>
            <td colspan="4"></td>
            <td class="colName">사업장 주소</td>
            <td colspan="4"></td>
          </tr>
          <tr>
            <td class="colName">전화번호</td>
            <td colspan="2">5654</td>
            <td class="colName">팩스</td>
            <td>5555</td>
            <td class="colName">전화번호</td>
            <td colspan="2">54682</td>
            <td class="colName">팩스</td>
            <td>00</td>
          </tr>
          <tr>
            <td colspan="5" class="colName"> 거래일자 </td>
            <td colspan="5"></td>
          </tr>
          <tr>
            <td colspan="5" class="colName"> 합계금액(VAT포함)</td>
            <td colspan="5"></td>
          </tr>
        </table>



        <table border="1" id="ctb">
          <tr>
            <th>번호</th>
            <th>상품코드</th>
            <th>상품명</th>
            <th>규격</th>
            <th>수량</th>
            <th>단가</th>
            <th>공급가액</th>
            <th>세액</th>
            <th>금액</th>
            <th>비고</th>
          </tr>
          <tr>
            <td>1</td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
          </tr>
          <tr>
            <td>2</td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
          </tr>
          <tr>
            <td>3</td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
          </tr>
          <tr>
            <td>4</td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
          </tr>
          <tr>
            <tr>
              <td>4</td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
            </tr>
            <tr>
              <tr>
                <td>4</td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
              </tr>
              <tr>
                <tr>
                  <td>4</td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                </tr>
                <tr>
                  <tr>
                    <td>4</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                  </tr>
                  <tr>
                    <tr>
                      <td>4</td>
                      <td></td>
                      <td></td>
                      <td></td>
                      <td></td>
                      <td></td>
                      <td></td>
                      <td></td>
                      <td></td>
                      <td></td>
                    </tr>
                    <tr>
                      <tr>
                        <td>4</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                      </tr>
                      <tr>
            <td>비고</td>
            <td colspan="9"></td>
            
          </tr>
        </table>
        
        
        
      </div>
      <!-- /.card -->
      <br>
      <div id="btn2">
        <input class="b1" type="button" value="저장">
      </div>

      
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
<!-- AdminLTE for demo purposes -->
<script src="${path}/resources/dist/js/demo.js"></script>


</body>
</html>