<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>거래처 검색</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="${path}/resources/plugins/fontawesome-free/css/all.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="${path}/resources/dist/css/adminlte.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>  
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
  
<body class="hold-transition sidebar-mini">
  <div class="content-wrapper">
    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-md">
            <div class="card-header">
              <h3>회원 조회</h3>
              <div class="card-tools">
                <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
                </button>
              </div>
            </div>
            <div class="card-body">
            	<form action="${path}/client/searchClient" method="get">
	                <div class="input-group mb-3 " style="left:79%;">
	                  <input type="text" name="search" class="form-control col-sm-2" id="searchClient">
	                  <button class="btn btn-secondary" onclick="submit(); return false;"><i class="fa fa-search"></i></button>
	                </div>
	                <table class="table table-bordered projects">
	                  <thead>
	                      <tr>
	                          <th style="width: 50%" class="text-center">
	                              사원코드
	                          </th>
	                          <th style="width: 50%" class="text-center">
	                              사원명
	                          </th>
	                      </tr>
	                  </thead>
	                  <tbody>
		                  <c:forEach items="${list}" var="l">				
		                    <tr>
		                      <td><span id="confirm_id" onclick="employeeList('${l.employeeNo}','${l.employeeName}')">${l.employeeNo}</span></td>
		                      <td>${l.employeeName}</td>
		                    </tr>
		                  </c:forEach>
	                  </tbody>
	              	</table>
                </form>
	        </div>
      </div>
    </div>
        
  </section>
  </div>

<!-- jQuery -->
<script src="${path}/resources/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="${path}/resources/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="${path}/resources/dist/js/adminlte.min.js"></script>

<script> 
	function submit(){
		let search = document.getElementById("searchClient").value;
		document.searchform.submit(search);
	}	
	
	function employeeList(employeeNo,employeeName) { 
			opener.document.getElementById("employeeNo").value = employeeNo;
			opener.document.getElementById("employeeName").value = employeeName;
			self.close();
	}

</script>
</body>
</html>
