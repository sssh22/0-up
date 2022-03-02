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
 <link rel="stylesheet" href="${path}/resources/dist/css/project_add.css">

<!-- jquery  -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

</head>
<body class="hold-transition sidebar-mini layout-fixed">

<script type="text/javascript">

function popup(){
	//window.name="add";
	var settings="width=570,height=420, scrollbars=yes, resizable=no";
	popupWindow=window.open("${path}/project/search_member","search",settings);
}

</script>



<div class = "wrapper"> 
<%@ include file="/WEB-INF/views/common/menubar-sidebar.jsp" %>

 <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>프로젝트 추가</h1>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <form>
        <div class="col-md-12" id="miandiv">
          <div class="card card-primary">
            <div class="card-header">
              <h3 class="card-title">Project</h3>

              <div class="card-tools">
                <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
                  <i class="fas fa-minus"></i>
                </button>
              </div>
            </div>
            <div class="card-body">
            
              <div class="group">
                <label for="inputName">- 프로젝트 이름</label>
                <input type="text" id="inputName" name="projectName" class="form-control">
              </div>
              <div class="group">
                <label for="inputDescription">1. 프로젝트 시행 목적</label>
                <textarea id="inputDescription" name="projectContents1" class="form-control" rows="4"></textarea>
              </div>
              <div class="group">
                <label for="inputDescription">2. 프로젝트 개요 및 추친방향</label>
                <textarea id="inputDescription" name="projectContents2" class="form-control" rows="4"></textarea>
              </div>
              <div class="group">
                <label for="inputDescription">3. 프로젝트 시행 효과</label>
                <textarea id="inputDescription" name="projectContents3" class="form-control" rows="4"></textarea>
              </div>
              <div class="group">
                <label for="inputDescription">4. 제안 및 요구사항</label>
                <textarea id="inputDescription" name="projectContents4" class="form-control" rows="4"></textarea>
              </div>
              <br><hr>
              <div class="group">
                <label for="inputClientCompany">- 프로젝트 기간</label>
                <input type="date" id="startDate" name="startDate"> ~ <input type="date" id="endDate" name="endDate">
              </div>
              <hr>
              
                <div class="group">

                  <h5> 프로젝트 그룹 </h5><br>
                  <table>
                    <tr>
                      <th>- 프로젝트 책임자</th>
                      <td><input type="text" name="gLeader" id="search"></td>
                      <td><input type="button" value="검색" onclick="popup();"></td>
                      <td><input type="text" name="empNo" id="empNo" readonly></td>
                    </tr>
                    <tr>
                      <td>&nbsp;</td>
                      <td></td>
                      <td></td>
                      <td></td>
                    </tr>
                    <tr>
                      <th>- 프로젝트 그룹원</th>
                      <td><input type="text" name="gMember" id="search"></td>
                      <td><input type="button" value="검색" onclick="popup();"></td>
                      <td></td>
                    </tr>
                    <tr>
                      <td></td>
                      <td><input type="text" name="gMember" id="search"></td>
                      <td><input type="button" value="검색" onclick="popup();"></td>
                    </tr>
                    <tr>
                      <td></td>
                      <td><input type="text" name="gMember" id="search"></td>
                      <td><input type="button" value="검색" onclick="popup();"></td>
                    </tr>
                    <tr>
                      <td></td>
                      <td><input type="text" name="gMember" id="search"></td>
                      <td><input type="button" value="검색" onclick="popup();"></td>
                    </tr>
                  </table>
                
                </div>
              </div><!-- /.card-body -->
            </div>



            <div class="row">
              <div class="col-12">
                <a href="#" class="btn btn-secondary">취소</a>
                <input id="submitbtn" type="submit" value="프로젝트 생성" class="btn btn-secondary float-right">
              </div>
            </div>
              
            <br><br>
          <!-- /.card -->
        </div>
        </div>
      </form>
    </section>
    <!-- /.content -->
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
<%-- <script src="${path}/resources/dist/js/demo.js"></script> --%>


</body>
</html>