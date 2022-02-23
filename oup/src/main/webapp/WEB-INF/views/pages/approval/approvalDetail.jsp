<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>AdminLTE 3 | General Form Elements</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="${path}/resources/plugins/fontawesome-free/css/all.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="${path}/resources/dist/css/adminlte.min.css">
  <link rel="stylesheet" href="${path}/resources/plugins/daterangepicker/daterangepicker.css">
  <!-- iCheck for checkboxes and radio inputs -->
  <link rel="stylesheet" href="${path}/resources/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- Bootstrap Color Picker -->
  <link rel="stylesheet" href="${path}/resources/plugins/bootstrap-colorpicker/css/bootstrap-colorpicker.min.css">
  <!-- Tempusdominus Bootstrap 4 -->
  <link rel="stylesheet" href="${path}/resources/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
  <!-- Select2 -->
  <link rel="stylesheet" href="${path}/resources/plugins/select2/css/select2.min.css">
  <link rel="stylesheet" href="${path}/resources/plugins/select2-bootstrap4-theme/select2-bootstrap4.min.css">
  <!-- Bootstrap4 Duallistbox -->
  <link rel="stylesheet" href="${path}/resources/plugins/bootstrap4-duallistbox/bootstrap-duallistbox.min.css">
  <!-- BS Stepper -->
  <link rel="stylesheet" href="${path}/resources/plugins/bs-stepper/css/bs-stepper.min.css">
  <!-- dropzonejs -->
  <link rel="stylesheet" href="${path}/resources/plugins/dropzone/min/dropzone.min.css">

  <!-- ssh CSS -->
  <link rel="stylesheet" href="${path}/resources/dist/css/approval.css">

  <style>
    .approvalBody{
      text-align: center;
      vertical-align: middle;
      padding: 45rem;
    }
  </style>
  
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
            <h1>기안서 결재</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">결재</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <!-- left column -->
          <div class="col-md-8">
            <!-- Horizontal Form -->
            <div class="card card-info">
              <div class="card-header">
                <h3 class="card-title">기안서</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form class="form-horizontal">
                <div class="card-body">
                  <h1 style="text-align: center;"><b>제목</b></h1>
                  <br>
                  <div class="tableprox">
                  <table class="table table-bordered" style="width: 40%; float: right;">
                    <tbody class="approvalBody">
                      <tr>
                        <td rowspan="3" style="border: 1px solid black; writing-mode: vertical-rl; vertical-align: middle; text-align: center;">신청</td>
                        <td style="border: 1px solid black;">홍길동</td>
                        <td rowspan="3" style="border: 1px solid black; writing-mode: vertical-rl; vertical-align: middle; text-align: center;">결재</td>
                        <td style="border: 1px solid black;">팀장</td>
                        <td style="border: 1px solid black;">전결권자</td>
                        <td style="border: 1px solid black;">결정권자</td>
                      </tr>
                      <tr>
                        <td style="border: 1px solid black;">ㅇ</td>
                        <td style="border: 1px solid black;">ㅇ</td>
                        <td style="border: 1px solid black;">ㅇ</td>
                        <td style="border: 1px solid black;">ㅇ</td>
                      </tr>
                      <tr>
                        <td style="border: 1px solid black;">2017/01/19</td>
                        <td style="border: 1px solid black;">2017/01/19</td>
                        <td style="border: 1px solid black;">2017/01/19</td>
                        <td style="border: 1px solid black;">2017/01/19</td>
                      </tr>
                    </tbody>
                  </table>
                  <br>
                  <!-- Default box -->
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
			            <td><input type="date"></td>
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
                  <%-- <img src="${path}/resources/dist/발주서_1.png" style="width: 100%;"> --%>
                </div>
                <div class="card-body" style="margin: 5px; padding: 10px; border: 1px solid gray; vertical-align: middle;">
                  <b>원본 첨부파일</b><br>
                  <a href="기안서 결재.html" style="text-decoration: underline;">파일이름</a>
                </div>
                <div class="card-footer">
                  <button type="submit" class="btn btn-info">결재</button>
                  <button type="submit" class="btn btn-default">반려</button>
                  <button type="submit" class="btn btn-default float-right">취소</button>
                </div>
                <!-- /.card-footer -->
              </form>
            </div>
            <!-- /.card -->
          </div>
          
          <!--/.col (left) -->
          </div>
          <!--/.col (right) -->
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
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
</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script src="${path}/resources/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="${path}/resources/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- bs-custom-file-input -->
<script src="${path}/resources/plugins/bs-custom-file-input/bs-custom-file-input.min.js"></script>
<!-- AdminLTE App -->
<script src="${path}/resources/dist/js/adminlte.min.js"></script>
<!-- Select2 -->
<script src="${path}/resources/plugins/select2/js/select2.full.min.js"></script>
<!-- Bootstrap4 Duallistbox -->
<script src="${path}/resources/plugins/bootstrap4-duallistbox/jquery.bootstrap-duallistbox.min.js"></script>
<!-- InputMask -->
<script src="${path}/resources/plugins/moment/moment.min.js"></script>
<script src="${path}/resources/plugins/inputmask/jquery.inputmask.min.js"></script>
<!-- date-range-picker -->
<script src="${path}/resources/plugins/daterangepicker/daterangepicker.js"></script>
<!-- bootstrap color picker -->
<script src="${path}/resources/plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.min.js"></script>
<!-- Tempusdominus Bootstrap 4 -->
<script src="${path}/resources/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
<!-- Bootstrap Switch -->
<script src="${path}/resources/plugins/bootstrap-switch/js/bootstrap-switch.min.js"></script>
<!-- BS-Stepper -->
<script src="${path}/resources/plugins/bs-stepper/js/bs-stepper.min.js"></script>
<!-- dropzonejs -->
<script src="${path}/resources/plugins/dropzone/min/dropzone.min.js"></script>

