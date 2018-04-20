<?php
header('Content-Type: text/html;charset=UTF-8');
$host="localhost"; //MySQL 主機位址
$username="root"; //MySQL 使用者名稱
$password=""; //MySQL 使用者密碼
$database="team"; //資料庫名稱
$conn=mysql_connect($host, $username, $password); //建立連線
mysql_query("SET NAMES 'utf8'"); //設定查詢所用之字元集為 utf-8
mysql_select_db($database, $conn); //開啟資料庫

if ($_POST["TID"] != 0){
	$SQL="SELECT * FROM `teamlist` WHERE TID=".$_POST["TID"]; //原始teamtable
	$result=mysql_query($SQL, $conn); //執行 SQL 指令
	$row=mysql_fetch_assoc($result);
}
else{
	$SQL="SELECT * FROM `teamlist`"; //原始teamtable
	$result=mysql_query($SQL, $conn); //執行 SQL 指令
}





/*$data=array(); 
for ($i=0; $i<mysql_numrows($result); $i++) { //走訪紀錄集 (列)
     $row=mysql_fetch_array($result); //取得列陣列
     $stock_name=$row["player1"];
     $stock_id=$row["player2"];
     $stock[$i]=array($stock_name, $stock_id); //存入二維陣列
     } //end of for
*/	 
class teamData{
	
	public $TID;
	public $Team;
	public $TimeTable;
	public $TimeTableInv;
	public $SongID;
	public $SongName;
	public $OriginalPlayer;
	public $Category;
	public $TeamDetail;
	public $AvailableTimeNum;
	public $TotalTimeNum;
	public $ImageCount;
	
	public function teamData($team_row){
		$this->TID = $team_row["TID"];
		$this->Team = $team_row["Team"];
		$this->TimeTable = array(array(2,3,4,5,6,7,8,9),
								explode(",",$team_row["Day1"]),
								explode(",",$team_row["Day2"]),
								explode(",",$team_row["Day3"]),
								explode(",",$team_row["Day4"]),
								explode(",",$team_row["Day5"]));
		$this->TimeTableInv = $this->TimeTable;
		array_unshift($this->TimeTable, null);
		$this->TimeTable = call_user_func_array('array_map', $this->TimeTable);
		$this->SongID = explode(",",$team_row["SongID"]);
		$this->SongName = explode(",",$team_row["SongName"]);
		$this->OriginalPlayer = explode(",",$team_row["OriginalPlayer"]);
		$this->Category = array_map(function ($Category_song){return explode(",",$Category_song);},
									explode(";",$team_row["Category"]));
		$this->TeamDetail = $team_row["TeamDetail"];
		$this->AvailableTimeNum = $team_row["AvailableTimeNum"];
		$this->TotalTimeNum = $team_row["TotalTimeNum"];
		$this->ImageCount = $team_row["ImageCount"];
	}
}

$team = array();
if($_POST["TID"] != 0)
	$team = new teamData($row);
else{
	while($row = mysql_fetch_assoc($result)){
		$tmp = new teamData($row);
		array_push($team , $tmp);
	}
}
echo json_encode($team);  //將陣列轉成 JSON 資料格式傳回
?>