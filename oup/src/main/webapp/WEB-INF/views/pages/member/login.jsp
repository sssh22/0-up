<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>AdminLTE 3 | Log in</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="${path}/resources/plugins/fontawesome-free/css/all.min.css">
  <!-- icheck bootstrap -->
  <link rel="stylesheet" href="${path}/resources/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="${path}/resources/dist/css/adminlte.min.css">

<style>

  * {
      margin: 0;
      padding: 0;
  }
  /* Reset */
  body {
      background-image: url("${path}/resources/dist/img/univ3.png");
      background-size: cover;
      background-position: center;
      background-repeat: no-repeat;
      min-height: 100vh;
  }
  .glassmorphism {
      position: fixed;
      top: 50%;
      left: 50%;
      transform: translate(-50%,-50%);
      padding: 20px;
      box-sizing: border-box;
      background-color: rgba(255,255,255,0.17);
      backdrop-filter: blur(7px);
      /* border: 1px solid #8977ad; */
      border-radius: 15px;
      box-shadow: 0 10px 25px rgba(51, 51, 51,0.5);
      width: 400px;
      height: 500px;
      
      display: flex;
      flex-direction: column;
      justify-content: center;
      text-align: center;
  }
  h1 {
      color: white;
      font-size: 20px;
  }
  .icon {
      display: block;
      margin: 20px auto;
      border-radius: 500px;
      width: 120px;
      border: 5px solid rgba(173, 216, 230,0.8);
  }
  .txt {
      color: white;
  }
  #o{
    font-size: 70px;
    color: #947cc5;
  }
  #up{
    font-size: 50px;
  }

  #t{
    font-size: 70px;
    color: #685a85;
  }

  .btn{
    background-color: #8977ad;
    margin-top: 50px;
    margin-left: 20%;
    width: 60%;

  }
  .btn:hover{
    background-color: #63567c;
    color: white;
  }


  .input-group{
    width: 270px;
    margin-left: 12%;
  }
  .form-control:focus{
    border: 4px solid #6f608b;
    outline: rgba(198, 173, 230, 0.8);
  }

  
</style>

</head>


<body class="hold-transition login-page">

  <body>
    <div class="glassmorphism">
        <h1>
          <span id="t">[&nbsp;&nbsp;&nbsp;</span>
          <span id="o">0</span><span id="up">UP</span>
          <span id="t">&nbsp;&nbsp;&nbsp;]</span>
        </h1>
        <br><br>
        
        
        <form action="" method="post">
          <div class="input-group mb-3">
            <input type="text" class="form-control" placeholder="ID" name="employeeId">
            <div class="input-group-append">
              <div class="input-group-text">
                <span class="fas fa-envelope"></span>
              </div>
            </div>
          </div>
          <div class="input-group mb-3">
            <input type="password" class="form-control" placeholder="Password" name="employeePwd">
            <div class="input-group-append">
              <div class="input-group-text">
                <span class="fas fa-lock"></span>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-8">
              
            </div>
            <!-- /.col -->
            
            <div class="col-12">
              <button type="submit" class="btn btn-block">Sign In</button>
            </div>
            <!-- /.col -->
          </div>
        </form>
        
    </div>
</body>


</body>
</html>
