﻿<?php
	//定义页面必须验证是否登录
	define("AUTH", "TRUE");

	//载入初始化文件
	require_once("../ui/inc/init.inc.php");
	$clnumber = $_GET['clnumber'];
	$clnumber1 = $_GET['clnumber1'];
	if ($_GET['op'] == "del" ){
		$sql = "DELETE FROM tms_bd_ServiceFeeAdjust WHERE sfa_ID='{$clnumber}'";
		$query =$class_mysql_default->my_query($sql);
	//	if ($query) {
	//		exit("<div style=\"padding:100px;\"><h2 align=\"center\">
	//		删除成功,!请<a href=\"./tms_v1_basedata_searservicefeeadjust.php?clnumber=$clnumber1\"> 返回</a>
	//		</h2></div>");
	//	}
		if ($query) {
			echo "<script>alert('删除成功！ 请返回。');location.assign('tms_v1_basedata_searlineservicefeeadjust.php?clnumber=$clnumber1');</script>";
		}else{
			echo "<script>alert('删除失败！');location.assign('tms_v1_basedata_searlineservicefeeadjust.php?clnumber=$clnumber1');</script>";
		}
	}
?>

