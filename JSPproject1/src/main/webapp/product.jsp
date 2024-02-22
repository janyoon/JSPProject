<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="dto.Product" %>
<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta charset="UTF-8">
<title>상세 정보</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
</head>
<body>
	<jsp:include page="menu.jsp" />
	<main class="container">
		<img src="#" style="width:610px; height:auto; text-align: center;" >
	</main>
	<%
		String id = request.getParameter("id");
		Product product = productDAO.getProductById(id);
	%>
	<div style="clear:both;"></div>
	<div class="container">
		<div class="w-50" style="float:left;">
			<div class="container text-center">
			  <div class="row">
			    <div class="col-12 fs-2 mb-2">
			     	<%=product.getPname() %>
			    </div>
			    <div class="col-12 fs-4">
			      price <%=product.getUnitPrice() %> won
			    </div>
			</div>
		</div>
		</div>
		<div class="w-50" style="float:left;">
			<div class="container text-center">
			  <div class="row">
			    <div class="col-12 mb-1">
			      Column
			    </div>
			    <div class="col-12 mb-1">
			      Column
			    </div>
			    <div class="col-12">
			      Column
			    </div>
			</div>
		</div>
	</div>
</div>

	
	
	<jsp:include page="footer.jsp"/>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
</body>
</html>