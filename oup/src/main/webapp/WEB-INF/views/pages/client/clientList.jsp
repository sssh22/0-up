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
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css" integrity="sha384-ejwKkLla8gPP8t2u0eQyL0Q/4ItcnyveF505U0NIobD/SMsNyXrLti6CWaD0L52l" crossorigin="anonymous">
</head>
<body class="hold-transition sidebar-mini layout-fixed">
<!-- Site wrapper -->
<div class="wrapper">

	<%@ include file="../../common/menubar-sidebar.jsp" %>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>거래처</h1>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">

      <!-- Default box -->
      <div class="card">
        </div>
        <div class="card-body p-0">
            <div class="input-group mb-3" style="left: 40%; margin: 30px;">
                <input type="text" class="form-control col-sm-6" placeholder="Search">
                <button class="btn btn-success" type="submit"><i class="fa fa-search"></i></button>
              </div>
          <table class="table table-bordered projects">
              <thead>
                  <tr>
                      <th style="width: 2%">
                        <input type="checkbox">
                      </th>
                      <th style="width: 10%" class="text-center">
                          거래처코드
                      </th>
                      <th style="width: 15%" class="text-center">
                          거래처명
                      </th>
                      <th style="width: 8%" class="text-center">
                          대표자
                      </th>
                      <th style="width: 15%" class="text-center">
                        사업자등록번호
                      </th>
                      <th style="width: 10%" class="text-center">
                          미수금
                      </th>
                      <th style="width: 40%" class="text-center">
                        주소
                      </th>
                  </tr>
              </thead>
              <tbody>
                  <tr>
                      <td>
                        <input type="checkbox">
                      </td>
                      <td>
                              AA123
                      </td>
                      <td>
                        (주)영업2팀
                      </td>
                      <td class="project_progress">
                          홍홍길동
                      </td>
                      <td class="project-state">
                          1010101010
                      </td>
                      <td>
                          300000000
                      </td>
                      <td>
                            경기도 수원시 수원구 수원대로333번길 33, 수원아파트 11동 1103호
                      </td>
                  </tr>
                  <tr>
                    <td>
                      <input type="checkbox">
                    </td>
                    <td>
                            AA123
                    </td>
                    <td>
                      (주)영업2팀
                    </td>
                    <td class="project_progress">
                        홍홍길동
                    </td>
                    <td class="project-state">
                        1010101010
                    </td>
                    <td>
                        300000000
                    </td>
                    <td>
                          경기도 수원시 수원구 수원대로333번길 33, 수원아파트 11동 1103호
                    </td>
                </tr>
                <tr>
                    <td>
                      <input type="checkbox">
                    </td>
                    <td>
                            AA123
                    </td>
                    <td>
                      (주)영업2팀
                    </td>
                    <td class="project_progress">
                        홍홍길동
                    </td>
                    <td class="project-state">
                        1010101010
                    </td>
                    <td>
                        300000000
                    </td>
                    <td>
                          경기도 수원시 수원구 수원대로333번길 33, 수원아파트 11동 1103호
                    </td>
                </tr>
                  
                
              </tbody>
          </table>
          <div style="margin: 30px;">
            <button type="button" class="btn btn-secondary btn-sm">신규</button>
            <button type="button" class="btn btn-secondary btn-sm">계층그룹</button>
            <button type="button" class="btn btn-secondary btn-sm">변경</button>
            <button type="button" class="btn btn-secondary btn-sm">사용중단/재사용</button>
            <button type="button" class="btn btn-secondary btn-sm">Excel</button>

                <div class="btn-group me-2" role="group" aria-label="First group" style="float: right;">
                  <button type="button" class="btn btn-secondary">Previous</button>
                  <button type="button" class="btn btn-secondary active">1</button>
                  <button type="button" class="btn btn-secondary">2</button>
                  <button type="button" class="btn btn-secondary">3</button>
                  <button type="button" class="btn btn-secondary">4</button>
                  <button type="button" class="btn btn-secondary">Next</button>
                </div>
            </div>
          </div>
        </div>
        <!-- /.card-body -->
    <!-- /.content -->
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
  
  </div>
<!-- jQuery -->
<script src="${path}/resources/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="${path}/resources/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="${path}/resources/dist/js/adminlte.min.js"></script>

</body>
</html>
