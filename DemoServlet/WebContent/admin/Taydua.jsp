<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" import="com.thaind.model.*,com.thaind.dao.*,java.util.*"%>
<!DOCTYPE html>
<head>
<%@include file ="../head/header.jsp" %>
<title>Chọn tay đua</title>
</head>
<body>
<%
	int sodk= Integer.parseInt(session.getAttribute("sodk").toString());
	int kq= (int)session.getAttribute("kq");
%>
<div class="text-center text-md-right">
		<h1>Chọn tay đua</h1>
	</div>
	<h4>Số lượng đăng ký tối đa: <%=sodk %></h4>
	<div class="container">
		<h2>Danh sách tay đua</h2>
		<br>
		<table class="table table-bordered">
			<thead>
				<tr>
					<th>STT</th>
					<th>Tên</th>
					<th>Ngày sinh</th>
					<th>Quốc tịch</th>
					<th>Tiểu sử</th>
					<th>Chọn</th>
				</tr>
			</thead>
			<%
			ArrayList<Taydua> listtd =(ArrayList<Taydua>) session.getAttribute("listtd");
			if(listtd!= null){
			for(int i=0;i<listtd.size();i++){
			%>
			<tbody>
				<tr>
					<td><%=(i+1)%></td>
					<td><%=listtd.get(i).getTen() %></td>
					<td><%=listtd.get(i).getNgaysinh() %></td>
					<td><%=listtd.get(i).getQuoctich() %></td>
					<td><%=listtd.get(i).getTieusu() %></td>
					<% 
					if(sodk==2)
					{
					%>
					<td>
					<div class="form-check">
							<input type="checkbox" name="check"  value= "<%=listtd.get(i).getId()%>"> 
							
						</div>
					</td>
					<%}else{ %>
					<td>
					<div class="form-check">
							<input type="checkbox" name="check" onclick="onlyOne(this)" value= "<%=listtd.get(i).getId()%>"> 
							
						</div>
					</td>
					<%} %>
				</tr>
			</tbody>
			<%
				}
			}
			%>
		</table>
		<button type="button" class="btn btn-primary" name="back" onclick="history.back()">Quay lại</button>
		&nbsp;
		<button type="button" class="btn btn-primary" name="tieptuc" onclick="myFunction()" >Lưu</button>
		<%
		if (kq==1) {
		%>
		<script type="text/javascript">
	alert("Đăng kí thành công!");
	window.location="./Homepage.jsp";
	</script>
		<%
		} else if(kq==-1) {
		%>
		<script>
		alert("Lỗi đăng kí!");
		history.back();
	</script>
		<%
		}
		%>
		<script>
			
			function myFunction() {
				  var checkbox = document.getElementsByName('check');
				  var result1 = "";var result2="0";var dem=0;
				  for (var i = 0; i < checkbox.length; i++){
	                    if (checkbox[i].checked === true){
	                    	if(result1===""){
	                        	result1 = checkbox[i].value;
	                    	}
	                    	else{
	                    		result2=checkbox[i].value;
	                    	}
	                        dem++;
	                    }
	               }
				  	if(dem===0)
				  	{
				  			alert("Chọn tay đua trước khi tiếp tục");
				  	}
				  	else if(dem>2)
				  		{
				  			alert("Đã chọn nhiều hơn 2 tay đua vui lòng chọn lại");
				  		}
				  	else
				  		{
				  	
				  		window.location="./LuuServlet?idtd1="+result1+"&idtd2="+result2;
				  		}
				  	
			}
			
			function onlyOne(checkbox) {
			    var checkboxes = document.getElementsByName('check')
			    checkboxes.forEach((item) => {
			        if (item !== checkbox) 
			        {
			        	item.checked = false
			        }
			    })
			}
		</script>
	</div>

</body>
&nbsp;&nbsp;&nbsp;
<%@include file ="../footer/footer.jsp" %>
</html>