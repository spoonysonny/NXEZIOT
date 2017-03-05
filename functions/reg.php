<?php
/**
* All the functions need for create a new account.
*/
$Niot_reg = new Niot_reg;

class Niot_reg{

	public function create_account($username, $password, $email){
		# code...
		return $result;
	}

	/*
	* rules
	* 1. Content: Latin letters, Chinese characters, numerals, '_' and '-'.
	* 2. Length: 6 - 24 letters or 3 - 12 chatacters.
	* 3. Start: Letter or character.
	*/
	public function is_username($username){
		$length = (strlen($username)+mb_strlen($username,'utf8'))/2;
    if(!preg_match("/^\b[a-zA-Z\x{4e00}-\x{9fa5}][a-zA-Z0-9_\-\x{4e00}-\x{9fa5}]{1,}$/u", $username)){
      #echo "输入不合法<br>";
      $error = "含有特殊字符"；
      return $error;
      
    }elseif ($length<6 || $length>24) {
    	#echo "当前长度： ".$length."<br>";
    	#echo "长度不合法<br>";
    	$error = "长度不合法"；
      return $error;
    	
    }else{
    	$error = ""；
      return $error;
    }
	}

	public function is_username_exist($username){

		return $result; # true or false
	}

	public function is_email($email){

		return $result; # true or false
	}

	public function is_email_exist($email){

		return $result; # true or false
	}

	public function is_password($password){

		return $result; # true or false
	}
}


// $username = "Verygood";
// echo $username.'<br>';
// echo $Niot_reg->is_username($username).'<br>';
// echo "-----------<br>";

// $username = "Iam not good";
// echo $username.'<br>';
// echo $Niot_reg->is_username($username).'<br>';
// echo "-----------<br>";

// $username = "Iam_good";
// echo $username.'<br>';
// echo $Niot_reg->is_username($username).'<br>';
// echo "-----------<br>";

// $username = "Iamfine1";
// echo $username.'<br>';
// echo $Niot_reg->is_username($username).'<br>';
// echo "-----------<br>";

// $username = "Iam-good";
// echo $username.'<br>';
// echo $Niot_reg->is_username($username).'<br>';
// echo "-----------<br>";

// $username = "12开头";
// echo $username.'<br>';
// echo $Niot_reg->is_username($username).'<br>';
// echo "-----------<br>";

// $username = "中En混合";
// echo $username.'<br>';
// echo $Niot_reg->is_username($username).'<br>';
// echo "-----------<br>";

// $username = "非法字符+";
// echo $username.'<br>';
// echo $Niot_reg->is_username($username).'<br>';
// echo "-----------<br>";

// $username = "不足";
// echo $username.'<br>';
// echo $Niot_reg->is_username($username).'<br>';
// echo "-----------<br>";

// $username = "abcde";
// echo $username.'<br>';
// echo $Niot_reg->is_username($username).'<br>';
// echo "-----------<br>";
?>