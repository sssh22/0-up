<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<button id="confirm_id">버튼임</button>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script type="text/javascript">
		$(function(){
		  $('#confirm_id').click(function(){

		    //부모창의 id가 id인 input 태그에 'dragon' 이라는 문자열 저장하기
		     $('#id',opener.document).val('dragon');
		    
		    //아래와 같이 명시하는 것도 가능함
		   //$(opener.document).find('#id').val('dragon');

		    self.close();
		  });
		 });
	</script>
</body>
</html>