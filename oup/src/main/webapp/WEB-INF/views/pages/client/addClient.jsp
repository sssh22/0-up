<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>거래처 등록</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="../../plugins/fontawesome-free/css/all.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="../../dist/css/adminlte.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head>
<body class="hold-transition sidebar-mini">

  <div class="offcanvas offcanvas-start" id="home">
    <input type="hidden" value="https://haenny.tistory.com/191  (jsp로 바꿀때 주소 가져오기 오픈 api사용 방법)">
    <div class="offcanvas-header">
      <h1 class="offcanvas-title">주소찾기</h1>
      <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas"></button>
    </div>
    <div class="offcanvas-body">
      <input type="text" id="inputTaxRegistrationID" class="form-control col-md" value="간단주소">
      <input type="text" id="inputTaxRegistrationID" class="form-control col-md" value="상세 주소 경기 수원시 장안구 율전동2123-1 .....">
      <button class="btn btn-secondary" type="button">확인</button>
    </div>
  </div>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-md">
          <div class="card card-primary">
            <div class="card-header">
              <h3>거래처 정보 등록</h3>

              <div class="card-tools">
                <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
                  <i class="fas fa-minus"></i>
                </button>
              </div>
            </div>
            <div class="card-body">
              <div class="form-group">
                <label>거래처 코드</label>
                <input type="text" id="clientCode" class="form-control" value="SeqNum">
              </div>
              <div class="form-group">
                <label>상호이름</label>
                <input type="text" id="clientName" class="form-control" value="(주)영업 2팀">
              </div>
              <div class="form-group">
                <label>사업자등록번호</label><br>
                <select id="inputStatus" class="form-control col-md-3">
                  <option>사업자등록번호</option>
                  <option>비사업자(내국인)</option>
                  <option>비사업자(외국인)</option>
                </select>
                <input type="text" id="inputTaxRegistrationID" class="form-control col-md-3" value="사업자 번호 1010101010">
              </div><br><br>
              <div class="form-group">
                <label>종사업장번호</label>
                <input type="text" id="inputTaxRegistrationID" class="form-control" value="종사업장번호 1010">
              </div>
              <div class="form-group">
                <label>대표자명</label>
                <input type="text" id="inputReaderName" class="form-control" value="홍길동">
              </div>
              <div class="form-group">
                <label>업형</label>
                <input type="text" id="inputTaxRegistrationID" class="form-control" value="서비스">
              </div>
              <div class="form-group">
                <label>품목</label>
                <input type="text" id="inputTaxRegistrationID" class="form-control" value="제조">
              </div>
              <div class="form-group">
                <label>담당자</label>
                <input type="text" id="inputTaxRegistrationID" class="form-control" value="홍길동2">
              </div>
              <div class="form-group">
                <label>전화</label>
                <input type="text" id="inputTaxRegistrationID" class="form-control" value="010-1010-1010">
              </div>
              <div class="form-group">
                <label>Fax</label>
                <input type="text" id="inputTaxRegistrationID" class="form-control" value="010-1010-1010">
              </div>
              <div class="form-group">
                <label>Email</label>
                <input type="text" id="inputTaxRegistrationID" class="form-control" value="aabbcc@aabbcc.com">
              </div>
              <div class="form-group">
                <label>주소</label><br>
                <div class="input-group mb-3">
                  <input type="text" class="form-control col-md-3" placeholder="간단 주소">
                  <button class="btn btn-secondary" data-bs-toggle="offcanvas" type="submit" data-bs-target="#home">주소찾기</button>
                </div>
                <input type="text" id="inputTaxRegistrationID" class="form-control col-md" value="상세 주소 경기 수원시 장안구 율전동2123-1 ....." readonly>
              </div>
              <div class="form-group">
                <label>업종별구분</label><br>
                <select id="inputStatus" class="form-control col-md-3">
                  <option>일반</option>
                  <option>관세</option>
                </select>
              </div><br><br>
              <div class="form-group">
                <label>적요</label>
                <input type="text" id="inputTaxRegistrationID" class="form-control" value="특이사항">
              </div>
              <div class="form-group">
                <label>거래처계층그룹</label>
                <button type="button" class="btn btn-secondary " style="margin-left: 40px;">계층그룹</button><br>
                <div class="input-group mb-3">
                  <input type="text" id="inputTaxRegistrationID" class="form-control col-md-3" placeholder="자동차판매처" readonly>
                  <input type="text" id="inputTaxRegistrationID" class="form-control col-md-3" placeholder="도매/ 소매" readonly>
                </div>
              </div>
              <div class="form-group">
                <label>여신한도</label>
                <input type="number" id="inputTaxRegistrationID" class="form-control" value="300000000">
              </div>
              <div class="form-group">
                <label>여신기한 (월/일)</label><br>
                <select id="inputMonth" class="form-control col-md-3" >
                  <option>0</option>
                  <option>1</option>
                  <option>2</option>
                  <option>3</option>
                  <option>4</option>
                  <option>5</option>
                  <option>6</option>
                  <option>7</option>
                  <option>8</option>
                  <option>9</option>
                  <option>10</option>
                  <option>11</option>
                  <option>12</option>
                </select>
                <select id="inputDay" class="form-control col-md-3">
                  <option>0</option>
                  <option>1</option>
                  <option>2</option>
                  <option>3</option>
                  <option>4</option>
                  <option>5</option>
                  <option>6</option>
                  <option>7</option>
                  <option>8</option>
                  <option>9</option>
                  <option>10</option>
                  <option>11</option>
                  <option>12</option>
                  <option>13</option>
                  <option>14</option>
                  <option>15</option>
                  <option>16</option>
                  <option>17</option>
                  <option>18</option>
                  <option>19</option>
                  <option>20</option>
                  <option>21</option>
                  <option>22</option>
                  <option>23</option>
                  <option>24</option>
                  <option>25</option>
                  <option>26</option>
                  <option>27</option>
                  <option>28</option>
                  <option>29</option>
                  <option>30</option>
                </select>
              </div>
              <br><br>
              <div class="form-group" style="float: right; margin-right: 20px;">
                <button type="button" class="btn btn-outline-primary btn-lg">등록</button>
                <button type="button" class="btn btn-outline-primary btn-lg">취소</button>
              </div>
            </div>
          </div>
        </div>

<!-- jQuery -->
<script src="../../plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="../../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="../../dist/js/adminlte.min.js"></script>
</body>
</html>
