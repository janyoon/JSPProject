<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Product" %>
<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta charset="UTF-8">
<title>Chair Product</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
</head>
<body>
	<jsp:include page="menu.jsp" />
	<main  class="container">
		
		<div style="float: left;">
		<img src="./img/ch88.jpg" width="653px" height="476px">
		</div>
		<div style="border: 1px; margin:200px 30px 0px; float: left; width:400px;	">
      		<div class="fw-bold fs-3">글자넣자 글자</div>
        	<p>
	          "Lorem ipsum dolor sit amet, consectetur adipiscing elit,
	           sed do eiusmod tempor incididunt ut labore et dolore ma
	           gna aliqua. Ut enim ad minim veniam, quis nostrud exer
	           citation ullamco laboris nisi ut aliquip ex ea commodo co
	           nsequat. Duis aute irure dolor in reprehenderit in volupta
	           te velit esse cillum dolore eu fugiat nulla pariatur. Except
	           eur sint occaecat cupidatat non proident, sunt in culpa q
	           ui officia deserunt mollit anim id est laborum."
	        </p>
    	</div>
    </main>
    <div style="clear:both;"></div>
    <%
    	ArrayList<Product> listOfProducts = productDAO.getAllProducts();
    %>
    <div class="container">
    	<div class="row" align="center">
    		<%
    			for(int i = 0; i < listOfProducts.size(); i++) {
    				Product product = listOfProducts.get(i);
    		%>
    		<div class="col-md-4">
    			<p class="fs-4 fw-bold"><%=product.getPname() %></b>
    			<p>price <%=product.getUnitPrice() %> won</p>
    			<p> <a href="./product.jsp?id=<%=product.getProductId()%>" class="btn btn-secondary" role="button"> 상세 정보&raquo;</a>
    		</div>
    		<%
    			}
    		%>
    	</div>
    </div>
	
	<jsp:include page="footer.jsp"/>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
</body>
</html>