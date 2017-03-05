<?php require './functions/get.php'; ?>
<html>
<head>
	<meta charset="UTF-8">
	<title>NXEZ-IoT</title>
	<link rel="stylesheet" href="css/style-admin.css" type="text/css">
	<link rel="stylesheet" href="css/font-awesome.css" type="text/css">
	<link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">

	<script src="https://code.highcharts.com/highcharts.js"></script>
	<script src="https://code.highcharts.com/modules/exporting.js"></script>

	<link rel="stylesheet" href="map/jquery-jvectormap-2.0.3.css" type="text/css" media="screen"/>
  <script src="map/jquery-3.1.1.js"></script>
  <script src="map/jquery-jvectormap-2.0.3.min.js"></script>
  <script src="map/jquery-jvectormap-cn-mill.js"></script>
</head>

<body>

  <div id="contentWrap" class="">
    <div id="content">
      <header>
				<div id="site-logo">
				</div>
        <div class="commonNav" id="contentNav">
          <?php $Niot_get_Main->admin_memu($_GET['page']); ?>
        </div>
      </header>
			<?php $Niot_get_Main->back_main($_GET['page']); ?>
    </div>
  </div>

  <div id="sidebarWrap" class="">
    <div id="sidebar">
      <div class="commonNav" id="sidebarNav">
        <?php $Niot_get_Main->control_memu(); ?>
      </div>
      <div id="profile">
        <?php $Niot_get_Main->profile(); ?>
        
      </div>
      <div class="sidebar-segment">
        <a>切换当前房屋</a>
        <P>
          <select>
            <option>汤臣一品 - 黄浦区 - 上海市</option>
            <option>帝景花园 - 石嘴山市</option>
            <option>新马宾馆 - 银川市</option>
            <option>马猴子乐园 - 吴忠市</option>
          </select>
        </P>
      </div>
      <div class="sidebar-segment">
        <li><a href="123.com">NXEZ.com</a></li>
        <li><a href="#">NXEZ Wiki</a></li>
        <li><a href="#">树莓派实验室</a></li>
        <li><a href="#">Arduino实验室</a></li>
        <li><a href="#">NXEZ创客商店</a></li>
      </div>
      <div class="sidebar-segment">
        <a>Copyright &copy 2017 NXEZ IoT</a>
      </div>
    </div>
  </div>
</body>

<?php require './js/js.php'; ?>