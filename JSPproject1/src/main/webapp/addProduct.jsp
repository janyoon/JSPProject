<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta charset="UTF-8">
<title>add Product</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
</head>
<body>
	<jsp:include page="menu.jsp" />
    <br>
    <div class="container">
        <div class="w-25 " style="float: left;">
            <p class="fw-bold" style="font-size: 85px;">Fsf</p>
            <h1 class="m-0 fw-bold">제품등록</h2>
        </div>
        <div class="w-70 bg-secondary bg-opacity-25 p-4" style="float: left;">
            <div class="container">
                <form name="newProduct" action="./processAddProduct.jsp" class="form-horizontal" method="post">
                    <div class="form-group row mb-1">
                        <label class="col-sm-2">상품코드</label>
                        <div class="col-sm-3">
                            <input type="text" name="productId" class="form-control">
                        </div>
                    </div>
                    <div class="form-group row mb-1">
                        <label class="col-sm-2">상품명</label>
                        <div class="col-sm-3">
                            <input type="text" name="name" class="form-control">
                        </div>
                    </div>
                    <div class="form-group row mb-1">
                        <label class="col-sm-2">가격</label>
                        <div class="col-sm-3">
                            <input type="text" name="unitPrice" class="form-control">
                        </div>
                    </div> 
                    <div class="form-group row mb-1">
                        <label class="col-sm-2">상세 정보</label>
                        <div class="col-sm-5">
                            <textarea name="description" cols="50" rows="2" class="form-control"></textarea>
                        </div>
                    </div> 
                    <div class="form-group row mb-1">
                        <label class="col-sm-2">제조사</label>
                        <div class="col-sm-3">
                            <input type="text" name="manufacturer" class="form-control">
                        </div>
                    </div>
                    <div class="form-group row mb-1">
                        <label class="col-sm-2">분류</label>
                        <div class="col-sm-3">
                            <input type="text" name="category" class="form-control">
                        </div>
                    </div>
                    <div class="form-group row mb-1">
                        <label class="col-sm-2">재고 수</label>
                        <div class="col-sm-3">
                            <input type="text" name="unitsInStock" class="form-control">
                        </div>
                    </div>
                    <div class="form-group row mb-1">
                        <label class="col-sm-2">사이즈</label>
                        <div class="col-sm-5">
                            <textarea name="size" cols="50" rows="2" class="form-control"></textarea>
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-sm-offset-2 col-sm-10">
                            <input type="submit" class="btn btn-primary" value="등록">
                        </div>
                    </div>  
                </form>
            </div>
        </div>
    </div>
	
	<jsp:include page="footer.jsp"/>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
</body>
</html>