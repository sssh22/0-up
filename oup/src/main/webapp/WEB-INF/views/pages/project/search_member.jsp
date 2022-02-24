<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form>
      부서명: 
      <select>
      
        <option value="">기획/영업</option>
        <option value="">물류</option>
        <option value="">인사</option>
      </select>
      팀명: 
      <select>
        <option value="">1팀</option>
        <option value="">2팀</option>
        <option value="">3팀</option>
      </select>
      
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


</body>
</html>