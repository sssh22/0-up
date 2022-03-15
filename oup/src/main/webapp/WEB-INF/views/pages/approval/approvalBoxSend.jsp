<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>AdminLTE 3 | Mailbox</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="${path}/resources/plugins/fontawesome-free/css/all.min.css">
  <!-- icheck bootstrap -->
  <link rel="stylesheet" href="${path}/resources/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="${path}/resources/dist/css/adminlte.min.css">
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
            <h1>보낸결재</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">보낸결재</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-md-2">
          <a href="${path}/approval/send" class="btn btn-primary btn-block mb-3" style="background-color: #7b51c6; border-color: #7b51c6">결재작성</a>

          <div class="card card-purple card-outline">
            <div class="card-header">
              <h3 class="card-title">결재</h3>

              <div class="card-tools">
                <button type="button" class="btn btn-tool" data-card-widget="collapse">
                  <i class="fas fa-minus"></i>
                </button>
              </div>
            </div>
            <div class="card-body p-0">
              <ul class="nav nav-pills flex-column">
                <li class="nav-item active">
                  <a href="${path}/approval/receivebox" class="nav-link">
                    <i class="fas fa-inbox"></i> 받은결재
                  </a>
                </li>
                <li class="nav-item">
                  <a href="${path}/approval/sendbox" class="nav-link">
                   <i class="nav-icon fas fa-file"></i>보낸결재
                  </a>
                </li>
                <li class="nav-item">
                  <a href="${path}/approval/complete" class="nav-link">
                    <i class="nav-icon fas fa-edit"></i>완료
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
          <div class="card card-purple card-outline">
            <div class="card-header">
              <h3 class="card-title">보낸결재</h3>
              <!-- /.card-tools -->
            </div>
            <!-- /.card-header -->
            <div class="card-body p-0">
              <div class="mailbox-controls">
                <!-- Check all button -->
                <button type="button" class="btn btn-default btn-sm checkbox-toggle"><i class="far fa-square"></i>
                </button>
                <div class="btn-group">
                  <button type="button" class="btn btn-default btn-sm" onclick="del();">
                    <i class="far fa-trash-alt"></i>
                  </button>
                </div>
                <!-- /.btn-group -->
                <button type="button" class="btn btn-default btn-sm">
                  <i class="fas fa-sync-alt"></i>
                </button>
                <div class="float-right">
                  <div class="btn-group" role="group" aria-label="First group">
	                	<button type="button" class="btn btn-default btn-sm" onClick="location.href='${path}/approval/sendbox/${page.startPage - 1}'"><i class="fas fa-chevron-left"></i></button>
			            <c:forEach var="i" begin="${page.startPage}" end="${page.endPage}">
					        <c:if test="${page.currentPage != i and i <= page.lastPage}">       
					        	<button type="button" class="btn btn-default btn-sm" onClick="location.href='${path}/approval/sendbox/${i}'">${i}</button>
					      	</c:if>
							<c:if test="${page.currentPage == i and i <= page.lastPage}">                  
					        	<button type="button" class="btn btn-default btn-sm" onClick="location.href='${path}/approval/sendbox/${i}'">${i}</button>
					        </c:if>
						</c:forEach>
			            <c:if test="${page.endPage < page.lastPage}">
							<button type="button" class="btn btn-default btn-sm" onClick="location.href='${path}/approval/sendbox/${page.endPage + 1}'"><i class="fas fa-chevron-right"></i></button>
						</c:if>
						<c:if test="${page.endPage >= page.lastPage}">
							<button type="button" class="btn btn-default btn-sm" onClick="location.href='${path}/approval/sendbox/${page.lastPage}'"><i class="fas fa-chevron-right"></i></button>
						</c:if>
	                </div>
	               </div>
              </div>
              <div class="table-responsive mailbox-messages">
                <table class="table table-hover table-striped">
                  <thead>
                    <tr>
                      <th class="mailbox-name" colspan="2">기안자</th>
                      <th class="mailbox-subject">구분</th>
                      <th class="mailbox-subject">제목</th>
                      <th class="mailbox-attachment">기안일자</th>
                      <th class="mailbox-date">결재일자</th>
                    </tr>
                  </thead>
                  <tbody>
                  	<c:forEach items="${list}" var="l" varStatus="status">	
	                  <tr>
	                    <td class="mailbox-name" colspan="2">${l.APicName}</td>
	                    <c:if test="${l.dcCode eq 'SP'}">
	                    	<td class="mailbox-subject">거래명세서</td>
	                    </c:if>
	                    <c:if test="${l.dcCode eq 'PJ'}">
	                    	<td class="mailbox-subject">프로젝트</td>
	                    </c:if>
	                    <c:if test="${l.dcCode eq 'OD'}">
	                    	<td class="mailbox-subject">주문서</td>
	                    </c:if>
	                    <td class="mailbox-subject">${l.ATitle}</td>
	                    <td class="mailbox-attachment"><fmt:formatDate value="${l.ADate}" pattern="yyyy-MM-dd"/></td>
	                    <c:if test="${l.aeDate4 ne null}">
		                    <td class="mailbox-date"><fmt:formatDate value="${l.aeDate4}" pattern="yyyy-MM-dd"/></td>
	                    </c:if>
	                     <c:if test="${l.aeDate4 eq null}">
		                    <td class="mailbox-date">대기중</td>
	                    </c:if>
	                  </tr>
                  </c:forEach>
                  </tbody>
                </table>
                <!-- /.table -->
              </div>
              <!-- /.mail-box-messages -->
            </div>
            <!-- /.card-body -->
            <div class="card-footer p-0">
              <div class="mailbox-controls">
                <!-- Check all button -->
                <button type="button" class="btn btn-default btn-sm checkbox-toggle">
                  <i class="far fa-square"></i>
                </button>
                <div class="btn-group">
                  <button type="button" class="btn btn-default btn-sm" onclick="del();">
                    <i class="far fa-trash-alt"></i>
                  </button>
                </div>
                <!-- /.btn-group -->
                <button type="button" class="btn btn-default btn-sm">
                  <i class="fas fa-sync-alt"></i>
                </button>
                <div class="float-right">
                  <div class="btn-group" role="group" aria-label="First group">
	                	<button type="button" class="btn btn-default btn-sm" onClick="location.href='${path}/approval/sendbox/${page.startPage - 1}'"><i class="fas fa-chevron-left"></i></button>
			            <c:forEach var="i" begin="${page.startPage}" end="${page.endPage}">
					        <c:if test="${page.currentPage != i and i <= page.lastPage}">       
					        	<button type="button" class="btn btn-default btn-sm" onClick="location.href='${path}/approval/sendbox/${i}'">${i}</button>
					      	</c:if>
							<c:if test="${page.currentPage == i and i <= page.lastPage}">                  
					        	<button type="button" class="btn btn-default btn-sm" onClick="location.href='${path}/approval/sendbox/${i}'">${i}</button>
					        </c:if>
						</c:forEach>
			            <c:if test="${page.endPage < page.lastPage}">
							<button type="button" class="btn btn-default btn-sm" onClick="location.href='${path}/approval/sendbox/${page.endPage + 1}'"><i class="fas fa-chevron-right"></i></button>
						</c:if>
						<c:if test="${page.endPage >= page.lastPage}">
							<button type="button" class="btn btn-default btn-sm" onClick="location.href='${path}/approval/sendbox/${page.lastPage}'"><i class="fas fa-chevron-right"></i></button>
						</c:if>
	                </div>
                </div>
                <!-- /.float-right -->
              </div>
            </div>
          </div>
          <!-- /.card -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
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
<!-- Page specific script -->
<script>
  $(function () {
    //Enable check and uncheck all functionality
    $('.checkbox-toggle').click(function () {
      var clicks = $(this).data('clicks')
      if (clicks) {
        //Uncheck all checkboxes
        $('.mailbox-messages input[type=\'checkbox\']').prop('checked', false)
        $('.checkbox-toggle .far.fa-check-square').removeClass('fa-check-square').addClass('fa-square')
      } else {
        //Check all checkboxes
        $('.mailbox-messages input[type=\'checkbox\']').prop('checked', true)
        $('.checkbox-toggle .far.fa-square').removeClass('fa-square').addClass('fa-check-square')
      }
      $(this).data('clicks', !clicks)
    })

    //Handle starring for font awesome
    $('.mailbox-star').click(function (e) {
      e.preventDefault()
      //detect type
      var $this = $(this).find('a > i')
      var fa    = $this.hasClass('fa')

      //Switch states
      if (fa) {
        $this.toggleClass('fa-star')
        $this.toggleClass('fa-star-o')
      }
    })
  })
  
  	//삭제 버튼 클릭
	function del() {
		//삭제할 번호들 가져오기
		//가져온 번호들을 ,,, 하나의 문자열로 합치기
		let result = "";
		let delArr = document.getElementsByClassName('checkbox-del');
		
		for(let i = 0; i < delArr.length; i++) {
			let t = delArr[i];
			if(t.checked) {
				//console.log(t.parentNode.parentNode.children[1].innerText); //번거로운 방법
				console.log(t.value); //체크박스에 value를 넣어줌
				result += t.value + ',';
			}
		}
		
		//삭제 요청 보내기 (삭제할 번호 전달해주면서)
		$.ajax({
			url : "${path}/mail/sdelete",
			data : {"str" : result},
			type : 'post',
			success : function(data) {
				console.log(data);
			},
			error : function(e) {
				console.log(e);
			},
			complete : function() {
				//새로고침
				window.location.reload();
			}
		});
	}
</script>
</body>
</html>
