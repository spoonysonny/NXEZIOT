<html>
<head>
	<meta charset="UTF-8">
	<title>NXEZ-IoT</title>
	<link rel="stylesheet" href="css/style.css" type="text/css">
	<link rel="stylesheet" href="css/font-awesome.css" type="text/css">
	<link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
</head>
<body>
	<div id="header">
	  <div class="container">
	    <div class="logo">
	      <img src="http://www.nxez.com/wp-content/uploads/2016/12/nxezlogo.png">
	    </div>
	    <div class="memu-top">
	      <nav>
	      	<?php 
	      		if(isset($_GET['page'])){
	      			if($_GET['page'] == 'index')
	      			echo '<li class="selected"><a href="?page=index">首页</a></li>';
	      			else
	      			echo '<li><a href="?page=index">首页</a></li>';
	      			if($_GET['page'] == 'login')
	      			echo '<li class="selected"><a href="?page=login">登录</a></li>';
	      			else
	      			echo '<li><a href="?page=login">登录</a></li>';
	      			if($_GET['page'] == 'signup')
	      			echo '<li class="selected"><a href="?page=index">注册</a></li>';
	      			else
	      			echo '<li><a href="?page=signup">注册</a></li>';
	      			if($_GET['page'] == 'about')
	      			echo '<li class="selected"><a href="?page=about">关于</a></li>';
	      			else
	      			echo '<li><a href="?page=about">关于</a></li>';
	      		}else{
	      			header("location: ?page=index");
	      		}
	      	?>
	      </nav>
	    </div>
	  </div>
	</div>

	<div id="body">
	  <div class="container">
	  	<div class="notification">
	  		<h1>This is the Alpha 0.1 version!</h1>
	  	</div>
	    <div id="main-front">
	      
	      	<?php
	      		if (isset($_GET['page'])) {
	      			switch ($_GET['page']) {
	      				case 'index':
	      					include('slogan.php');
	      					break;
	      				case 'login':
	      					include('login.php');
	      					break;
	      				case 'signup':
	      					include('signup.php');
	      					break;
	      				case 'about':
	      					include('createhouse.php');
	      					break;
	      				default:
	      					include('slogan.php');
	      					break;
	      			}
	      		}else{
	      			include('slogan.php');
	      		}
	      	?>
	      
	    </div>
	  </div>
	</div>

	<div id="footer">
	  <div class="container">
	    <div style="float:left;padding:30px 0px 30px 0px">
	      <a>Copyright &copy 2017</a>
	    </div>
	    <div style="float:right;padding:30px 0px 30px 0px">
	      <a class="heart"><i class="fa fa-heart" ></i></a>
	      <a> NXEZ.com</a>
	    </div>
	  </div>
	</div>
</body>
</html>