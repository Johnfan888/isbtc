﻿
<?php
/*
 * 签票查询页面
 */

//定义页面必须验证是否登录
define("AUTH", "TRUE");

//载入初始化文件
require_once("../ui/inc/init.inc.php");
$checkdate3=date('Y-m-d');
$checkdate4=date('Y-m-d');
$checkdate1=$_POST['startdate'];
$checkdate2=$_POST['enddate'];
$sellerID1=$_POST['sellerselect'];
$sellerID = $_POST['sellerselect'];
if (($StationName = $_POST['stationselect']) == "")
		$StationName = "%";
if (($sellerID == ""))
		$sellerID = "%";
if (($rtk_TicketID = $_POST['rtk_TicketID']) == "")
		$rtk_TicketID = "%";
 if($_POST['rtk_TicketID']==""){
		if($checkdate1 == "" && $checkdate2 == ""){
 			$strDate = '';
 		}
 		else{
		$checkdate1=$_POST['startdate'];
		$checkdate2=$_POST['enddate'];
		if ($checkdate1 != "" && $checkdate2 == ""){ //发车日期处理
 			$strDate="and rtk_SignDate >='{$checkdate1}'";
 			
 		}
 		if ($checkdate1 == "" && $checkdate2 != ""){
 			$strDate="and rtk_SignDate <='{$checkdate2}'";
 		}
 		if ($checkdate1 != "" && $checkdate2 != ""){
 			$strDate="and rtk_SignDate >='{$checkdate1}' and rtk_SignDate <='{$checkdate2}'";
 		}
	}
		}
