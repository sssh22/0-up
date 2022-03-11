<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
 <link rel="stylesheet" href="${path}/resources/dist/css/statement_list.css">
 


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
            <h1 style="font-size: 40px;">거래 명세서 조회</h1>
          </div>
          <br><br><br>

        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    
      


      <!-- Default box -->
      <div class="card" id="cardss">

		<form action="" >
        <table class="atb1">
          <tr>
            <td> 주문 날짜 : </td>
            <td><input type="date" name="date1" id="sdate" value="" onchange="setmin();"></td>
            <td> &nbsp; ~ &nbsp; </td>
            <td><input type="date" name="date2" id="edate" value="" min="2022-02-03"></td>
          </tr>
        </table>
        
        
        <table class="atb2">
          <tr>
            <td>
              <select name="category" id="cate">
                <option value="T.S_NO">명세서번호</option>
                <option value="T.C_NO">거래처코드</option>
                <option value="T.O_NO">주문서번호</option>
              </select>
            </td>
            <td><input type="number" name="search"></td>
            <td><input type="submit" value="검색"></td>
          </tr>
        </table>
        </form>
        <br>



        <div>
          <table class="table" id="btb">
            <thead>
              <tr>
                <th>선택</th>
                <th>주문서번호</th>
                <th>명세서번호</th><!-- 번호/미발급 (발급버튼) -->
                <th>거래처코드</th>
                <th>거래처명</th>
                <th>사업자번호</th>
                <th>SKU</th>
                <th>공급가액</th>
                <th>VAT</th>
                <th>합계금액</th><!--c set 계산  -->
                <th>삭제</th>
              </tr>
            </thead>
            <tbody>
            <c:forEach items="${slist}" var="s">
              <tr>
                <td><input type="checkbox"></td>
                <td>${s.ONo}</td>
                <c:if test="${s.SNo eq 0 || s.SNo eq null}">
                <td>미발급 <button id="btn2" onclick="add(${s.ONo});">발급</button></td>
                </c:if>
                <c:if test="${s.SNo ne 0 && s.SNo ne null}">
                <td><a href="${path}/statement/statement_detail/${s.SNo}">
               		 ${s.SNo}</a>
                </td>
                </c:if>
                <td>${s.CNo}</td>
                <td>${s.CName}</td>
                <td>${s.BNo}</td>
                <td>${s.sku}</td>
                <c:set var="total" value="${s.STotal*(10/11)}"></c:set>
                <c:if test="${s.vatYn eq 'Y'}">
                <td><fmt:formatNumber type="number" maxFractionDigits="0" value="${s.STotal}"/></td> 
                <td>VAT포함</td>
                <td><fmt:formatNumber type="number" maxFractionDigits="0" value="${s.STotal}"/></td>
                </c:if>
                <c:if test="${s.vatYn ne 'Y'}">
                <td><span style="color:blue;"><fmt:formatNumber type="number" maxFractionDigits="0" value="${total}"/></span></td>                 
                <td><span style="color:red;">VAT미포함</span></td>
                <td><span style="color:blue;"><fmt:formatNumber type="number" maxFractionDigits="0" value="${s.STotal}"/></span></td>
                </c:if>
                
                <td><button id="btn1">삭제</button></td>
              </tr>
             </c:forEach>
            </tbody>
          </table>
        </div><!-- table -->
       
        	<br>
	<div class="row">

          <div class="btn-group me-2" role="group" aria-label="First group" style="margin-left: 40%;">
            	
            		<c:if test="${empty search}">
            			<c:if test="${page.startPage == 1}">  
            			<button type="button" class="btn btn-secondary" onclick="location.href='${path}/statement/statement_list/1'">Prev</button>
            			</c:if>
            			<c:if test="${page.startPage gt 1}">  
            			<button type="button" class="btn btn-secondary" onclick="location.href='${path}/statement/statement_list/${page.startPage - 1}'">Prev</button>
            			</c:if>   
			            
			            <c:forEach var="i" begin="${page.startPage}" end="${page.endPage}">
					        <c:if test="${page.currentPage != i and i <= page.lastPage}">                  
					        	<button type="button" class="btn btn-secondary" onclick="location.href='${path}/statement/statement_list/${i}'">${i}</button>
					      	</c:if>
							<c:if test="${page.currentPage == i and i <= page.lastPage}">                  
					        	<button type="button" class="btn btn-secondary active" onclick="location.href='${path}/statement/statement_list/${i}'">${i}</button>
					        </c:if>
						</c:forEach>
			           
			            <c:if test="${page.endPage < page.lastPage}">
							<button type="button" class="btn btn-secondary" onclick="location.href='${path}/statement/statement_list/${page.endPage + 1}'">Next</button>
						</c:if>
						<c:if test="${page.endPage >= page.lastPage}">
							<button type="button" class="btn btn-secondary" onclick="location.href='${path}/statement/statement_list/${page.lastPage}'">Next</button>
						</c:if>
            		</c:if>
            		
            		
            		<!-- 검색 수정 ================ -->
            		
            		<c:if test="${not empty search}">
	                	<c:if test="${page.startPage == 1}">  
            			<button type="button" class="btn btn-secondary" onclick="location.href='${path}/project/project_list/1?search=${search}'">Prev</button>
            			</c:if>
            			<c:if test="${page.startPage gt 1}">  
            			<button type="button" class="btn btn-secondary" onclick="location.href='${path}/project/project_list/${page.startPage - 1}?search=${search}'">Prev</button>
            			</c:if>  
			           
			            <c:forEach var="i" begin="${page.startPage}" end="${page.endPage}">
					        <c:if test="${page.currentPage != i and i <= page.lastPage}">                  
					        	<button type="button" class="btn btn-secondary" onclick="location.href='${path}/project/project_list/${i}?search=${search}'">${i}</button>
					      	</c:if>
							<c:if test="${page.currentPage == i and i <= page.lastPage}">                  
					        	<button type="button" class="btn btn-secondary active" onclick="location.href='${path}/project/project_list/${i}?search=${search}'">${i}</button>
					        </c:if>
						</c:forEach>
			            
			            <c:if test="${page.endPage < page.lastPage}">
							<button type="button" class="btn btn-secondary" onclick="location.href='${path}/project/project_list/${page.endPage + 1}?search=${search}'">Next</button>
						</c:if>
						<c:if test="${page.endPage >= page.lastPage}">
							<button type="button" class="btn btn-secondary" onclick="location.href='${path}/project/project_list/${page.lastPage}?search=${search}'">Next</button>
						</c:if>
            		</c:if>
                </div><!--pager  -->
		</div>
		<!-- /row -->
        
        
      </div>
      <!-- /.card -->
      
    </div>
  <!-- /.content-wrapper -->


 <script>

   function setmin(){
	   console.log($("#sdate").val());
	   $('#edate').attr("min",$("#sdate").val());
   }

</script>

<script type="text/javascript">
	function add(param){
		window.location = '${path}/statement/statement_enroll/'+param;
	}

</script>

 <%@ include file="/WEB-INF/views/common/footer.jsp" %>
</div>
<!-- ./wrapper -->

 
 <!-- jQuery -->
<script src="${path}/resources/plugins/jquery/jquery.min.js"></script>
<!-- jquery  -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="${path}/resources/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="${path}/resources/dist/js/adminlte.min.js"></script>
 


</body>
</html>