<!-- Page specific script -->
<script>
$(function () {
  bsCustomFileInput.init();

  //Initialize Select2 Elements
  $('.select2').select2()

  //Initialize Select2 Elements
  $('.select2bs4').select2({
    theme: 'bootstrap4'
  })

  //Datemask dd/mm/yyyy
  $('#datemask').inputmask('dd/mm/yyyy', { 'placeholder': 'dd/mm/yyyy' })
  //Datemask2 mm/dd/yyyy
  $('#datemask2').inputmask('mm/dd/yyyy', { 'placeholder': 'mm/dd/yyyy' })
  //Money Euro
  $('[data-mask]').inputmask()

  //Date picker
  $('#reservationdate').datetimepicker({
      format: 'L'
  });

  //Date and time picker
  $('#reservationdatetime').datetimepicker({ icons: { time: 'far fa-clock' } });

  //Date range picker
  $('#reservation').daterangepicker()
  //Date range picker with time picker
  $('#reservationtime').daterangepicker({
    timePicker: true,
    timePickerIncrement: 30,
    locale: {
      format: 'MM/DD/YYYY hh:mm A'
    }
  })
  //Date range as a button
  $('#daterange-btn').daterangepicker(
    {
      ranges   : {
        'Today'       : [moment(), moment()],
        'Yesterday'   : [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
        'Last 7 Days' : [moment().subtract(6, 'days'), moment()],
        'Last 30 Days': [moment().subtract(29, 'days'), moment()],
        'This Month'  : [moment().startOf('month'), moment().endOf('month')],
        'Last Month'  : [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
      },
      startDate: moment().subtract(29, 'days'),
      endDate  : moment()
    },
    function (start, end) {
      $('#reportrange span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'))
    }
  )

  //Timepicker
  $('#timepicker').datetimepicker({
    format: 'LT'
  })

  //Bootstrap Duallistbox
  $('.duallistbox').bootstrapDualListbox()

  //Colorpicker
  $('.my-colorpicker1').colorpicker()
  //color picker with addon
  $('.my-colorpicker2').colorpicker()

  $('.my-colorpicker2').on('colorpickerChange', function(event) {
    $('.my-colorpicker2 .fa-square').css('color', event.color.toString());
  })

  $("input[data-bootstrap-switch]").each(function(){
    $(this).bootstrapSwitch('state', $(this).prop('checked'));
  })

}) //원래 있던 거

// BS-Stepper Init
document.addEventListener('DOMContentLoaded', function () {
    window.stepper = new Stepper(document.querySelector('.bs-stepper'))
  })

  // DropzoneJS Demo Code Start
  Dropzone.autoDiscover = false

  // Get the template HTML and remove it from the doumenthe template HTML and remove it from the doument
  var previewNode = document.querySelector("#template")
  previewNode.id = ""
  var previewTemplate = previewNode.parentNode.innerHTML
  previewNode.parentNode.removeChild(previewNode)

  var myDropzone = new Dropzone(document.body, { // Make the whole body a dropzone
    url: "/target-url", // Set the url
    thumbnailWidth: 80,
    thumbnailHeight: 80,
    parallelUploads: 20,
    previewTemplate: previewTemplate,
    autoQueue: false, // Make sure the files aren't queued until manually added
    previewsContainer: "#previews", // Define the container to display the previews
    clickable: ".fileinput-button" // Define the element that should be used as click trigger to select files.
  })

  myDropzone.on("addedfile", function(file) {
    // Hookup the start button
    file.previewElement.querySelector(".start").onclick = function() { myDropzone.enqueueFile(file) }
  })

  // Update the total progress bar
  myDropzone.on("totaluploadprogress", function(progress) {
    document.querySelector("#total-progress .progress-bar").style.width = progress + "%"
  })

  myDropzone.on("sending", function(file) {
    // Show the total progress bar when upload starts
    document.querySelector("#total-progress").style.opacity = "1"
    // And disable the start button
    file.previewElement.querySelector(".start").setAttribute("disabled", "disabled")
  })

  // Hide the total progress bar when nothing's uploading anymore
  myDropzone.on("queuecomplete", function(progress) {
    document.querySelector("#total-progress").style.opacity = "0"
  })

  // Setup the buttons for all transfers
  // The "add files" button doesn't need to be setup because the config
  // `clickable` has already been specified.
  document.querySelector("#actions .start").onclick = function() {
    myDropzone.enqueueFiles(myDropzone.getFilesWithStatus(Dropzone.ADDED))
  }
  document.querySelector("#actions .cancel").onclick = function() {
    myDropzone.removeAllFiles(true)
  }
  // DropzoneJS Demo Code End
</script>
</body>
</html>
