﻿<?php
	//定义页面必须验证是否登录
	define("AUTH", "TRUE");

	//载入初始化文件
	require_once("../ui/inc/init.inc.php");
	$DriverID=$_POST['DriverID'];
	$DriverI=$_POST['DriverI'];
	$Name=$_POST['Name'];
	$Sex=$_POST['Sex'];
	$Tel=$_POST['Tel'];
	$IdCard=$_POST['IdCard'];
	$Address=$_POST['Address'];
	$CYZGZNumber=$_POST['CYZGZNumber'];
	$BusNumber=$_POST['BusNumber'];
	$DriverCard=$_POST['DriverCard'];
	$AllowBusType=$_POST['AllowBusType'];
	$DriverCheckDate=$_POST['DriverCheckDate'];
	$CYZGZCheckDate=$_POST['CYZGZCheckDate'];
	$WorkEndDate=$_POST['WorkEndDate'];
	$FileID=$_POST['FileID'];
	$Remark=$_POST['Remark'];
	$CurTime=date('Y-m-d H:i:s');
	if($_FILES['scanfile']['name'] != '') {
		if($_FILES['scanfile']['error'] > 0) {
			switch($_FILES['scanfile']['error']) {
				case 1:
					echo "<script>alert('文件大小超过了配置文件中的限制！');history.back();</script>";
					break;
				case 2:
					echo "<script>alert('文件大小超过了浏览器限制！');history.back();</script>";
					break;
				case 3:
					echo "<script>alert('文件部分被上传！');history.back();</script>";
					break;
				case 4:
					echo "<script>alert('没有找到要上传的文件！');history.back();</script>";
					break;
				case 5:
					echo "<script>alert('服务器临时文件夹丢失，请重新上传！');history.back();</script>";
					break;
				case 6:
					echo "<script>alert('文件写入到临时文件夹出错！');history.back();</script>";
					break;
			}
		} else {
			if($_FILES['scanfile']['size'] < 2048000) {
				$fileName = $_FILES['scanfile']['name'];
				$extName = pathinfo($fileName, PATHINFO_EXTENSION);
				$saveFilePath = "scanFiles/driverfile" . $DriverID . ".$extName";
				move_uploaded_file($_FILES['scanfile']['tmp_name'], $saveFilePath);
			} else {
				echo "<script>alert('请上传小于2MB的附件');history.back();</script>";
			}
		}
	}
		$ok=1;
	if ($_FILES['photo']['name'] != ''){
		$ok=0;
		$upfile=$_FILES["photo"];
		$name = $upfile["name"];
		$type = $upfile["type"];
		$size = $upfile["size"];
		$tmp_name = $upfile["tmp_name"];
		$error = $upfile["error"];
		$destination='photoes/'.$Name."-".$name;
		if($size>1000000){
			$ok=0;
			echo"<script>alert('图片太大！');history.back();</script>";
		}
		if(file_exists($destination)){
			$ok=0;
			echo"<script>alert('图片已存在！');history.back();</script>";
		}
		if($error > 0) {
			switch($error) {
				case 1:
					echo "<script>alert('文件大小超过了配置文件中的限制！');history.back();</script>";
					break;
				case 2:
					echo "<script>alert('文件大小超过了浏览器限制！');history.back();</script>";
					break;
				case 3:
					echo "<script>alert('文件部分被上传！');history.back();</script>";
					break;
				case 4:
					echo "<script>alert('没有找到要上传的文件！');history.back();</script>";
					break;
				case 5:
					echo "<script>alert('服务器临时文件夹丢失，请重新上传！');history.back();</script>";
					break;
				case 6:
					echo "<script>alert('文件写入到临时文件夹出错！');history.back();</script>";
					break;
			}
		}
		switch ($type) {
			case 'image/pjpeg' : $ok=1;
				break;
			case 'image/jpeg' : $ok=1;
				break;
			case 'image/gif' : $ok=1;
				break;
			case 'image/png' : $ok=1;
				break;
			case 'image/jpg' : $ok=1;
				break;
			case 'image/bmp' : $ok=1;
				break;
			case 'image/x-png' : $ok=1;
				break;		
		}
		if($ok!=1){
			echo"<script>alert('图片类型不符！');history.back();</script>";
		}
		if($ok && $error=='0'){
 			move_uploaded_file($tmp_name,$destination);
 			echo "照片上传成功";
		}
	else echo"<script>alert('照片上传失败！');history.back();</script>";
	}
	
	$select="select * from tms_bd_DriverInfo where di_DriverID='{$DriverID}'";
	$sele=$class_mysql_default->my_query($select);
	if((!mysql_fetch_array($sele)||$DriverID==$DriverI)&&$ok){
		$update="UPDATE tms_bd_DriverInfo SET di_DriverID='{$DriverID}',di_Name='{$Name}',di_Sex='{$Sex}',di_Tel='{$Tel}',
			di_IdCard='{$IdCard}',di_Address='{$Address}',di_CYZGZNumber='{$CYZGZNumber}',di_BusNumber='{$BusNumber}',di_DriverCard='{$DriverCard}',
			di_AllowBusType='{$AllowBusType}',di_DriverCheckDate='{$DriverCheckDate}',di_CYZGZCheckDate='{$CYZGZCheckDate}',
			di_Remark='{$Remark}',di_WorkEndDate='{$WorkEndDate}',di_FileID='{$FileID}',di_ModerID='{$userID}',di_Moder='{$userName}', 
			di_ModTime='{$CurTime}',di_fileName='{$fileName}',di_ScanPath='{$saveFilePath}',di_Photo='{$destination}' WHERE di_DriverID='{$DriverI}'";
		$query =$class_mysql_default->my_query($update); 
		if($query){
			echo"<script>alert('恭喜您！修改成功!');window.location.href='tms_v1_basedata_seardriver.php?'</script>";
		}else{
			echo"<script>alert('添加失败');window.location.href='tms_v1_basedata_seardriver.php?'</script>";
		}
	}else{
		echo"<script>alert('驾驶员编号已存在，请重新输入！');window.location.href='tms_v1_basedata_moddriver.php?clnumber=$DriverI'</script>";
	} 
 

