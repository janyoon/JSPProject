<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="description" content="BootStrap Demo"/>

<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
 <body class="bg-secondary">
   <nav class="navbar navbar sticky-top bg-secondary-subtle ">
      <div class="container-fluid">
           <form class="col-12 col-lg-auto mb-3 mb-lg-0" role="search">
            <input type="search" class="form-control" placeholder="Search..." aria-label="Search">
          </form>
           <ul class="nav justify-content-end" style="float:felx;" >
              <li class="nav-item"><a href="./main.jsp" class="nav-link link-body-emphasis py-2" aria-current="page">Home</a></li>
              <li class="nav-item"><a href="/member/loginMember.jsp" class="nav-link link-body-emphasis py-2">Login</a></li>
              <li class="nav-item"><a href="/member/addMember.jsp" class="nav-link link-body-emphasis py-2">Join</a></li>
              <li class="nav-item"><a href="/member/updateMember.jsp" class="nav-link link-body-emphasis py-2">My page</a></li>
              <li class="nav-item"><a href="./cart.jsp" class="nav-link link-body-emphasis py-2">Cart</a></li>
           </ul>
          <ul class="nav justify-content-end">
        <li class="nav-item dropdown" style="float:flex;" >
           <a href="#" class="d-block link-body-emphasis ps-3 text-decoration-none dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
            Dropdown
          </a>
          <ul class="dropdown-menu dropdown-menu-secondary">
            <li><a class="dropdown-item" href="#">Action</a></li>
            <li><a class="dropdown-item" href="#">Another action</a></li>
            <li><a class="dropdown-item" href="#">Something else here</a></li>
          </ul>
        </li>
      </ul>
          
              <a href="#" class="nav-link link-body-emphasis py-2" aria-current="page" style="float:felx;"><span class="fs-3">Black and Jean</span></a>
        </div>
   </nav>
   <nav class = "navbar navbar-expand bg-secondary">
         <div class="navbar-header">
            <ul class="nav justify-content-left" >
               <li class="nav-item"><a href="#" class="nav-link link-body-emphasis py-2 text-white">Black Style</a></li>
                 <li class="nav-item"><a href="#" class="nav-link link-body-emphasis py-2 text-white">Jean Style</a></li>
            </ul>
 <input type="search" class="search-field" placeholder="상품명" value="${param.findStr }" name="findStr" />
                    <input type="submit"  name="btnFind" class="search-submit" value = "검색"/>
                    <input type="hidden" name="nowPage" value="${(empty param.nowPage)? 1: param.nowPage}" size="10">
					<input type="hidden" name="serial" size="10" >
					<input type="hidden" name="search" value="select">
        </div>
            
    </nav> 
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
</body>
</html>
