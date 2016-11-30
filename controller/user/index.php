<?php  
	$title = "Thông tin tài khoản";
	if (isset($_POST['submit'])){
	    $fullname=escape($_POST['fullname']);
	    $addr=escape($_POST['addr']);
	    $tel=escape($_POST['tel']);
	    $email=escape($_POST['email']);
	    $getData_model->update('khachhang','tenkh',$fullname,'makh',$_SESSION['makh']);
	    $getData_model->update('khachhang','diachi',$addr,'makh',$_SESSION['makh']);
	    $getData_model->update('khachhang','sdt',$tel,'makh',$_SESSION['makh']);
	    $getData_model->update('khachhang','email',$email,'makh',$_SESSION['makh']);
	}
	$bill = $getData_model->get_all_record('donhang','makh',$_SESSION['makh']);

	$user = $getData_model->get_a_record('khachhang','makh',$_SESSION['makh']);
	$user1 = $getData_model->get_a_record('taikhoan','taikhoan',$_SESSION['username']);
	$_SESSION['fullname']=$user['tenkh'];
	$_SESSION['addr']=$user['diachi'];
	$_SESSION['tel']=$user['sdt'];
	$_SESSION['email']=$user['email'];
		

	require('view/user/index.php');

?>