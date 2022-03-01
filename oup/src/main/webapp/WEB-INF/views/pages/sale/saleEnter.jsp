<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>AdminLTE 3 | Projects</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="${path}/resources/plugins/fontawesome-free/css/all.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="${path}/resources/dist/css/adminlte.min.css">
  
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css" integrity="sha384-ejwKkLla8gPP8t2u0eQyL0Q/4ItcnyveF505U0NIobD/SMsNyXrLti6CWaD0L52l" crossorigin="anonymous">
  <style>
    @import url('https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700&display=swap');
  body{font-family: 'Nanum Gothic', sans-serif;}
  </style>

</head>
<body class="hold-transition sidebar-mini layout-fixed">
 
<!-- Site wrapper -->
<div class="wrapper">
  <%@ include file="../../common/menubar-sidebar.jsp" %>

  <!-- Main Sidebar Container -->

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>판매등록</h1>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">

      <!-- Default box -->
      <div class="card"></div>
        <div class="card-body p-0">
		<form action="" method="post"> <!-- cbj -->
          <div class="row" style="background-color: rgb(196, 194, 194); margin: 20px; padding: 6px;">
                <div class="col-sm-1 mt-3" style="padding:5px;"><b>일자</b></div>
                <div class="col-sm-1"></div>
                <div class="col-sm-4">  
                  <div class="col">
                    <input type="date" name="saleDate" class="form-control mb-3 mt-3" placeholder="기한">
                  </div>
                </div>

                <div class="col-sm-1 mt-3" style="padding:5px;"><b>거래처</b></div>
                <div class="col-sm-1"></div>
                <div class="col-sm-4">                  
                  <div class="input-group col mt-3">
                    <input type="text" name="cNo" class="form-control" placeholder="거래처">
                    <button class="input-group-text" onclick="goPopup()"><i class="bi bi-search"></i></button>
                    <input type="text" class="form-control" readonly>
                  </div>
                </div>

                <div class="col-sm-1" style="padding:5px;"><b>담당자</b></div>
                <div class="col-sm-1"></div>
                <div class="col-sm-4">
                  <div class="input-group col mb-3">
                    <input type="text" id="employeeNo" name="employeeNo" class="form-control" placeholder="담당자">
                    <button type="button" class="input-group-text" onclick="employeePopup()"><i class="bi bi-search"></i></button>
                    <input type="text" id="employeeName" class="form-control" readonly id="id">
                  </div>
                </div>

                <div class="col-sm-1" style="padding:5px;"><b>출하창고</b>
                </div><div class="col-sm-1"></div>
                <div class="col-sm-4">
                  <div class="input-group col">
                    <input type="text" name="wareHouseNo" id="wareHouseNo" class="form-control" placeholder="출하창고">
                    <span class="input-group-text"><i class="bi bi-search"></i></span>
                    <input type="text" class="form-control" readonly>
                  </div>
                </div>

                <div class="col-sm-1" style="padding:5px;"><b>거래유형</b></div>
                <div class="col-sm-1"></div>
                <div class="col-sm-4">
                  <div class="col">
                    <select class="form-control mb-3">
                      <option>부가세적용</option>
                      <option>부가세미적용</option>
                    </select>
                  </div>
                </div>

				<div class="col-sm-1" style="padding:5px;"><b>프로젝트</b></div>
                <div class="col-sm-1"></div>
                <div class="col-sm-4">
                  <div class="input-group col mb-3">
                    <input type="text" name="projectNo" id="projectNo" class="form-control" placeholder="프로젝트">
                    <span class="input-group-text"><i class="bi bi-search"></i></span>
                    <input type="text" class="form-control" readonly>
                  </div>
                </div>
                
                <div class="col-sm-1" style="padding:5px;"><b>미수금액(전 잔액)</b></div>
                <div class="col-sm-1"></div>
                <div class="col-sm-4">
                  <div class="col">
                    <input type="text" class="form-control mb-3" placeholder="미수금액" readonly>
                  </div>
                </div>
                
                <div class="col-sm-1" style="padding:5px;"><b>미수금액(후잔액)</b></div>
                <div class="col-sm-1"></div>
                <div class="col-sm-4">
                  <div class="col">
                    <input type="text" class="form-control mb-3" placeholder="미수금액" readonly>
                    <input type="hidden" id="sUmony" value="10000" name="sUmony">
                  </div>
                </div>
          </div>
          <input type="submit" value="제출">
		</form> <!-- cbj -->
          <div style="margin: 10px;">
            <button type="button">찾기</button>
            <button type="button">거래내역보기</button>
            <button type="button">My품목</button>
            <button type="button">주문</button>
	       </div>
	
			<table class="table table-bordered projects">
				<thead>
					<tr>
						<th style="width: 3%"><input type="checkbox"></th>
						<th style="width: 3%" class="text-center"><i
							class="bi bi-arrow-bar-down"></i></th>
						<th style="width: 10%" class="text-center">품목코드</th>
						<th style="width: 15%" class="text-center">품목명</th>
						<th style="width: 9%" class="text-center">수량</th>
						<th style="width: 13%" class="text-center">단가</th>
						<th style="width: 14%" class="text-center">공급가액</th>
						<th style="width: 13%" class="text-center">부가세</th>
						<th style="width: 20%" class="text-center">납기일자</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><input type="checkbox"></td>
						<td><a href="#"><i class="bi bi-arrow-bar-down"></i></a></td>
						<td><input type="text" class="form-control"
							placeholder="AA00"></td>
						<td class="project_progress"><input type="text"
							class="form-control" placeholder="단단한돌"></td>
						<td><input type="text" class="form-control"
							placeholder="1000"></td>
						<td><input type="text" class="form-control"
							placeholder="3000원"></td>
						<td><input type="text" class="form-control"
							placeholder="100원"></td>
						<td><input type="text" class="form-control"
							placeholder="0원"></td>
						<td><input type="text" class="form-control"
							placeholder="2022-04-18"></td>
					</tr>
	
					<tr>
						<td><input type="checkbox"></td>
						<td><a href="#"><i class="bi bi-arrow-bar-down"></i></a></td>
						<td><input type="text" class="form-control"
							placeholder="AA00"></td>
						<td class="project_progress"><input type="text"
							class="form-control" placeholder="단단한돌"></td>
						<td><input type="text" class="form-control"
							placeholder="1000"></td>
						<td><input type="text" class="form-control"
							placeholder="3000원"></td>
						<td><input type="text" class="form-control"
							placeholder="100원"></td>
						<td><input type="text" class="form-control"
							placeholder="0원"></td>
						<td><input type="text" class="form-control"
							placeholder="2022-04-18"></td>
					</tr>
	
					<tr>
						<td><input type="checkbox"></td>
						<td><a href="#"><i class="bi bi-arrow-bar-down"></i></a></td>
						<td><input type="text" class="form-control"
							placeholder="AA00"></td>
						<td class="project_progress"><input type="text"
							class="form-control" placeholder="단단한돌"></td>
						<td><input type="text" class="form-control"
							placeholder="1000"></td>
						<td><input type="text" class="form-control"
							placeholder="3000원"></td>
						<td><input type="text" class="form-control"
							placeholder="100원"></td>
						<td><input type="text" class="form-control"
							placeholder="0원"></td>
						<td><input type="text" class="form-control"
							placeholder="2022-04-18"></td>
					</tr>
				</tbody>
			</table>
	
			<div style="margin: 10px;">
            <button type="button" class="btn btn-secondary btn-sm">저장</button>
            <button type="button" class="btn btn-secondary btn-sm">저장/전표</button>
            <button type="button" class="btn btn-secondary btn-sm">다시작성</button>
            <button type="button" class="btn btn-secondary btn-sm">리스트</button>
          </div>

        </div>
        <!-- /.card-body -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <%@ include file="../../common/footer.jsp" %>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
<!-- ./wrapper -->
</div>
<!-- jQuery -->
<script src="${path}/resources/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="${path}/resources/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="${path}/resources/dist/js/adminlte.min.js"></script>
<script type="text/javascript">
	var employeePopup = function(){ 
		var url = "${path}/popup";
		var windowTargetName = "employee";
		var features = "width=720,height=500, scrollbars=no, resizable=no";
		var search = window.open(url, windowTargetName, features);
		alert(document.getElementById("saleDate").value);
	} 
	var goPopup = function(){
        var search = window.open("${path}/client/searchClient","search","width=570,height=420, scrollbars=yes, resizable=no"); 
    }
</script>
</body>
</html>
