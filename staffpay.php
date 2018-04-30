<?php
mysql_connect("localhost","Leo","leo826826");
mysql_select_db("team");
mysql_query("set names utf8");

?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>2018 台大吉他社 - 民歌傳情</title>
<link href="index.css" rel="stylesheet" media="all">
</head>

<body>
	<div id="main">
	<section id="title">
	<h1>訂單後台繳費查詢</h1>
	</section>
	<section id="form" >
	
		
	
		<br>
		Step 1. 先輸入姓名查詢訂單<br>
		Step 2. 幹部填寫傳情紙資訊  (寫有「填寫」的欄位！！！)<br>
		Step 3. 輸入「訂單編號」按確認繳費。
		若訂單不在資料庫裡，請訂單人重填表單：https://ppt.cc/fxhYmx <br>
		<br><br> <!-- br代表換行 -->
		
		<form method="POST" action="staffpay.php">   <!-- 訊息輸入框 -->
			姓名查詢  :  <input type="text" name="nn">  <!-- name用來當作之後變數的使用 -->
			<input type="submit" value="姓名查詢">
			<br><br>
			訂單編號  :  <input type="text" name="rr">  <!-- name用來當作之後變數的使用 -->
			<input type="submit" value="確定繳費">
			<br><br>
			訂單編號(按錯復原)  :  <input type="text" name="qq">  <!-- name用來當作之後變數的使用 -->
			<input type="submit" value="確定復原">
		</form>
		<?php
			
			
		?>
		
		<br>
		<?php
			$FindR = isset($_POST['rr']) ? $_POST['rr'] : ''; #如果有輸入值，則把輸入的值存到變數rr
			$FindQ = isset($_POST['qq']) ? $_POST['qq'] : ''; #如果有輸入值，則把輸入的值存到變數qq
			$FindN = isset($_POST['qq']) ? $_POST['nn'] : ''; #如果有輸入值，則把輸入的值存到變數nn
			
			
			if($FindR !== ""){
				$sql = "update `responselist` set `Ispaid` = \"Yes\" where `RID` = '$FindR'";
				mysql_query($sql);
			}
			if($FindQ !== ""){
				$sql = "update `responselist` set `Ispaid` = \"No\" where `RID` = '$FindQ'";
				mysql_query($sql);
			}
			
			/*else if (($FindName == "" and $FindTeam != "") or ($FindName != "" and $FindTeam == ""))
			{
				echo "有資料為空值，請重新填寫";
			}*/
			
			if($FindN !== "")
			{
				$sql = "select * from `responselist` where `Name` = '$FindN'" ;
			}
			else
			{
				$sql = "select * from `responselist` where 1" ;
			}
			
			$data = mysql_query($sql);
			$result = mysql_num_rows($data);
			echo "以下共 $result 筆訂單<br>";
			if(mysql_num_rows($data) > 0){
				echo "<table border = '1' width=4000>";
				echo "<tr>
						<td>訂單編號</td>
						<td>繳費與否</td>
						<td>日期(填寫)</td>
						<td>節次(填寫)</td>
						<td>歌手(填寫)</td>
						<td>歌曲(填寫)</td>
						<td>分類</td>
						<td>傳情地點(填寫)</td>
						<td>課堂名稱(填寫)</td>
						<td>是否為通識</td>
						<td>傳情人姓名<br>(匿名則勾匿名，但聯絡方式要寫)</td>
						<td>傳情人系級</td>
						<td>傳情人手機(填寫)</td>
						<td>傳情人E-mail</td>
						<td>被傳情人姓名(填寫)</td>
						<td>被傳情人系級</td>
						<td>被傳情人手機(若有則填寫)</td>
						<td>被傳情人E-mail</td>
						<td>繳費日期</td>
						<td>特殊需求(在空白處寫)</td>
						<td>備註(填寫)</td>
						
					</tr>";
				$count = 0;
				$rs = mysql_fetch_row($data);
			
				while($rs != ""){
					echo "<tr>
						<td>$rs[0]</td>
						<td>$rs[20]</td>
						<td>$rs[1]</td>
						<td>$rs[2]</td>
						<td>$rs[3]</td>
						<td>$rs[4]</td>
						<td>$rs[5]</td>
						<td>$rs[6]</td>
						<td>$rs[7]</td>
						<td>$rs[8]</td>
						<td>$rs[9]</td>
						<td>$rs[10]</td>
						<td>$rs[11]</td>
						<td>$rs[12]</td>
						<td>$rs[13]</td>
						<td>$rs[14]</td>
						<td>$rs[15]</td>
						<td>$rs[16]</td>
						<td>$rs[17]</td>
						<td>$rs[18]</td>
						<td>$rs[19]</td>
						
					</tr>";
					$rs = mysql_fetch_row($data);
				}
				echo "</table>";
			}	
			//mysql_close($conn);
			
			echo "<br>";
		?>
		
		
		</p>
		
	</section>
	
	</div>
</body>
