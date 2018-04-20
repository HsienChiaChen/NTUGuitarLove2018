<?php

//$_POST=array("TID"=>"1", "Class"=>"3", "DATE"=>"1");

header('Content-Type: text/plain;charset=UTF-8');
$host="localhost"; //MySQL 主機位址
$username="Leo"; //MySQL 使用者名稱
$password="leo826826"; //MySQL 使用者密碼
$database="team"; //資料庫名稱
$conn=mysql_connect($host, $username, $password); //建立連線
mysql_query("SET NAMES 'utf8'"); //設定查詢所用之字元集為 utf-8
mysql_select_db($database, $conn); //開啟資料庫
$SQL="SELECT * FROM `teamlist` WHERE TID=".$_POST["TID"]; //teamtable
$result=mysql_query($SQL, $conn); //執行 SQL 指令
$row=mysql_fetch_assoc($result);

$Class=(string)((int)$_POST['Class']-2);
$class_array=explode(",",$row["Day".$_POST['DATE']]);
if($class_array[(int)$Class] == '1'){
	$class_array[(int)$Class] = '2';
	$class_array = implode(",", $class_array);
	$SQL = "UPDATE `teamlist` SET Day".$_POST['DATE']."='".$class_array."' WHERE TID=".$_POST["TID"];
	mysql_query($SQL, $conn);
	//echo mysql_errno($conn) . ": " . mysql_error($conn). "\n";
	//echo $class_array;
	//echo $class_array;
	
	echo json_encode(array(1));
	return;

}	
else{

	
	echo json_encode(array(0));
	return;
}
?>