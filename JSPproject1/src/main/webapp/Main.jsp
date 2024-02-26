<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="description" content="BootStrap Demo"/>

    <title>Fsf Main</title>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
</head>
<body>
 	<jsp:include page="menu.jsp" />
 	<main  class="container">
    <div style="float: left;">
      <img src="./img/main.jpg" height=550px class="mb-2">
      <img src="./img/main2.jpg" height=550px class="px-1 mb-2">
    </div>
    <div style="border: 1px; margin:230px 20px 0px; float: left; width:400px;	">
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
        <div class="d-grid gap-2 col-6 mx-auto mb-3">
          <button class="btn btn-secondary" type="button">Button</button>
        </div>
    </div>
   <div style="clear:both;"></div>
   <div style="width:1200px; height:303px; background-image:url('./img/main4-1.jpg');" class="position-relative">
   	<div class="text-white fw-bold fs-1 px-2 position-absolute bottom-0 start-0">
   		THIS IS SOFA<br>
		THAT IS SOFA   		
   	</div>
   </div>
    <div style="border: 1px; float: left; width:1200px; height:280px;" class="mb-3">
      <div style="margin:20px 800px 20px 10px">
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
	 </div>
	 <div style="clear:both;"></div>
	 	<div class="container p-0 " style="width:1200px; float:left;">
		  <div class="row align-items-start g-0">
		    <div class="col-4">
		     <div style="width:394px; height:394px;">
				<a href="./Chairproduct.jsp">
					<div style="width:394px; height:394px; background-image:url('./img/chair.jpg'); background-size: cover;" class="position-relative" id="chair">
						<div class="text-white fw-bold fs-1 px-2 position-absolute bottom-0 end-0">
							Chair
						</div>
					</div>
				</a>
			</div>
		    </div>
		    <div class="col-4 px-1">
		      <div style="width:394px; height:394px; float: left;">
				<a href="./Tableproduct.jsp" >
					<div style="width:394px; height:394px; background-image:url('./img/tablemain.jpg'); background-size: cover;" class="position-relative">
						<div class="text-white fw-bold fs-1 px-2 position-absolute bottom-0 end-0">
							Table
						</div>
					</div>
				</a>
		</div>
		    </div>
		    <div class="col-4 px-2">
		      <div style="width:394px; height:394px; float: left;">
			<a href="./Sofaproduct.jsp" >
				<div style="width:394px; height:394px; background-image:url('./img/sofa.jpg'); background-size: cover;" class="position-relative">
					<div class="text-white fw-bold fs-1 px-2 position-absolute bottom-0 end-0">
						Sofa
					</div>
				</div>
			</a>
		</div>
		    </div>
		  </div>
		</div>
  </main>
 <jsp:include page="footer.jsp"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
</body>
</html>