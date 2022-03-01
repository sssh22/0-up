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



<form action="/oup/project/search_m">
      부서명: 
      <select name="dept_code" id="dept_code" onchange="getTeam(this.value);">
      	<option value="">선택</option>
        <c:forEach items="${dlist}" var="d"> 
       	 <option value="${d.departCode}">${d.departName}</option>
        </c:forEach>
      </select>
      팀명: 
      <select name="team_code" id="team_code">
      <option value="">선택</option>
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
	$("#team_code").empty();
	
		$.ajax({
			url:"/oup/project/search_member.do",
			type:"POST",
			data:{departCode : param},
			success: function(data){
					
					console.log(data);
					console.log(data[0].teamName);
					
					$(data).each(function(i){
						$("#team_code").append("<option value=\""+data[i].teamCode+"\">"+data[i].teamName+"</option>")
					});//each

					},
			error: function(){
					alert("에러");
			}
		});//ajax
	
	
};

</script>




</body>
</html>