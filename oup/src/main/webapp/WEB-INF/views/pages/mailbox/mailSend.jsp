<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>AdminLTE 3 | Compose Message</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="${path}/resources/plugins/fontawesome-free/css/all.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="${path}/resources/dist/css/adminlte.min.css">
  <!-- summernote -->
  <link rel="stylesheet" href="${path}/resources/plugins/summernote/summernote-bs4.min.css">
</head>
<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">
  <%@ include file="../../common/menubar-sidebar.jsp" %>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>메일작성</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">메일작성</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-md-2">
            <a href="${path}/mail/rbox" class="btn btn-primary btn-block mb-3">받은 메일함</a>

            <div class="card">
              <div class="card-header">
                <h3 class="card-title">메일함</h3>

                <div class="card-tools">
                  <button type="button" class="btn btn-tool" data-card-widget="collapse">
                    <i class="fas fa-minus"></i>
                  </button>
                </div>
              </div>
              <div class="card-body p-0">
                <ul class="nav nav-pills flex-column">
                  <li class="nav-item active">
                    <a href="#" class="nav-link">
                      <i class="fas fa-inbox"></i> 받은메일함
                      <span class="badge bg-primary float-right">12</span>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="#" class="nav-link">
                      <i class="far fa-envelope"></i> 보낸메일함
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="#" class="nav-link">
                      <i class="far fa-trash-alt"></i> 휴지통
                    </a>
                  </li>
                </ul>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
          <!-- /.col -->
          <div class="col-md-9">
            <div class="card card-primary card-outline">
            <form action="" method="post" enctype="multipart/form-data">
              <div class="card-header">
                <h3 class="card-title">새 메일 작성</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
              	<div class="form-group">
                  <input class="form-control" name="recipientId" placeholder="받는사람 아이디">
                  <input type="hidden" class="form-control" name="senderId" value="${loginEmployee.employeeId}">
                </div>
                <div class="form-group">
                  <input class="form-control" name="mailTitle" placeholder="제목">
                </div>
                <div class="form-group">
                    <textarea id="compose-textarea" name="mailContent" class="form-control" style="height: 300px">
                      
                    </textarea>
                </div>
                <div class="form-group">
                  <div class="btn btn-default btn-file">
                    <i class="fas fa-paperclip"></i> 첨부파일
                    <input type="file" name="attachment" onchange="preview();" multiple="multiple">
                  </div> <span id="filename"></span>
                  <p class="help-block">최대. 32MB</p>
                </div>
              
              </div>
              <!-- /.card-body -->
              <div class="card-footer">
                <div class="float-right">
                  <button type="reset" class="btn btn-default"><i class="fas fa-times"></i> 취소</button>
                  <button type="submit" class="btn btn-primary"><i class="far fa-envelope"></i> 보내기</button>
                </div>
              </div>
              </form>
              <!-- /.card-footer -->
            </div>
            <!-- /.card -->
          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
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
</div>
<!-- ./wrapper -->
<!-- jQuery -->
<script src="${path}/resources/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="${path}/resources/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="${path}/resources/dist/js/adminlte.min.js"></script>
<!-- Summernote -->
<script src="${path}/resources/plugins/summernote/summernote-bs4.min.js"></script>
<!-- Page specific script -->
<script type="text/javascript">
	
</script>
<script>
	function preview() {
		let fileTag = document.querySelector('input[name=attachment]');
		let divTag = document.querySelector('#filename');
		
		if(fileTag.files.length > 0) {
			divTag.innerHTML = "";
			for(let i = 0; i < fileTag.files.length; i++) {
				divTag.innerHTML += fileTag.files[i].name;
				divTag.innerHTML += "&nbsp&nbsp&nbsp&nbsp";
			}
		}else {
			//취소 버튼을 눌렀을 때
			//div 안에 싹 다 비우기
			divTag.innerHTML = "";
		}
	}

  $(function () {
    //Add text editor
    $('#compose-textarea').summernote()
  })
</script>
</body>
</html>
