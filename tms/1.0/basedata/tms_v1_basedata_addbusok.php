﻿<?php
	//定义页面必须验证是否登录	
	define("AUTH", "TRUE");

	//载入初始化文件
	require_once("../ui/inc/init.inc.php");
	
	$BusID=$_POST['BusID'];
	$RegDate=$_POST['RegDate'];
	$BusNumber=$_POST['BusNumber'];
	$BusTypeID=$_POST['BusTypeID'];
	$BusType=$_POST['BusType'];
	$SeatS=$_POST['SeatS'];
	$AddSeatS=$_POST['AddSeatS'];
	$AllowHalfSeats=$_POST['AllowHalfSeats'];
	$Tonnage=$_POST['Tonnage'];
	$BusUnit=$_POST['BusUnit'];
	$Sign=$_POST['Sign'];
	$EngineType=$_POST['EngineType'];
	$EngineNumber=$_POST['EngineNumber'];
	$BusIdentify=$_POST['BusIdentify'];
	$BusChangeType=$_POST['BusChangeType'];
	$InStationID=$_POST['InStationID'];
	$InStation=$_POST['InStation'];
	$OwnerName=$_POST['OwnerName'];
	$OwnerAdd=$_POST['OwnerAdd'];
	$OwnerTel=$_POST['OwnerTel'];
	$OwnerIdCard=$_POST['OwnerIdCard'];
	$DriverID=$_POST['DriverID'];
	$Driver=$_POST['Driver'];
	$Driver1ID=$_POST['Driver1ID'];
	$Driver1=$_POST['Driver1'];
	$Driver2ID=$_POST['Driver2ID'];
	$Driver2=$_POST['Driver2'];
	$InsuranceNo=$_POST['InsuranceNo'];
	$InsuranceCompany=$_POST['InsuranceCompany'];
	$InsuranceDate=$_POST['InsuranceDate'];
	$TransportationBeginDate=$_POST['TransportationBeginDate'];
	$TransportationEndDate=$_POST['TransportationEndDate'];
	$TradeBeginDate=$_POST['TradeBeginDate'];
	$TradeEndDate=$_POST['TradeEndDate'];
	$RenBeginDate=$_POST['RenBeginDate'];
	$RenEndDate=$_POST['RenEndDate'];
	$ManagementLine=$_POST['ManagementLine'];
	$LineLicense=$_POST['LineLicense'];
	$LineLicenseAttached=$_POST['LineLicenseAttached'];
	$AttachedEndDate=$_POST['AttachedEndDate'];
	$RoadTransport=$_POST['RoadTransport'];
	$RoadTransportEndDate=$_POST['RoadTransportEndDate'];
	$VehicleDriving=$_POST['VehicleDriving'];
	$VehicleDrivingEndDate=$_POST['VehicleDrivingEndDate'];
	$Business=$_POST['Business'];
	$SpringCheckEndDate=$_POST['SpringCheckEndDate'];
	$ExaminationEndDate=$_POST['ExaminationEndDate'];
	$TwoEndDate=$_POST['TwoEndDate'];
	$RankEndDate=$_POST['RankEndDate'];
	$TravelEndDatete=$_POST['TravelEndDatete'];
	$MonthEndDate=$_POST['MonthEndDate'];
	$CNGEndDate=$_POST['CNGEndDate'];
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
				$saveFilePath = "scanFiles/busfile" . $BusID . ".$extName";
				move_uploaded_file($_FILES['scanfile']['tmp_name'], $saveFilePath);
			} else {
				echo "<script>alert('请上传小于2MB的附件');history.back();</script>";
			}
		}
	}

	$select="select * from tms_bd_BusInfo where bi_BusID='{$BusID}'";
	$sele=$class_mysql_default->my_query($select);
	if(!mysql_fetch_array($sele)){
			$insert="insert into tms_bd_BusInfo (bi_BusID,bi_BusNumber,bi_BusUnit,bi_SeatS,bi_AddSeatS,bi_AllowHalfSeats,bi_DriverID,
				bi_Driver,bi_Driver1ID,bi_Driver1,bi_Driver2ID,bi_Driver2,bi_RegDate,bi_Tonnage,bi_OwnerName,bi_OwnerAdd,
				bi_OwnerTel,bi_OwnerIdCard,bi_BusTypeID,bi_BusType,bi_EngineType,bi_EngineNumber,bi_BusIdentify,bi_BusChangeType,
				bi_Remark,bi_InsuranceNo,bi_InsuranceCompany,bi_InsuranceDate,bi_TransportationBeginDate,bi_TransportationEndDate,
				bi_TradeBeginDate,bi_TradeEndDate,bi_RenBeginDate,bi_RenEndDate,bi_ManagementLine,bi_LineLicense,bi_LineLicenseAttached,
				bi_AttachedEndDate,bi_RoadTransport,bi_RoadTransportEndDate,bi_VehicleDriving,bi_VehicleDrivingEndDate,bi_Business,
				bi_SpringCheckEndDate,bi_ExaminationEndDate,bi_TwoEndDate,bi_RankEndDate,bi_TravelEndDate,
				bi_MonthEndDate,bi_CNGEndDate,bi_Sign,bi_InStationID,bi_InStation,bi_AdderID,bi_Adder,bi_AddTime,bi_fileName,bi_ScanPath) 
				values('{$BusID}','{$BusNumber}','{$BusUnit}','{$SeatS}','{$AddSeatS}','{$AllowHalfSeats}','{$DriverID}','{$Driver}','{$Driver1ID}','{$Driver1}','{$Driver2ID}','{$Driver2}','{$RegDate}','{$Tonnage}',
				'{$OwnerName}','{$OwnerAdd}','{$OwnerTel}','{$OwnerIdCard}','{$BusTypeID}','{$BusType}','{$EngineType}','{$EngineNumber}',
				'{$BusIdentify}','{$BusChangeType}','{$Remark}','{$InsuranceNo}','{$InsuranceCompany}','{$InsuranceDate}','{$TransportationBeginDate}',
				'{$TransportationEndDate}','{$TradeBeginDate}','{$TradeEndDate}','{$RenBeginDate}','{$RenEndDate}','{$ManagementLine}',
				'{$LineLicense}','{$LineLicenseAttached}','{$AttachedEndDate}','{$RoadTransport}','{$RoadTransportEndDate}','{$VehicleDriving}','{$VehicleDrivingEndDate}',
				'{$Business}','{$SpringCheckEndDate}','{$ExaminationEndDate}','{$TwoEndDate}','{$RankEndDate}','{$TravelEndDatete}','{$MonthEndDate}','{$CNGEndDate}','{$Sign}',
				'{$InStationID}','{$InStation}','{$userID}','{$userName}','{$CurTime}','{$fileName}','{$saveFilePath}')";
			$query = $class_mysql_default->my_query($insert);
		//	if (!$query) echo "SQL错误：".mysql_error();
			if($query){
				echo"<script>alert('恭喜您！添加成功!');window.location.href='tms_v1_basedata_addbus.php'</script>";
			}else{
				echo"<script>alert('添加失败');window.location.href='tms_v1_basedata_addbus.php'</script>";
			}
	}else{
			echo"<script>alert('车辆编号已存在，请重新输入！');window.location.href='tms_v1_basedata_addbus.php'</script>";
		}
?>

