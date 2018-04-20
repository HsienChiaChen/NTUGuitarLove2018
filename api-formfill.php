<?php
header('Content-Type: text/html;charset=UTF-8');
$host="localhost"; //MySQL 主機位址
$username="Leo"; //MySQL 使用者名稱
$password="leo826826"; //MySQL 使用者密碼
$database="team"; //資料庫名稱
$conn=mysql_connect($host, $username, $password); //建立連線
mysql_query("SET NAMES 'utf8'"); //設定查詢所用之字元集為 utf-8
mysql_select_db($database, $conn); //開啟資料庫
$SQL="SELECT MAX(RID) FROM `responselist`"; //responselist
$result=mysql_query($SQL, $conn); //執行 SQL 指令
$row=mysql_fetch_assoc($result);
$RID=(int)$row['MAX(RID)']+1;
	
$DateLabel=$_POST['DateLabel'];
$ClassLabel=$_POST['ClassLabel'];
$SongLabel=$_POST['SongLabel'];
$TeamLabel=$_POST['TeamLabel'];
$CategoryLabel=$_POST['CategoryLabel'];

$PlaceTextBox=$_POST['PlaceTextBox'];
$ClassNameTextBox=$_POST['ClassNameTextBox'];
$GeneralLessonDropDownList=$_POST['GeneralLessonDropDownList'];

$NameTextBox=$_POST['NameTextBox'];
$DepartmentGradeTextBox=$_POST['DepartmentGradeTextBox'];
$PhoneTextBox=$_POST['PhoneTextBox'];
$EmailTextBox=$_POST['EmailTextBox'];
$SentNameTextBox=$_POST['SentNameTextBox'];
$SentDepartmentGradeTextBox=$_POST['SentDepartmentGradeTextBox'];
$SentPhoneTextBox=$_POST['SentPhoneTextBox'];
$SentEmailTextBox=$_POST['SentEmailTextBox'];
$PayDayDropDownList=$_POST['PayDayDropDownList'];
$SpecialRequestTextBox=$_POST['SpecialRequestTextBox'];

//$SpecialRequest='';
//if(isset($_POST['SpecialRequestCheckBox$0']))
//	$SpecialRequest=$SpecialRequest.$_POST['SpecialRequestCheckBox$0'].' , ';
//if(isset($_POST['SpecialRequestCheckBox$1']))
//	$SpecialRequest=$SpecialRequest.$_POST['SpecialRequestCheckBox$1'].' , ';
//if(isset($_POST['SpecialRequestCheckBox$2']))
//	$SpecialRequest=$SpecialRequest.$_POST['SpecialRequestCheckBox$2'].' , ';
//if(isset($_POST['SpecialRequestCheckBox$3']))
//	$SpecialRequest=$SpecialRequest.$_POST['SpecialRequestCheckBox$3'].' , ';
//if(isset($_POST['SpecialRequestCheckBox$4']))
//	$SpecialRequest=$SpecialRequest.$_POST['SpecialRequestCheckBox$4'].' , ';
//if(isset($_POST['SpecialRequestCheckBox$5']))
//	$SpecialRequest=$SpecialRequest.$_POST['SpecialRequestCheckBox$5'].' , ';
//if(isset($_POST['SpecialRequestCheckBox$6']))
//	$SpecialRequest=$SpecialRequest.$_POST['SpecialRequestCheckBox$6'];
$RemarkTextBox=$_POST['RemarkTextBox'];


$SQL="INSERT INTO `responselist` (RID,
							 date,
							 class,
							 teammembername,
							 songname,
							 category,
							 place,
							 classname ,
							 generallesson ,
							 name ,
							 departgrade ,
							 phone ,
							 email ,
							 sentname ,
							 sentdepartgrade ,
							 sentphone ,
							 sentemail ,
							 payday ,
							 specialrequest ,
							 remark ,
							 ispaid ) VALUES ( '".$RID."','"
												   .$DateLabel."','"
												   .$ClassLabel."','"
												   .$TeamLabel."','"
												   .$SongLabel."','"
												   .$CategoryLabel."','"
												   .$PlaceTextBox."','"
												   .$ClassNameTextBox."','"
												   .$GeneralLessonDropDownList."','"
												   .$NameTextBox."','"
												   .$DepartmentGradeTextBox."','"
												   .$PhoneTextBox."','"
												   .$EmailTextBox."','"
												   .$SentNameTextBox."','"
												   .$SentDepartmentGradeTextBox."','"
												   .$SentPhoneTextBox."','"
												   .$SentEmailTextBox."','"
												   .$PayDayDropDownList."','"
												   .$SpecialRequestTextBox."','"
												   .$RemarkTextBox."','"
												   .'No'."'
												   )";
//echo $SQL;
mysql_query($SQL,$conn);

$SQL = "UPDATE `teamlist` SET `AvailableTimeNum` = `AvailableTimeNum` - 1 WHERE `Team`= '".$TeamLabel."' ";
mysql_query($SQL,$conn);

//echo mysql_errno($conn) . ": " . mysql_error($conn). "\n";
mysql_close($conn);

 //header('Location: confirm.php');
 //exit;

?>