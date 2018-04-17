

<!DOCTYPE HTML>
<html prefix='og: http://ogp.me/ns#'>


<!-- Mirrored from love.ntuguitar.com/ by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 12 Apr 2017 06:11:27 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->
<head>
    <meta property="og:title" content="【台大吉他社105級 民歌傳情】" />
    <meta property="og:type" content="Website" />
    <meta property="og:url" content="index.html" />
    <meta property="og:image" content="images/meta-img.jpg" />
    <meta property="og:description" content="【傳情週：5/07 - 5/11， 網路點歌：4/20 - 5/03】說不出口的話好多，既然巧克力、琉璃、棉花糖都可以用來傳情，這一次就讓我們用一首歌曲傳達你的心意！" />
    <meta property="og:site_name" content="台大吉他社105級 民歌傳琴" />
    <meta property='article:author' content='https://www.facebook.com/ntuguitarlove' />

    <title>台大吉他社 - 民歌傳情</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="images/icon.jpg" rel="SHORTCUT ICON" />
    <!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
    <link rel="stylesheet" href="Content/font-awesome/css/font-awesome.min.css" />
    <link rel="stylesheet" href="CSS/mainpage.css" />
    <link rel="stylesheet" href="CSS/swipebox.min.css" />
    <!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
    <!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
    <!-- Scripts -->
    <script src="Scripts/jquery-2.2.1.min.js"></script>
    <script src="Scripts/jquery.dropotron.min.js"></script>
    <script src="Scripts/jquery.scrolly.min.js"></script>
    <script src="Scripts/jquery.scrollgress.min.js"></script>
    <script src="Scripts/skel.min.js"></script>
    <script src="Scripts/util.js"></script>
    <script src="Scripts/jquery.swipebox.min.js"></script>
    <!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
    <script src="Scripts/Custom/HomeScript.js"></script>
    <script>
        $(document).ready(function () {
            if (/Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent)) {
                var h = $('#banner').height();
                $('#banner').height(h);
            }

            $('.swipebox-video').swipebox();

            //alert('民歌傳情選歌正式結束，5/7-5/11為傳情週，讓我們把你妳的心意唱給他她聽!\n\n2018台大吉他社民歌傳情');
        });

        $(window).resize(function () {
            setIframeHeight(document.getElementById('VideoClipIframe'));
        });
        $(window).load(function () {
            setIframeHeight(document.getElementById('VideoClipIframe'));
        });

        function setIframeHeight(iframe) {
            if (iframe) {
                var iframeWin = iframe.contentWindow || iframe.contentDocument.parentWindow;
                if (iframeWin.document.body) {
                    iframe.height = iframeWin.document.documentElement.scrollHeight || iframeWin.document.body.scrollHeight;
                }
            }
        };
    </script>
</head>

<body class="index">
    <div id="page-wrapper">
        <!-- Header -->
        <header id="header" class="alt">
            <h2 id="logo">
                <a href="index.php">2018民歌傳情&nbsp;</a><a href="https://www.facebook.com/ntuguitar/" target="_parent"><span>NTU GUITAR 105</span></a>

				
<?php
/*$servername = "localhost";
$username = "root";
$password = "";
$dbname = "team";
 
// 创建连接
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
	echo "777777777777777777777777777777777777777777777777777";
    die("连接失败: " . $conn->connect_error);
} 
 
$sql = "SELECT player1, player2 FROM teamlist";
$result = $conn->query($sql);
 
if ($result->num_rows > 0) {
    // 输出数据
    while($row = $result->fetch_assoc()) {
        echo "love: " . $row["player1"]. " - Name: " . $row["player2"]. " " .  "<br>";
    }
} else {
    echo "0 结果";
}
$conn->close();*/
?>
<?php
header('Content-Type: text/html;charset=UTF-8');
$host="localhost"; //MySQL 主機位址
$username="Leo"; //MySQL 使用者名稱
$password="leo826826"; //MySQL 使用者密碼
$database="team"; //資料庫名稱
$conn=mysql_connect($host, $username,$password) or die("no connect"); //建立連線
mysql_query("SET NAMES 'utf8'"); //設定查詢所用之字元集為 utf-8
mysql_select_db($database, $conn) or die("false on connecting db"); //開啟資料庫
$SQL="SELECT * FROM `teamlist`"; 
$result=mysql_query($SQL, $conn); //執行 SQL 指令
if(!$result) die("index invalid query:".mysql_error());
//echo mysql_fetch_assoc($result)["player1"];
$stock=array(); 
for ($i=0; $i<mysql_num_rows($result); $i++) { //走訪紀錄集 (列)
     $row=mysql_fetch_assoc($result); //取得列陣列
     $stock_name=$row["Team"];
     $stock_id=$row["TID"];
     $stock[$i]=array($stock_name, $stock_id); //存入二維陣列
     } //end of for
