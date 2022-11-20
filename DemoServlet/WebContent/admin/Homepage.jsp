<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" %>
<!DOCTYPE html>
<head>
<meta charset="UTF-8" />
<%@include file ="../head/header.jsp" %>
<title>HomePage</title>
</head>
<body>
<div class="text-center text-md-right">
<h1>Hệ thống đăng ký lịch thi đấu đua xe F1</h1>
</div>
&nbsp;&nbsp;&nbsp;
<div class="row" align="center">
  <div class="col-sm-4">
    <div class="card" style="width: 20rem;">
      <div class="card-body">
        <h5 class="card-title">Đăng ký thi đấu</h5>
        <p class="card-text">Tạo lịch thi đấu, ghép đội cho tay đua trong từng chặng đua.</p>
        <form method="get" action="MuagiaiServlet">
        <button class="btn btn-primary">Đăng ký ngay</button>
        </form>
        
      </div>
    </div>
  </div>
  <div class="col-sm-4">
    <div class="card" style="width: 20rem;">
      <div class="card-body">
        <h5 class="card-title">Cập nhật điểm</h5>
        <p class="card-text">Cập nhật kết quả thi đấu cho tay đua trong từng chặng đua</p>
        <a href="#" class="btn btn-danger">Cập nhật</a>
      </div>
    </div>
  </div>
  <div class="col-sm-4">
    <div class="card" style="width: 20rem;">
      <div class="card-body">
        <h5 class="card-title">Chỉnh sửa thông tin</h5>
        <p class="card-text">Chỉnh sửa thêm bớt thông tin tay đua, đội đua, tay đua.</p>
        <a href="#" class="btn btn-danger">Chỉnh sửa</a>
      </div>
    </div>
  </div>
</div>
<footer id= "footer">
<%@include file ="../footer/footer.jsp" %>
</footer>
</body>
</html>