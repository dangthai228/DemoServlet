<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" import="com.thaind.model.*,com.thaind.dao.*,java.util.*"%>
<!DOCTYPE html>
<head>

<%@include file ="../head/header.jsp" %>
<title>Chọn chặng đua </title>
</head>
<body>
<div class="text-center text-md-right">
		<h1>Chọn chặng đua</h1>
	</div>

	<div class="container">
		<h2>Danh sách chặng đua</h2>
		<br>
		<form action="<%=request.getContextPath()%>/admin/ChangduaServlet">
		<table class="table table-bordered">
			<thead>
				<tr>
					<th>STT</th>
					<th>Tên</th>
					<th>Số vòng đua</th>
					<th>Địa điểm</th>
					<th>Thời gian</th>
					<th>Mô tả</th>
					<th>Chọn</th>
				</tr>
			</thead>
			<%
			ArrayList<Changdua> listcd= (ArrayList<Changdua>) session.getAttribute("listcd");
			if(listcd!= null){
			for(int i=0;i<listcd.size();i++){
			%>
			<tbody>
				<tr>
					<td><%=(i+1)%></td>
					<td><%=listcd.get(i).getTen() %></td>
					<td><%=listcd.get(i).getSovong() %></td>
					<td><%=listcd.get(i).getDiadiem() %></td>
					<td><%=listcd.get(i).getThoigian() %></td>
					<td><%=listcd.get(i).getMota()%></td>
					<td>
					<div class="form-check">
							<input type="checkbox" name="check" onclick="onlyOne(this)" value= "<%=listcd.get(i).getId()%>"> 
							
						</div>
					</td>
				</tr>
			</tbody>
			<%
				}
			}
			%>
		</table>
		</form>
		<button type="button" class="btn btn-primary" name="back" onclick="history.back()">Quay lại</button>
		&nbsp;
		<button type="button" class="btn btn-primary" name="tieptuc" onclick="myFunction()" >Tiếp tục</button>
	
		<script>
			
			function myFunction() {
				  var checkbox = document.getElementsByName('check');
				  var result = "";
				  for (var i = 0; i < checkbox.length; i++){
	                    if (checkbox[i].checked === true){
	                        result = checkbox[i].value;
	                    }
	               }
				  	if(result==="")
				  		{
				  			alert("Chọn chặng đua trước khi tiếp tục");
				  		}
				  	else
				  		{
				  		window.location="./DoiduaServlet?idcd="+result;
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
<footer id= "footer">
<%@include file ="../footer/footer.jsp" %>
</footer>
</body>
</html>