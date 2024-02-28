<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta charset="UTF-8">
<title>add Product</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<script type ="text/javascript" src ="./resources/js/validation.js"></script>
</head>
<body>
	<fmt:setLocale value='<%= request.getParameter("language") %>'/>
	<fmt:bundle basename="bundle.message" >
	<jsp:include page="menu.jsp" />
    <br>
    <div class="container">
        <div class="w-25 " style="float: left;">
            <p class="fw-bold" style="font-size: 85px;">Fsf</p>
            <h1 class="m-0 fw-bold">제품등록</h1>
        </div>
        <div class="w-70 bg-secondary bg-opacity-25 p-4" style="float: left;">
            <div class="container">
	            <div class="d-flex justify-content-end "> 
					<a href="?language=ko" >Korean </a>| <a href="?language=en" class="pe-1" >English</a>
				</div>
                <form name="newProduct" action="./processAddProduct.jsp" class="form-horizontal" method="post" enctype ="multipart/form-data">
                    <div class="form-group row mb-1">
                        <label class="col-sm-2"><fmt:message key="productId" /></label>
                        <div class="col-sm-3">
                            <input type="text" id ="productId" name="productId" class="form-control">
                        </div>
                    </div>
                    <div class="form-group row mb-1">
                        <label class="col-sm-2"><fmt:message key="pname" /></label>
                        <div class="col-sm-3">
                            <input type="text" id ="name" name="name" class="form-control">
                        </div>
                    </div>
                    <div class="form-group row mb-1">
                        <label class="col-sm-2"><fmt:message key="unitPrice"/></label>
                        <div class="col-sm-3">
                            <input type="text" id ="unitPrice" name="unitPrice" class="form-control">
                        </div>
                    </div> 
                    <div class="form-group row mb-1">
                        <label class="col-sm-2"><fmt:message key="description" /></label>
                        <div class="col-sm-5">
                            <textarea name="description" cols="50" rows="2" class="form-control"></textarea>
                        </div>
                    </div> 
                    <div class="form-group row mb-1">
                        <label class="col-sm-2"><fmt:message key="manufacturer"/></label>
                        <div class="col-sm-3">
                            <input type="text" name="manufacturer" class="form-control">
                        </div>
                    </div>
                    <div class="form-group row mb-1">
                        <label class="col-sm-2"><fmt:message key="category" /></label>
                        <div class="col-sm-3">
                            <input type="text" name="category" class="form-control">
                        </div>
                    </div>
                    <div class="form-group row mb-1">
                        <label class="col-sm-2"><fmt:message key="unitsInStock" /></label>
                        <div class="col-sm-3">
                            <input type="text" id ="unitsInStock" name="unitsInStock" class="form-control">
                        </div>
                    </div>
                    <div class="form-group row mb-1">
                        <label class="col-sm-2"><fmt:message key="size" /></label>
                        <div class="col-sm-5">
                            <textarea name="size" cols="50" rows="2" class="form-control"></textarea>
                        </div>
                    </div>
                    <div class="form-group row mb-1">
                    <label class ="col-sm-2"><fmt:message key="productImage" /></label>
						<div class ="col-sm-5">
 							<input type="file" name="productImage" class="form-control">
 						</div>
 					</div>
                    <div class="form-group row">
                        <div class="col-sm-offset-2 col-sm-10">
                            <input type ="submit" class="btn btn-primary">
                        </div>
                    </div>  
                </form>
            </div>
        </div>
    </div>
	</fmt:bundle>
	<jsp:include page="footer.jsp"/>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
</body>
</html>