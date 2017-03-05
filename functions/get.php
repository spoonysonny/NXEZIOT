<?php
/**
* Name: Niot_get_Main
* Description: Get contents for each area
*/
session_start();
$_SESSION['username'] = 'Coor_Fang';
$_SESSION['email'] = 'coorfang@gmail.com';

$Niot_get_Main = new Niot_get_Main;

class Niot_get_Main
{
	public function admin_memu($page){
	echo '<nav>';
	if(isset($_GET['page'])){
		if($_GET['page'] == 'preview')
			echo '<li class="selected"><a href="?page=preview">概览</a></li>';
		else
			echo '<li><a href="?page=preview">概览</a></li>';
		if($_GET['page'] == 'room')
			echo '<li class="selected"><a href="?page=room">房间</a></li>';
		else
			echo '<li><a href="?page=room">房间</a></li>';
		if($_GET['page'] == 'sensor')
			echo '<li class="selected"><a href="?page=sensor">传感器</a></li>';
		else
			echo '<li><a href="?page=sensor">传感器</a></li>';
		if($_GET['page'] == 'actuator')
			echo '<li class="selected"><a href="?page=actuator">执行器</a></li>';
		else
			echo '<li><a href="?page=actuator">执行器</a></li>';
		if($_GET['page'] != 'actuator' &&
			$_GET['page'] != 'preview' &&
			$_GET['page'] != 'sensor' &&
			$_GET['page'] != 'room')
			header("location: ?page=preview");
	}else{
		header("location: ?page=preview");
	}
	echo '</nav>';
	}

	public function front_main($page)
	{
		switch ($page) {
			case '':
				/*code */
				break;
			case '':
				/*code */
				break;
			case '':
				/*code */
				break;
			default:
				/*code */
				break;
		}
	}

	public function back_main($page){
		switch ($page) {
			case 'preview':
				$this->display_preview(true);
				break;
			case 'room':
				$this->display_rooms();
				break;
			case 'sensor':
				$this->display_sensors();
				break;
			case 'actuator':
				$this->display_actuators();
				break;
			
			default:
				$this->display_preview();
				break;
		}
	}

	public function control_memu(){
		if(isset($_SESSION['username'])){
			echo '<nav>
          <li class="selected"><a href="#">管理</a></li>
          <li><a href="logout.php">退出</a></li>
        	</nav>';
		}else{
			/*code */
		}
		
	}

	public function profile(){
		if(isset($_SESSION['username'])){
			echo '<div class="profile-img">
         			<img src="./image/profile.jpg">
        		</div>
        		<div class="profile-info">
         			<li>'.$_SESSION['username'].'</li>
         			<i class="fa fa-user-circle-o" aria-hidden="true"></i>
          		<li>'.$_SESSION['email'].'</li>
          		<i class="fa fa-envelope" aria-hidden="true"></i>
        		</div>';
		}else{
			/*code */
		}
	}

	private function display_preview($boolean){
		if ($boolean) {
			echo '
			<div class="segment-top" id="temp-demo"></div>
			<div class="segment" id="humi-demo"></div>';
		}else{
			echo '
			<div class="segment-top" id="temp-demo"></div>
			<div class="segment" id="humi-demo"></div>
			<div class="segment" id="map-demo" style="padding-top:10px;">
			<a style="color: #333333; font-size: 18px; fill: #333333; align:center;">全国用户分布情况概览</a>
			</div>';
		}
	}

	private function display_rooms(){

	}

	private function display_sensors(){

	}

	private function display_actuators(){

	}
}

?>