else{
			$strDate = '';
		} 		
	if(isset($_POST['exceldoc'])) {
		$file_name = "info.csv";
		header("Content-Type: application/vnd.ms-excel; charset=$DefaultLang");
		header("Content-Disposition: attachment; filename=$file_name");
		header("Cache-Control: no-cache, must-revalidate");

		$fp = fopen('php://output', 'w');
		$out = array('', '', '', '', '', '', '', '', '', '签票信息表', '', '', '', '', '', '', '', '');
		fputcsv($fp, $out);
		$qrydate = "日期:" . "$checkdate1" . "至" . "$checkdate2";
		$out = array($qrydate, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
		fputcsv($fp, $out);
		$head = array('票号','班次', '发车日期', '发车时间', '始发站', '上车站', '到达站', '终点站', '售价', '票型', '座位号', '售票日期', '售票时间', 
			 '是否缴款', '缴款时间','签票日期','签票车站','签票员');
		fputcsv($fp, $head);

		$cnt = 0; 
		$limit = 100000; 
		$outputRow = "";  
		$queryString1 = "SELECT * 
					FROM tms_sell_ReturnTicket 
					WHERE 
					rtk_Station LIKE '{$StationName}%' 
					AND rtk_SignUserID LIKE '{$sellerID}%' 
					AND rtk_TicketID LIKE '{$rtk_TicketID}%'".$strDate;
		$result1 = $class_mysql_default->my_query("$queryString1");
		while ($row1 = mysql_fetch_array($result1)) {
			$cnt++; 
			if ($limit == $cnt) { //刷新输出buffer
				ob_flush(); 
				flush(); 
				$cnt = 0; 
			} 
			($row1['rtk_IsBalance'] == '1')? $rtk_IsBalance = "是" : $rtk_IsBalance = "否";						
			$outputRow = array($row1['rtk_TicketID'],  $row1['rtk_NoOfRunsID'], $row1['rtk_NoOfRunsdate'], $row1['rtk_BeginStationTime'], 
				$row1['rtk_BeginStation'], $row1['rtk_FromStation'], $row1['rtk_ReachStation'], $row1['rtk_EndStation'], $row1['rtk_SellPrice'], 
				$row1['rtk_SellPriceType'], $row1['rtk_SeatID'], $row1['rtk_SellDate'], $row1['rtk_SellTime'], $rtk_IsBalance, 
				$row1['rtk_BalanceDateTime'],$row1['rtk_SignDate'],$row1['rtk_Station'],$row1['rtk_SignUser']);
				
		fputcsv($fp, $outputRow); 
		}
		
		fclose($fp);
		exit();
	}

?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>签票查询</title>
		<meta http-equiv="Content-Type" content="text/html; charset=$DefaultLang" />
		<link href="../ui/images/style_main.css" type="text/css" rel="stylesheet" />
		<link href="../css/tms.css" type="text/css" rel="stylesheet" />
		<script type="text/javascript" src="../js/jquery.js"></script>		
		<script type="text/javascript" src="../js/My97DatePickerBeta/My97DatePicker/WdatePicker.js"></script>
		<script type="text/javascript" src="../js/jquery_tablesorter/jquery.tablesorter.js"></script>
		<script>
		function return1(){
			window.location.href='../sell/tms_v1_sell_sellquery.php';	
		}
		$(document).ready(function(){
			$("#table1").tablesorter();
			$("#stationselect").focus();
			$("#stationselect").blur(function(){
				var stationName = $("#stationselect").val();
				jQuery.get(
					'../accounting/tms_v1_accounting_dataProcess.php',
					{'op': 'getSellersData', 'stationName': stationName, 'time': Math.random()},
					function(data){
						$("#sellerselect option:gt(0)").remove();
						var objData = eval('(' + data + ')');
						for (var i = 0; i < objData.length; i++) {
							$("<option value = " + objData[i].sellerID + ">" + objData[i].sellerID + "</option>").appendTo($("#sellerselect"));
						}
				});
			});
		});
		$(document).ready(function(){
			
			$("#table1 tr").mouseover(function(){$(this).css("background-color","#F1E6C2");});
			$("#table1 tr").mouseout(function(){$(this).css("background-color","#CCCCCC");});
			$("#table1 tr").click(function(){
				$("#table1 tr:not(this)").css("background-color","#CCCCCC");
				$("#table1 tr:not(this)").mouseover(function(){$(this).css("background-color","#F1E6C2");});
				$("#table1 tr:not(this)").mouseout(function(){$(this).css("background-color","#CCCCCC");});
				$(this).css("background-color","#FFCC00");
				$(this).mouseover(function(){$(this).css("background-color","#FFCC00");});
				$(this).mouseout(function(){$(this).css("background-color","#FFCC00");});
			});
		});
		</script>
	</head>
	<body>
		<table width="100%" align="center" class="main_tableborder" border="1" cellpadding="3" cellspacing="1">
			<tr>
				<td bgcolor="#f0f8ff"><img src="../ui/images/tb.gif" style="top:3px; position:relative;" width="14" height="14" /><span class="graytext" style="margin-left:8px;"> 签   票  信 息 查 询</span></td>
			</tr>
		</table>

		<form action="" method="post" name="form1">
		<table width="100%" align="center" class="main_tableborder" border="1" cellpadding="3" cellspacing="1">
			<tr bgcolor="#FFFFFF">
				<td nowrap="nowrap" align="left" bgcolor="#FFFFFF"><span class="form_title"><img src="../ui/images/sj.gif" width="6" height="7" /> 签票车站：</span></td>
				<td>
					<select id="stationselect" name="stationselect" size="1">
		            <?php
		            	if($userStationID == "all") {
		            ?>
						<?php if ($StationName == "" || $StationName == "%") { ?>
							<option value="" selected="selected">请选择车站</option>
						<?php } else { ?>
							<option value="<?php echo $StationName?>" selected="selected"><?php echo $StationName?></option>
						<?php } ?>
					<?php 
							$queryString = "SELECT DISTINCT sset_SiteName FROM tms_bd_SiteSet WHERE sset_IsStation=1";
							$result = $class_mysql_default->my_query("$queryString");
					        while($res = mysql_fetch_array($result)) {
			            		if($res['sset_SiteName'] != $StationName) {
					?>
		            		<option value="<?php echo $res['sset_SiteName'];?>"><?php echo $res['sset_SiteName'];?></option>
		            <?php 
								}
							}
		            	}
		            	else {
		            ?>
						<option value="<?php echo $userStationName;?>" selected="selected"><?php echo $userStationName;?></option>
					<?php
		            	}
					?>
					</select>
				</td>
				<td nowrap="nowrap" align="left" bgcolor="#FFFFFF"><span class="form_title"><img src="../ui/images/sj.gif" width="6" height="7" /> 签票日期：</span></td>
				<td  colspan="2"  bgcolor="#FFFFFF">
				<input type="text" name="startdate" id="startdate" class="Wdate" value="<?php if(isset($_POST['resultquery'])){if($_POST['rtk_TicketID']==""){echo $_POST['startdate'];}} else{ echo $checkdate3;} ?>" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd'})"/>
    					至	
    			<input type="text" name="enddate" id="enddate" class="Wdate" value="<?php if(isset($_POST['resultquery'])){if($_POST['rtk_TicketID']==""){echo $_POST['enddate'];}} else{ echo $checkdate4;}?>" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd'})"/>
				</td>
				</tr>
				<tr>
				<td nowrap="nowrap" align="left" bgcolor="#FFFFFF"><span class="form_title"><img src="../ui/images/sj.gif" width="6" height="7" /> 签票员：</span></td>
				<td>
					<select id="sellerselect" name="sellerselect" size="1" style="width:100px;">
					<?php if($sellerID1=="") {?>
						<option value="" selected="selected">请选择签票员</option>
						<?php } else {?>
						<option></option>
						<option value="<?php echo $sellerID?>" selected="selected"><?php echo $sellerID?></option>
						<?php } ?>
					</select>
				</td>
				<td nowrap="nowrap" bgcolor="#FFFFFF"><span class="form_title"><img src="../ui/images/sj.gif" width="6" height="7" /> 票号：&nbsp;&nbsp;&nbsp;</span></td>
				<td><input type="text" name="rtk_TicketID" id="rtk_TicketID" value="<?php ($rtk_TicketID == "" || $rtk_TicketID == "%")? print "" : print $rtk_TicketID;?>"/></td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" name="resultquery" id="resultquery" value="查询" />
					<?php if($startdate!="" || $enddate!=""){  ?>
					&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" name="return" id="return" value="返回" onclick="return1()"/>
					<?php } ?>
					&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" name="exceldoc" id="exceldoc" value="导出Excel" />
				</td>
			</tr>
		</table>
<div id="tableContainer" class="tableContainer" > 
<table class="main_tableboder" id="table1" > 
<thead class="fixedHeader">
			<tr>
				<th nowrap="nowrap" align="center" bgcolor="#006699">票号</th>
				<th nowrap="nowrap" align="center" bgcolor="#006699">班次</th>
				<th nowrap="nowrap" align="center" bgcolor="#006699">发车日期</th>
				<th nowrap="nowrap" align="center" bgcolor="#006699">发车时间</th>
				<th nowrap="nowrap" align="center" bgcolor="#006699">始发站</th>
				<th nowrap="nowrap" align="center" bgcolor="#006699">上车站</th>
				<th nowrap="nowrap" align="center" bgcolor="#006699">到达站</th>
				<th nowrap="nowrap" align="center" bgcolor="#006699">终点站</th>
				<th nowrap="nowrap" align="center" bgcolor="#006699">售价</th>
				<th nowrap="nowrap" align="center" bgcolor="#006699">票型</th>
				<th nowrap="nowrap" align="center" bgcolor="#006699">座位号</th>
				<th nowrap="nowrap" align="center" bgcolor="#006699">售票日期</th>
				<th nowrap="nowrap" align="center" bgcolor="#006699">售票时间</th>
				<th nowrap="nowrap" align="center" bgcolor="#006699">是否缴款</th>
				<th nowrap="nowrap" align="center" bgcolor="#006699">缴款时间</th>
				<th nowrap="nowrap" align="center" bgcolor="#006699">签票日期</th>
				<th nowrap="nowrap" align="center" bgcolor="#006699">签票车站</th>
				<th nowrap="nowrap" align="center" bgcolor="#006699">签票员</th>
			</tr>
		</thead>
	<tbody class="scrollContent">
			<?php
				if(isset($_POST['resultquery'])) {
					$queryString1 = "SELECT * 
					FROM tms_sell_ReturnTicket 
					WHERE 
					rtk_Station LIKE '{$StationName}%' 
					AND rtk_SignUserID LIKE '{$sellerID}%' 
					AND rtk_TicketID LIKE '{$rtk_TicketID}%'".$strDate; 
				}
				//echo $sellerID;
					$result1 = $class_mysql_default->my_query("$queryString1");
					while ($row1 = mysql_fetch_array($result1)) {
			?>
			<tr bgcolor="#CCCCCC">
				<td nowrap="nowrap"><?php echo $row1['rtk_TicketID'];?></td>
				<td nowrap="nowrap"><?php echo $row1['rtk_NoOfRunsID'];?></td>
				<td nowrap="nowrap"><?php echo $row1['rtk_NoOfRunsdate'];?></td>
				<td nowrap="nowrap"><?php echo $row1['rtk_BeginStationTime'];?></td>
				<td nowrap="nowrap"><?php echo $row1['rtk_BeginStation'];?></td>
				<td nowrap="nowrap"><?php echo $row1['rtk_FromStation'];?></td>
				<td nowrap="nowrap"><?php echo $row1['rtk_ReachStation'];?></td>
				<td nowrap="nowrap"><?php echo $row1['rtk_EndStation'];?></td>
				<td nowrap="nowrap"><?php echo $row1['rtk_SellPrice'];?></td>
				<td nowrap="nowrap"><?php echo $row1['rtk_SellPriceType'];?></td>
				<td nowrap="nowrap"><?php echo $row1['rtk_SeatID'];?></td>
				<td nowrap="nowrap"><?php echo $row1['rtk_SellDate'];?></td>
				<td nowrap="nowrap"><?php echo $row1['rtk_SellTime'];?></td>
				<td nowrap="nowrap"><?php if ($row1['rtk_IsBalance'] == '1') echo "是"; else echo "否";?></td>
				<td nowrap="nowrap"><?php echo $row1['rtk_BalanceDateTime'];?></td>
				<td nowrap="nowrap"><?php echo $row1['rtk_SignDate'];?></td>
				<td nowrap="nowrap"><?php echo $row1['rtk_Station'];?></td>
				<td nowrap="nowrap"><?php echo $row1['rtk_SignUser'];?></td>
			</tr>
			<?php 
					}
				
			?>
		</tbody>
		</table>
		</div>
		</form>
	</body>
</html>
