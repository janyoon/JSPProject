<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="dto.Product" %>
<%@ page import="dao.ProductRepository"%>
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
	<main class="container text-center p-5 m-5">
	<%
		String id = request.getParameter("id");
		ProductRepository dao = ProductRepository.getInstance();
		Product product = dao.getProductById(id);
	%>
		<img src="./resource/images/<%=product.getFilename()%>" width="610px" height="auto">
	</main>
	<div style="clear:both;"></div>
	<div class="container">
		<div class="w-50" style="float:left;">
			<div class="container text-center">
			  	<div class="row">
			    	<div class="col-12 fs-2 mb-3">
			     		<%=product.getPname() %>
			    	</div>
			    	<div class="col-12 fs-5">
			      		price <%=product.getUnitPrice() %> won
			    	</div>
				</div>
			</div>
		</div>
		<div class="w-50" style="float:left;">
			<div class="container text-center">
			  	<div class="row">
			  		<div class="col-12 mb-1 pt-2">
			      		<b>Detail :</b> <%=product.getDescription() %>
			    	</div>
			    	<div class="col-12 mb-1">
			      		<b>Size :</b> <%=product.getSize() %>
			    	</div>
			    	<div class="col-12">
			    		<b>Brand :</b> <%=product.getManufacturer() %>
			    	</div>
			    	<div class="col-12 text-end">
			    		<a href="#" class="btn btn-secondary"><svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-cart" viewBox="0 0 16 16">
  							<path d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .491.592l-1.5 8A.5.5 0 0 1 13 12H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5M3.102 4l1.313 7h8.17l1.313-7zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4m7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4m-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2m7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2"/>
							</svg> add cart&raquo;</a>
			    	</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp"/>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
</body>
</html>