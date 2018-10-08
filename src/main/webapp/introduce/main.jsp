<%@page import="com.homepage.vo.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% UserVO userVo = (UserVO)request.getAttribute("userVo"); %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <title>간단한 회사 소개 페이지</title>
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  
<%
	if(userVo == null){
%>	
		<!-- Bootstrap core CSS -->
		  <link href="css/bootstrap.min.css" rel="stylesheet">
		  <!-- Material Design Bootstrap -->
		  <link href="css/mdb.min.css" rel="stylesheet">
		  <!-- Your custom styles (optional) -->
		  <link href="css/style.css" rel="stylesheet">
<% 
	}else{
%>
	 	 <link href="introduce/css/bootstrap.min.css" rel="stylesheet">
		  <!-- Material Design Bootstrap -->
		  <link href="introduce/css/mdb.min.css" rel="stylesheet">
		  <!-- Your custom styles (optional) -->
		  <link href="introduce/css/style.css" rel="stylesheet">
<%		
	}
%>
</head>
<body>
	<!--페이지의 네비게이션 영역-->
	<header>
		<nav class="navbar navbar-expand-lg navbar-dark blue">
			<a class="navbar-brand" href="#">간단한 회사 소개 페이지</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#toggler">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="toggler">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item active">
						<a class="nav-link" href="#">메인</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#">특징</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#">가격</a>
					</li>
					<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" id="dropdown" href="#" data-toggle="dropdown">	
							부가서비스
						</a>
						<div class="dropdown-menu dropdown-primary" aria-labelledby="dropdown">
						<a class="dropdown-item" href="#">Q/A</a>
						<a class="dropdown-item" href="#">고객센터</a>
						</div>		
					</li>	
				</ul>
			</div>
		</nav>
	</header>
<% 
	if(userVo == null){
%>

	<!--페이지의 메인 영역-->
	<main>
		<div class="container mt-4">
			<div class="row">	
				<div class="col-md-7">
					<img src="http://mdbootstrap.com/img/Photos/Slides/img%20(70).jpg" class="card-img-top">
				</div>
				<div class="col-md-5">
					<h2 class="mt-2">
						안녕하세요. [로그인 안됨] 만나서 반갑습니다.
					</h2>
					<hr>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
					<a href="#" class="btn btn-primary">자세히 보기</a>
				</div>	
			</div>
		</div>
		
<% 	
	}else{
%>  


	<!--페이지의 메인 영역-->
	<main>
		<div class="container mt-4">
			<div class="row">	
				<div class="col-md-7">
					<img src="http://mdbootstrap.com/img/Photos/Slides/img%20(70).jpg" class="card-img-top">
				</div>
				<div class="col-md-5">
					<h2 class="mt-2">
						안녕하세요. <%=userVo.getUserId()%>[<%=userVo.getName()%>] 만나서 반갑습니다.
					</h2>
					<hr>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
					<a href="#" class="btn btn-primary">자세히 보기</a>
				</div>	
			</div>
		</div>
	
<%
}
%>
<div class="row mt-4">
			<div class = "col-lg-4 col-md-12">
				<div class="card">
					<div class="view overlay">
						<img src="http://mdbootstrap.com/img/Photos/Horizontal/Nature/4-col/img%20(72).jpg"
							 class="card-img-top"/>
					</div>
					<div class="card-body">
						<h4 class="card-title">
							콘텐츠1
						</h4>
						<p class="card-text">
							Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
						</p>
					</div>
					<a href="#" class="btn btn-primary">자세히 보기</a>
				</div>
			</div>
			<div class = "col-lg-4 col-md-6">
				<div class="card">
					<div class="view overlay">
						<img src="http://mdbootstrap.com/img/Photos/Horizontal/Nature/4-col/img%20(74).jpg"
							 class="card-img-top"/>
					</div>
					<div class="card-body">
						<h4 class="card-title">
							콘텐츠2
						</h4>
						<p class="card-text">
							Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
						</p>
					</div>
					<a href="#" class="btn btn-primary">자세히 보기</a>
				</div>
			</div>
			<div class = "col-lg-4 col-md-6">
				<div class="card">
					<div class="view overlay">
						<img src="http://mdbootstrap.com/img/Photos/Horizontal/Nature/4-col/img%20(75).jpg"
							 class="card-img-top"/>
					</div>
					<div class="card-body">
						<h4 class="card-title">
							콘텐츠3
						</h4>
						<p class="card-text">
							Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
						</p>
					</div>
					<a href="#" class="btn btn-primary">자세히 보기</a>
				</div>
			</div>
		</div>
	</main>
<footer class="page-footer text-center text-md-left font-small blue pt-4 mt-4">
		<div class="container-fluid text-center text-md-left">
			<div class="row">
				<div class="col-md-6 pb-3">
					<h5 class="text-uppercase">
						푸터 내용
					</h5>
					<p>
						Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
					</p>
				</div>
				<div class="col-md-6 pb-3">
					<h5 class="text-uppercase">
						부가 서비스
					</h5>
					<ul class="list-unstyled">
						<li>
							<a href="#">Q/A</a>
						</li>
						<li>
							<a href="#">고객센터</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<div class="footer-copyright py-3 text-center">
			@2018 Copyright:
			<a href="#">최재현</a>
		</div>
	</footer>
	
	
	<%
	if(userVo == null){
%>	
		<!-- SCRIPTS -->
	  <!-- JQuery -->
	  <script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
	  <!-- Bootstrap tooltips -->
	  <script type="text/javascript" src="js/popper.min.js"></script>
	  <!-- Bootstrap core JavaScript -->
	  <script type="text/javascript" src="js/bootstrap.min.js"></script>
	  <!-- MDB core JavaScript -->
	  <script type="text/javascript" src="js/mdb.min.js"></script>
<% 
	}else{
%>
	 	<!-- SCRIPTS -->
	  <!-- JQuery -->
	  <script type="text/javascript" src="introduce/js/jquery-3.3.1.min.js"></script>
	  <!-- Bootstrap tooltips -->
	  <script type="text/javascript" src="introduce/js/popper.min.js"></script>
	  <!-- Bootstrap core JavaScript -->
	  <script type="text/javascript" src="introduce/js/bootstrap.min.js"></script>
	  <!-- MDB core JavaScript -->
	  <script type="text/javascript" src="introduce/js/mdb.min.js"></script>	
<%		
	}
%>
  
</body>

</html>