<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
<script src="http://code.jquery.com/jquery-latest.js"></script>



<form>
      부서명: 
      <select name="dept_name" id="dept_name" onchange="getTeam(this.value);">
      	<option value="">선택</option>
        <c:forEach items="${dlist}" var="d"> 
       	 <option value="${d.departCode}">${d.departName}</option>
        </c:forEach>
      </select>
      팀명: 
      <select name="team_name" id="team_name">
      <option value="">선택</option>
      <%-- <c:if test="${!empty tlist}">
	      <c:forEach items="${tlist}" var="t"> 
	       	 <option value="${t.teamCode}">${t.teamName}</option>
	        </c:forEach>
      </c:if> --%>
      </select>
      
      <input type="submit" value="검색">
</form>


    <table border="1px" id="member">
      <tr>
        <td>사원번호</td>
        <td>이름</td>
        <td>팀명</td>
        <td>부서명</td>
        <td>직급</td>
      </tr>
    </table>


<script type="text/javascript">

function getTeam(param){

	
	alert("onchange작동"+param);

		$.ajax({
			url:"/oup/search_member.do",
			type:"POST",
			data:{departCode : param},
			success: function(data){
					alert("성공");
					console.log(data);
					console.log(data[0].teamName);
					
					},
			error: function(){
					alert("에러");
			}
		});//ajax
	
	
};

</script>




</body>
</html>