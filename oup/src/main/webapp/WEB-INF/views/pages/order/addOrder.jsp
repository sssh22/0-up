<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html lang="en">
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
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
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
            <h1>주문서등록</h1>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">

      <!-- Default box -->
      <div class="card"></div>
        <div class="card-body p-0">
			
	          <div class="row" style="background-color: rgb(196, 194, 194); margin: 20px; padding: 6px;">
	                <div class="col-sm-1 mt-3" style="padding:5px;"><b>일자</b></div>
	                <div class="col-sm-1"></div>
	                <div class="col-sm-4">  
	                  <div class="col">
	                    <input type="date" class="form-control mb-3 mt-3" id="orderDate" name="oDate" required>
	                  </div>
	                </div>
	
	                <div class="col-sm-1 mt-3" style="padding:5px;"><b>거래처</b></div>
	                <div class="col-sm-1"></div>
	                <div class="col-sm-4">                  
	                  <div class="input-group col mt-3">
	                    <input type="text" class="form-control" id="clientText" placeholder="거래처">
	                    <button class="input-group-text" onclick="goPopup()"><i class="bi bi-search"></i></button>
	                    <input type="text" class="form-control" id="client" name="client" readonly>
	                    <input type="hidden" id="clientNo" name="cNo">
	                  </div>
	                </div>
	                <div class="col-sm-1" style="padding:5px;"><b>담당자</b></div>
	                <div class="col-sm-1"></div>
	                <div class="col-sm-4">
	                  <div class="input-group col mb-3">
	                    <input type="text" class="form-control" id="ownerText"  placeholder="거래처담당자">
	                    <button class="input-group-text" onclick="changeOwner();"><i class="bi bi-arrow-right"></i></button>
	                    <input type="text" class="form-control" name="onwer" id="owner" readonly>
	                  </div>
	                </div>
	
	                <div class="col-sm-1" style="padding:5px;"><b>출하창고</b>
	                </div><div class="col-sm-1"></div>
	                <div class="col-sm-4">
	                  <div class="input-group col">
	                    <input type="text" class="form-control" placeholder="출하창고" id="wareText">
	                    <button class="input-group-text" onclick="changeWare();"><i class="bi bi-arrow-right"></i></button>
	                    <input type="text" class="form-control" name="warehouseNo" id="ware" readonly>
	                  </div>
	                </div>
	
	                <div class="col-sm-1" style="padding:5px;"><b>거래유형</b></div>
	                <div class="col-sm-1"></div>
	                <div class="col-sm-4">
	                  <div class="col">
	                    <select class="form-control mb-3" onchange="selectVat();" id="vat" name="vatYn">
	                      <option value="N">부가세미적용</option>
	                      <option value="Y">부가세적용</option>
	                    </select>
	                  </div>
	                </div>
	
	                <div class="col-sm-1" style="padding:5px;"><b>여신기한</b></div>
	                <div class="col-sm-1"></div>
	                <div class="col-sm-4">
	                  <div class="col">
	                    <input type="date" class="form-control mb-3" id="creditDate" name="creditDate" readonly>
	                  </div>
	                </div>
	
	                <div class="col-sm-1" style="padding:5px;"><b>첨부</b></div>
	                <div class="col-sm-1"></div>
	                <div class="col-sm-10">
	                  <div class="col">
	                    <input type="file" class="form-control mb-3" placeholder="첨부">
	                  </div>
	                </div>
	
	          </div>

	          <div style="margin: 10px;">
	            <button type="button">찾기</button>
	            <button type="button">거래내역보기</button>
	            <button type="button">My품목</button>
	            <button type="button">견적</button>
	            <button type="button">할인</button>
	            <button type="button">재고불러오기</button>
	            <button type="button">생성한전표</button>
	            <button type="button">이익계산</button>
		        <a href="javascript:orderPlus();" style="float:right;"><i class="bi bi-plus-square"></i></a>
	          </div>
	          
	
	          <table class="table table-bordered projects" id="orderTable">
	              <thead>
	                  <tr>
	                      <th style="width: 3%">
	                        <input type="checkbox">
	                      </th>
	                      <th style="width: 3%" class="text-center">
	                        <i class="bi bi-arrow-bar-down"></i>
	                      </th>
	                      <th style="width: 10%" class="text-center">
	                          품목코드
	                      </th>
	                      <th style="width: 16%" class="text-center">
	                          품목명
	                      </th>
	                      <th style="width: 16%" class="text-center">
	                        수량
	                      </th>
	                      <th style="width: 16%" class="text-center">
	                          단가
	                      </th>
	                      <th style="width: 16%" class="text-center">
	                        부가세
	                      </th>
	                      <th style="width: 20%" class="text-center">
	                        납기일자
	                      </th>
	                  </tr>
	              </thead>
	              <tbody id="tbody">
	                  <tr>
	                      <td>
	                        <input type="checkbox" class="orderCheckBox">
	                      </td>
	                      <td class="text-center">
	                        <a href="#"><i class="bi bi-arrow-bar-down" ></i></a>
	                      </td>
	                      <td>
	                        <input type="text" class="form-control" name="pNo">
	                      </td>
	                      <td class="project_progress">
	                        <input type="text" class="form-control" name="pName">
	                      </td>
	                      <td>
	                        <input type="text" class="form-control" name="oNum">
	                      </td>
	                      <td>
	                        <input type="text" class="form-control" name="oPrice">
	                      </td>
	                      <td>
	                        <input type="text" class="form-control" id="vatText" value="0" readonly>
	                      </td>
	                      <td>
	                        <input type="date" class="form-control" name="oDeliberyDate">
	                      </td>
	                  </tr>
	
	            </tbody>
	          </table>
	
	          <div style="margin: 10px;">
	            <button type="button" class="btn btn-secondary btn-sm" onclick="insertOrder();">저장</button>
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

  <footer class="main-footer">
    <div class="float-right d-none d-sm-block">
      <b>Version</b> 3.2.0-rc
    </div>
    <strong>Copyright &copy; 2014-2021 <a href="https://adminlte.io">AdminLTE.io</a>.</strong> All rights reserved.
  </footer>

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

