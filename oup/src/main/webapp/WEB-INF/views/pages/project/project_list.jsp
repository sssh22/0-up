<%@page import="java.util.List"%>

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
 <link rel="stylesheet" href="${path}/resources/dist/css/project_list.css">


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
            <h1>Projects List</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Projects</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">

      <!-- Default box -->
      <div class="card">
        <div class="card-header">
          <h3 class="card-title">Projects</h3>

          <div class="card-tools">
            <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
              <i class="fas fa-minus"></i>
            </button>
            <button type="button" class="btn btn-tool" data-card-widget="remove" title="Remove">
              <i class="fas fa-times"></i>
            </button>
          </div>
        </div>
        <div class="card-body p-0">
          <table class="table table-striped projects">
              <thead>
                  <tr>
                      <th style="width: 1%">
                          #
                      </th>
                      <th style="width: 20%">
                          Project Name
                      </th>
                      <th style="width: 30%">
                          Project Group Members
                      </th>
                      <th>
                          Payment Status
                      </th>
                      <th style="width: 8%" class="text-center">
                          Approval
                      </th>
                      <th style="width: 20%">
                      </th>
                  </tr>
              </thead>
              <tbody>
              <c:forEach items="${plist}" var="p">
                  <tr>
                      <td>
                          ${p.projectNo}
                      </td>
                      <td>
                          <a>
                            ${p.projectName}
                          </a>
                          <br/>
                          <small>
                              시작일 ${p.projectStart}
                          </small>
                      </td>
                      <td>
                         그룹원들..
                      </td>
                      <td class="project_progress">
                          <div class="progress progress-sm">
                              <div class="progress-bar" role="progressbar" aria-valuenow="57" aria-valuemin="0" aria-valuemax="100" style="width: 57%">
                              </div>
                          </div>
                          <small>
                              57% Complete
                          </small>
                      </td>
                      <td class="project-state">
                    	<c:if test="${p.AStatement eq '승인'}">
                          <span class="badge badge-secondary" id="approvalBadge">${p.AStatement}</span>
                      	</c:if>
                      	<c:if test="${p.AStatement ne '승인'}">
                          <span class="badge badge-secondary">${p.AStatement}</span>
                      	</c:if>
                      </td>
                      <td class="project-actions text-right">
                          <a class="btn btn-info btn-sm" href="${path}/project/project_edit/#{p.projectNo}">
                              <i class="fas fa-pencil-alt">
                              </i>
                              수정
                          </a>
                          <a class="btn btn-danger btn-sm" href="#">
                              <i class="fas fa-trash">
                              </i>
                              삭제
                          </a>
                      </td>
                  </tr>
              
              </c:forEach>
                 
            
              </tbody>
          </table>
        </div>
        <!-- /.card-body -->
      </div>
      <!-- /.card -->

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



</body>
</html>