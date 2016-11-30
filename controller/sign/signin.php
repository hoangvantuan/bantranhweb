<?php

	$title = "Đăng nhập";
	if (isset($_POST['submit'])){
		$user=escape($_POST['username']);
		$pass=escape($_POST['pass']);

		$check= $sign_model->checkSignin($user,$pass);
		if($check==false){
		$erroin = "Tài khoản hoặc mật khẩu không chính xác";
		require('view/sign/dangnhap.php');
		$erroin = null;
		
		}
		else{
			$_SESSION['username'] =$user;
			$_SESSION['makh'] = $check['makh']; 
			header('location:index.php?controller=product');
		}

	}
	else
		require('view/sign/dangnhap.php');
	

?>