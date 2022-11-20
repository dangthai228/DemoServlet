<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" import="com.thaind.model.*,com.thaind.dao.*,java.util.*"%>
<!DOCTYPE html>
<head>

<%@include file ="../head/header.jsp" %>
<title>Chọn đội đua </title>
</head>
<body>

	<div class="text-center text-md-right">
		<h1>Chọn đội đua</h1>
	</div>

	<div class="container">
		<h2>Danh sách đội đua</h2>
		<br>
		<table class="table table-bordered">
			<thead>
				<tr>
					<th>STT</th>
					<th>Tên</th>
					<th>Hãng</th>
					<th>Mô tả</th>
					<th>Chọn</th>
				</tr>
			</thead>
			<%
			ArrayList<Doidua> listdd= (ArrayList<Doidua>) session.getAttribute("listdd");
			if(listdd!= null){
			for(int i=0;i<listdd.size();i++){
			%>
			<tbody>
				<tr>
					<td><%=(i+1)%></td>
					<td><%=listdd.get(i).getTen() %></td>
					<td><%=listdd.get(i).getHang() %></td>
					<td><%=listdd.get(i).getMota() %></td>
					<td>
					<div class="form-check">
							<input type="checkbox" name="check" onclick="onlyOne(this)" value= "<%=listdd.get(i).getId()%>"> 
							
						</div>
					</td>
				</tr>
			</tbody>
			<%
				}
			}
			%>
		</table>
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
				  			alert("Chọn đội đua trước khi tiếp tục");
				  		}
				  	else
				  		{
				  		window.location="./TayduaServlet?iddd="+result;
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