<script>
	function changeOwner(){
		document.getElementById("owner").value = document.getElementById("ownerText").value;
	}
	function changeWare(){
		document.getElementById("ware").value = document.getElementById("wareText").value;
	}
	function orderPlus(){
		let table = document.getElementById('orderTable');
		  const newRow = table.insertRow();
		  
		  const newCell1 = newRow.insertCell(0);
		  const newCell2 = newRow.insertCell(1);
		  const newCell3 = newRow.insertCell(2);
		  const newCell4 = newRow.insertCell(3);
		  const newCell5 = newRow.insertCell(4);
		  const newCell6 = newRow.insertCell(5);
		  const newCell7 = newRow.insertCell(6);
		  const newCell8 = newRow.insertCell(7);

		  newCell2.className = "text-center";
		  newCell1.innerHTML = '<input type="checkbox" class="orderCheckBox">';
		  newCell2.innerHTML = '<a href="#"><i class="bi bi-arrow-bar-down"></i></a>';
		  newCell3.innerHTML = '<input type="text" class="form-control" name="pNo">';
		  newCell4.innerHTML = '<input type="text" class="form-control" name="pName">';
		  newCell5.innerHTML = '<input type="text" class="form-control" name="oNum">';
		  newCell6.innerHTML = '<input type="text" class="form-control" name="oPrice">';
		  newCell7.innerHTML = '<input type="text" class="form-control" id="vatText" value="0" readonly>';
		  newCell8.innerHTML = '<input type="date" class="form-control" name="oDeliberyDate">';
	}
	

	function selectVat(){	// 현재 oPrice 값을 못가져오는듯
		let vat = document.getElementById("vat").value;
		if(vat == "Y"){
			document.getElementById("vatText").value = document.getElementByName("oPrice").get(0).value / 10;
		}
		if(vat == "N"){
			document.getElementsById("vatText").value=0;
		}
	}
	
	var goPopup = function(){ 
		if(document.getElementById("orderDate").value == ""){
			alert("주문일자를 입력해주세요");
			return;
		}
		let clientText = document.getElementById("clientText").value;
		
		var search = window.open("${path}/client/searchClient?search="+clientText,"search","width=570,height=420, scrollbars=yes, resizable=no"); 
	} 

	function insertOrder(){
		let oDate = document.getElementById("orderDate").value;
		let cNo = document.getElementById("clientNo").value;
		let owner = document.getElementById("owner").value;
		let warehouseNo = document.getElementById("ware").value;
		let vatYn = document.getElementById("vat").value;
		let creditDate = new Date(document.getElementById("creditDate").value);
		
		let selSize = document.getElementsByName("pNo").length;
		var pNo = new Array(selSize);
		var pName = new Array(selSize);
		var oNum = new Array(selSize);
		var oPrice = new Array(selSize);
		var oDeliberyDate = new Array(selSize);
		
		for(let i=0; i < selSize;i++){
			pNo[i] = document.getElementsByName("pNo")[i].value;
			pName[i] = document.getElementsByName("pName")[i].value;
			oNum[i] = document.getElementsByName("oNum")[i].value;
			oPrice[i] = document.getElementsByName("oPrice")[i].value;
			oDeliberyDate[i] = new Date(document.getElementsByName("oDeliberyDate")[i].value);
		}
		// 현재 배열이 pNo {a, b, c} 로 들어가 있어 문자열이 포함되어 있음
		$.ajax({
			url : "${path}/order/addOrder",
			data : {"vo" : oDate, cNo, owner, warehouseNo, vatYn, creditDate},
			type : 'post',
			success : function(data){
				console.log(data);
			},
			error : function(e){
				console.log(e);
			}
		});
	}
</script>

</body>
</html>
