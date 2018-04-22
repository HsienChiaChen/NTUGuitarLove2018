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
	<h1>訂單後台查詢</h1>
	</section>
	<section id="form" >
	
		
		<br>
		<?php
			
			$sql = "select * from `responselist` where 1" ;
			$data = mysql_query($sql);
			$result = mysql_num_rows($data);
			echo "以下共 $result 筆訂單<br>";
			if(mysql_num_rows($data) > 0){
				echo "<table border = '1' width=4000>";
				echo "<tr>
						<td>訂單編號</td>
						<td>日期</td>
						<td>節次</td>
						<td>歌手</td>
						<td>歌曲</td>
						<td>分類</td>
						<td>傳情地點</td>
						<td>課堂名稱</td>
						<td>是否為通識</td>
						<td>傳情人姓名</td>
						<td>傳情人系級</td>
						<td>傳情人手機</td>
						<td>傳情人E-mail</td>
						<td>被傳情人姓名</td>
						<td>被傳情人系級</td>
						<td>被傳情人手機</td>
						<td>被傳情人E-mail</td>
						<td>繳費日期</td>
						<td>特殊需求</td>
						<td>備註</td>
						<td>繳費與否</td>
					</tr>";
				$count = 0;
				$rs = mysql_fetch_row($data);
			
				while($rs != "" and $count < 30){
					echo "<tr>
						<td>$rs[0]</td>
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
						<td>$rs[20]</td>
					</tr>";
					$rs = mysql_fetch_row($data);
				}
				echo "</table>";
			}	
			echo "<br>";
		?>
		
		</p>
		
	</section>
	
	</div>
</body>