$ans = json_encode($stock);
//echo $stock["0"]["1"];  //將陣列轉成 JSON 資料格式傳回
?>
			
			</h2>
            <nav id="nav">
                <ul>

                    <li class="submenu">
                        <a>Menu</a>
                        <ul>
                            
                            <li><a href="time.php"><span class="icon fa-clock-o"></span>&nbsp;時段選歌</a></li>
                            <li><a href="category.php"><span class="icon fa-sitemap"></span>&nbsp;分類選歌</a></li>
                            <li><a href="team.php"><span class="icon fa-user"></span>&nbsp;歌手選歌</a></li>
                            <li><a href="query.php"><span class="icon fa-book"></span>&nbsp;選歌查詢</a></li>
                            
                        </ul>
                    </li>
                    <li class="current"><a href="index.php">Home</a></li>
                    <li class="current"><a href="https://www.facebook.com/ntuguitarlove/" target="_parent">Facebook <span class="icon fa-facebook-square" /></a></li>
                    <!-- <li><a href="#" class="special">Sign Up</a></li> -->
                </ul>
            </nav>
        </header>
        <!-- Banner -->
        <section id="banner">
            <!--
                        ".inner" is set up as an inline-block so it automatically expands
                        in both directions to fit whatever's inside it. This means it won't
                        automatically wrap lines, so be sure to use line breaks where
                        appropriate (<br />).
                    -->
            <div class="inner">
                <!-- <header>
                                    <h2>NTU GUITAR</h2>
                </header> -->
                <img src="images/Title.png" style="max-width: 70%; margin-bottom: -1em;">
                <h3>網路選歌 4/20 - 5/3 | 傳情週 5/7 - 5/11</h3>
				<footer>
                    <ul class="buttons">
                        <li><a href="#guide" class="button scrolly" style="background-color: rgba(0,0,0,0.3);"><span class="icon fa-envelope"></span>&nbsp;傳情說明</a></li>
                        <li><a href="#choose" class="button scrolly" style="background-color: rgba(0,0,0,0.3);"><span class="icon fa-music"></span>&nbsp;開始選歌</a></li>
                        <li><a href="#lookup" class="button scrolly" style="background-color: rgba(0,0,0,0.3);"><span class="icon fa-book"></span>&nbsp;選歌查詢</a></li>
                    </ul>
                </footer>
            </div>
        </section>
        <!-- Main -->
        <article id="guide">
            <!-- One -->
            <section class="wrapper style2 special-alt">
                <div class="row 50%">
                    <div class="12u 12u(narrower) important(narrower)">
                        <header class="major">
                            <h1><span class="icon fa-envelope">傳情說明</span></h1>
                        </header>
                        <a class="image featured">
                            <img src="images/flow.png" style="max-width: 1250px; display: block; margin: auto;" alt="" /></a>
                        <footer>
                            <ul class="buttons">
                                <li><a href="#choose" class="button scrolly" style="background-color: rgba(0,0,0,0.15);"><span class="icon fa-music"></span>&nbsp;開始選歌</a></li>
                            </ul>
                        </footer>
                    </div>
                    <!--<div class="1u 12u(narrower)"></div>
                    <div class="2u 12u(narrower) icons">
                        <ul class="featured-icons">
                            <li>
                                <span class="icon fa-clock-o"></span>
                                <h3 style="margin: -1em 0 0 0;"> 時段選歌</h3>
                            </li>
                            <li>
                                <span class="icon fa-sitemap"></span>
                                <h3 style="margin: -1em 0 0 0;"> 分類選歌</h3>
                            </li>
                            <li>
                                <span class="icon fa-user"></span>
                                <h3 style="margin: -1em 0 0 0;"> 歌手選歌</h3>
                            </li>
                        </ul>
                    </div>-->
                </div>
            </section>
        </article>
        <article id="choose">
            <section class="wrapper style1 container special">
                <header class="major">
                    <h1><span class="icon fa-music"></span>&nbsp;開始選歌<br style="display: none" />(三種選歌方式)</h1>
                </header>
                <div class="row">
                    <div class="4u 12u(narrower)">
                        <section>
                            <span class="icon featured fa-clock-o"></span>
                            <header>
                                <h2>時段選歌</h2>
                            </header>
                        </section>
                        <p>
                            5/7(一) - 5/11(五)｜第二至第九節下課
                        </p>
                        <a href="time.php" class="button"><span class="icon fa-clock-o"></span>&nbsp;時段選歌</a>
                    </div>
                    <div class="4u 12u(narrower)">
                        <section>
                            <span class="icon featured fa-sitemap"></span>
                            <header>
                                <h2 style="position: relative">分類選歌
                                    <small style="position: absolute; top: 10px; font-size: 15px; letter-spacing: 0; font-weight: 700; color: #FF2255; /* border: 1px solid; */">(New!)</small>
                                </h2>
                            </header>
                            <p>友情 / 愛情 / 銃康 / 師長 / 另類</p>
                            <a href="category.php" class="button"><span class="icon fa-sitemap"></span>&nbsp;分類選歌</a>
                        </section>
                    </div>
                    <div class="4u 12u(narrower)">
                        <section>
                            <span class="icon featured fa-user"></span>
                            <header>
                                <h2 style="position: relative">歌手選歌
                                <small style="position: absolute; top: 10px; font-size: 15px; letter-spacing: 0; font-weight: 700; color: #6759F9; /* border: 1px solid; */">(Cool!)</small>
                                </h2>
                            </header>
                            <p>台大吉他社歌手群</p>
                            <a href="team.php" class="button"><span class="icon fa-user"></span>&nbsp;歌手選歌</a>
                        </section>
                    </div>
                </div>
            </section>
            <header class="special container">
                <h2>We deliver messages from our <strong>hands</strong> to your <strong>hearts</strong></h2>
                <span class="icon fa-music"></span>
                <!-- <p></p> -->
            </header>
        </article>
        <article id="clips">
            <section class="container wrapper style3 special" style="overflow: auto;">
                <header class="major">
                    <h1><span class="icon fa-play-circle-o"></span>&nbsp;2017民歌傳情
                        <br style="display: none" />
                        精彩片段</h1>
                </header>

                
                <iframe id="VideoClipIframe" src="VideoClip.html" frameborder="no" scrolling="no" width="100%" height="100%"></iframe>
                <div style="display: none">
                    <a class="swipebox-video type0" rel="youtube" href="https://www.youtube.com/watch?v=bGjSnenJ0ms"></a>
                    <a class="swipebox-video type1" rel="youtube" href="https://www.youtube.com/watch?v=NcsVUFr3c_Y"></a>
                    <a class="swipebox-video type2" rel="youtube" href="https://www.youtube.com/watch?v=VwcOBoFwSqM"></a>
                    <a class="swipebox-video type3" rel="youtube" href="https://www.youtube.com/watch?v=qP5FYxl8ZK0"></a>
                    <a class="swipebox-video type4" rel="youtube" href="https://www.youtube.com/watch?v=1VWF7bT3fwg"></a>
                    <a class="swipebox-video type5" rel="youtube" href="https://www.youtube.com/watch?v=oVqAVEZHaZQ"></a>
                    <a class="swipebox-video type6" rel="youtube" href="https://www.youtube.com/watch?v=tQcXNqfNjRM"></a>
                    <a class="swipebox-video type7" rel="youtube" href="https://www.youtube.com/watch?v=l9FuQlpJAjQ"></a>
                    <a class="swipebox-video type8" rel="youtube" href="https://www.youtube.com/watch?v=AB0viiHpcmY"></a>
                    <a class="swipebox-video type9" rel="youtube" href="https://www.youtube.com/watch?v=kw0qERw02mg"></a>
                </div>
            </section>
        </article>
        <section id="lookup">
            <header>
                <h1><strong>點過歌曲了嗎？</strong></h1>
                <!-- <p>查詢歌手</p> -->
            </header>
            <footer>
                <ul class="buttons">
                    <li><a href="query.php" class="button"><span class="icon fa-check"></span>選歌查詢</a></li>
                    <li><a href="#choose" class="button scrolly"><span class="icon fa-close"></span>開始選歌</a></li>
                </ul>
            </footer>
        </section>
        <!-- Footer -->
        <footer id="footer">
            <ul class="icons">

                <li><a href="https://www.facebook.com/ntuguitarlove/" target="_parent" class="icon circle fa-heart"><span class="label"></span></a>
                    <p style="display: inline-block; margin-left: 5px;">NTU Guitar Love(活動粉專)</p>
                </li>
                <li><a href="https://www.facebook.com/ntuguitar/" target="_parent" class="icon circle fa-facebook"><span class="label"></span></a>
                    <p style="display: inline-block; margin-left: 5px;">NTU Guitar</p>
                </li>
                <!--<li><a href="#" class="icon circle fa-google-plus"><span class="label">Google+</span></a></li>
                <li><a href="#" class="icon circle fa-github"><span class="label">Github</span></a></li>
                <li><a href="#" class="icon circle fa-dribbble"><span class="label">Dribbble</span></a></li>-->
            </ul>
            <ul class="copyright">
                <li>台大吉他社105級民歌傳情</li>
                <li>Design：102級 康廷宇</li>
            </ul>
        </footer>
    </div>
</body>


<!-- Mirrored from love.ntuguitar.com/ by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 12 Apr 2017 06:11:55 GMT -->
</html>
