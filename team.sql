-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- 主機: 127.0.0.1
-- 產生時間： 2018-04-10 08:01:56
-- 伺服器版本: 10.1.25-MariaDB
-- PHP 版本： 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `team`
--

-- --------------------------------------------------------

--
-- 資料表結構 `teamlist`
--

CREATE TABLE `teamlist` (
  `TID` int(11) NOT NULL,
  `Team` varchar(200) NOT NULL,
  `TeamDetail` varchar(200) NOT NULL,
  `SongName` varchar(200) NOT NULL,
  `OriginalPlayer` varchar(200) NOT NULL,
  `SongID` varchar(200) NOT NULL,
  `Category` varchar(200) NOT NULL,
  `Day1` varchar(200) NOT NULL,
  `Day2` varchar(200) NOT NULL,
  `Day3` varchar(200) NOT NULL,
  `Day4` varchar(200) NOT NULL,
  `Day5` varchar(200) NOT NULL,
  `ImageCount` int(11) NOT NULL DEFAULT '1',
  `AvailableTimeNum` int(11) NOT NULL,
  `TotalTimeNum` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=big5;

--
-- 資料表的匯出資料 `teamlist`
--

INSERT INTO `teamlist` (`TID`, `Team`, `TeamDetail`, `SongName`, `OriginalPlayer`, `SongID`, `Category`, `Day1`, `Day2`, `Day3`, `Day4`, `Day5`, `ImageCount`, `AvailableTimeNum`, `TotalTimeNum`) VALUES
(1, '王賢慈 葉芳如', '王賢慈/葉芳如', '變成全世界最勇敢的人,High hopes,I\'m Yours,關於我愛你', '江松霖,Kadoline,Jason Mraz,張懸', '', '5;2;1;2', '0,0,0,0,0,1,0,0', '1,0,1,0,0,1,0,0', '0,0,0,0,0,1,0,0', '0,0,0,1,1,0,0,0', '0,0,0,1,0,0,0,1', 1, 0, 0),
(2, '詹柏鈞 羅詠絮', '詹柏鈞/羅詠絮', '愛你,一個像夏天一個像秋天,Lucky', 'Kimberley,范瑋琪,Jason Mraz', '', '2;1,2;2', '1,0,1,0,0,0,1,1', '0,0,1,0,0,1,1,1', '1,1,1,0,0,0,0,0', '0,0,0,0,0,0,0,0', '1,1,1,0,0,0,0,0', 1, 0, 0),
(3, '黃思穎 高顥偉', '黃思穎/高顥偉', '體面,我懷念的,等你下課,魚仔(改編歌詞：學生仔),後來,你還要我怎樣', '于文文,孫燕姿,周杰倫,盧廣仲,劉若英,薛之謙', '', '2;2;1,2;1,2,3,4,5;2;2', '0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0', 1, 0, 0),
(4, '徐稚凱 黃拮安', '徐稚凱/黃拮安', '接不接受,幾分之幾,100個太陽月亮,是甚麼讓我遇見這樣的你,捲菸,一朵花', '河仁傑,盧廣仲,棉花糖樂團,白安,美秀集團,MATZKA', '', '2;2;1;1,2;3,5;2,3,5', '0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0', 1, 0, 0),
(5, '陳節昕 李俊傑', '陳節昕/李俊傑', '一場小聰明,想你的物件,連名帶姓,編織星空的人', '輕日記,輕日記,張惠妹,脆樂團', '4,5,6,7', '2;1,2;2;5', '0,0,0,0,0,0,0,1', '0,0,0,1,0,0,0,1', '1,0,0,1,0,0,0,1', '0,0,0,1,0,0,0,0', '1,0,0,0,0,0,0,0', 1, 0, 0),
(6, '褚冠綸', '褚冠綸', '愛你,望春風,Photogragh,等你下課', 'Kimberley,鄧雨賢,Ed Sheeran,周杰倫', '', '2;4;1,2,4;2,4', '0,0,0,0,0,0,0,0', '0,0,1,1,1,0,0,0', '0,0,0,1,1,0,0,0', '0,0,0,0,0,0,0,0', '1,1,1,1,1,1,0,0', 1, 0, 0),
(7, '林允箴', '林允箴', '時間主語,非你莫屬,三個願望,你的行李,欠一個勇敢,斑馬斑馬', '郁可唯,Tank,梁文音,謝震廷,棉花糖樂團,宋冬野', '', '1;2;2;2;5;5', '0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0', 1, 0, 0),
(8, '鄭可麗', '鄭可麗', '等你下課,獨家記憶,帶你去旅行,一個像夏天一個像秋天,當你,妮妮', '周杰倫,陳小春,校長,范瑋琪,林俊傑,Kim', '', '2;2;2;1;2;2', '0,1,1,0,0,0,0,0', '0,0,0,0,0,0,0,0', '0,0,1,1,0,0,0,0', '1,1,1,1,0,0,0,0', '0,0,0,0,0,0,0,0', 1, 0, 0),
(9, '金約瑟', '金約瑟', 'I\'m in Love,officially missing you,my eyes,the time of walking on remembrance', 'Ra.D,Geeks,10cm,Nell', '', '2;2;2;2', '0,0,0,0,0,0,0,0', '0,0,1,1,0,0,0,0', '0,0,0,0,0,0,0,0', '1,1,1,1,0,0,0,0', '0,0,0,0,0,0,0,0', 1, 0, 0),
(10, '林倢妤 柯王嘉', '林倢妤/柯王嘉', '等你下課(歌詞改編版),我喜歡你, 我多喜歡你，你會知道', '周杰倫,洪安妮,王俊琪', '', '2,3,4;1,2;1,2', '0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0', 1, 0, 0),
(11, '藍韋翔 蔡秉晨', '藍韋翔/蔡秉晨', 'カタオモイ,缺口,醜八怪', 'Aimer,庾澄慶,薛之謙', '', '2;2;5', '0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0', 1, 0, 0),
(12, '蔡佳穎 李政宏', '蔡佳穎/李政宏', 'Teenage Dream,海枯石爛,Happy', 'Katy Perry,Olivia Ong,Pharrell Williams', '', '2;2;5', '0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0', '0,0,0,1,1,1,1,0', '0,0,0,0,0,0,0,0', '0,1,1,0,1,1,0,0', 1, 0, 0),
(13, '孫沛瀠 楊庭瑀', '孫沛瀠/楊庭瑀', '讓我留在你身邊,Count on me,追光者,Demons', '陳奕迅,Bruno Mars,汪蘇瀧,Imagine Dragons', '', '2;1;2;5', '0,0,0,1,0,0,0,0', '0,0,1,1,0,0,0,0', '0,0,0,1,0,0,0,0', '0,0,0,1,1,0,0,0', '0,0,0,1,1,0,0,0', 1, 0, 0),
(14, '鄭凱云 鍾奕妍', '鄭凱云/鍾奕妍', '水星記,天天想你,等你下課,魯蛇情歌,告白氣球,零距離', '郭頂,陳綺貞,周杰倫,兩棲人,周杰倫,Double2', '', '2;2;2;3;2;2', '0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0', 1, 0, 0),
(15, '吳嘉虹 曾耀賢', '吳嘉虹/曾耀賢', '真的不想嘴,幾分之幾,你啊你啊', '聖結石,盧廣仲,魏如萱', '', '3;1,2;2', '0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0', 1, 0, 0),
(16, '李岱容 林廣琦', '李岱容/林廣琦', '我喜歡你,天天想你,你的行李', '洪安妮,陳綺貞,謝震廷', '', '1,2;1,2;1,2,3', '0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0', 1, 0, 0),
(17, '高世峰 邱韻庭', '高世峰/邱韻庭', '一朵花,披星戴月的想你,我多喜歡你，你會知道,你被寫在我的歌裡', 'MATZKA,告五人,王俊琪,蘇打綠', '', '3;2,5;2;2', '0,0,0,0,0,0,0,0', '1,1,1,1,0,1,1,1', '0,0,1,0,0,1,0,0', '1,1,0,1,1,1,0,0', '0,0,1,1,0,0,0,0', 1, 0, 0),
(18, '曹祐維 李映萱', '曹祐維/李映萱', '我把我的青春給你,你的行李,真的不想嘴', '好樂團,謝震廷,聖結石', '', '2;2;2', '0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0', 1, 0, 0),
(19, '鄭博尹 林泓宇', '鄭博尹/林泓宇', '垃圾車,什麼歌,缺口,我不願讓你一個人,女孩你知道嗎,無眠', '五月天,五月天,庾澄慶,五月天,謝和弦,蘇打綠', '', '1;1;2;2;3;2', '1,1,1,0,0,0,0,1', '1,1,1,1,1,0,0,0', '0,0,0,0,0,0,0,0', '0,0,0,0,0,0,1,1', '0,0,0,0,0,0,0,0', 1, 0, 0),
(20, '高翊賢 陳君豪', '高翊賢/陳君豪', 'Perfect,生日快樂歌,小幸運', 'Ed Sheeran, ,田馥甄', '', '2;1;2', '0,0,0,0,0,0,0,0', '0,0,0,1,0,0,0,1', '0,0,0,0,0,0,0,0', '0,0,0,1,1,0,0,0', '0,0,0,1,1,1,1,1', 1, 0, 0),
(21, '王奕璇 周荷', '王奕璇/周荷', '聽不到,溫柔,七彩的微風', '五月天,五月天,珍珠美人魚', '', '2;2;3', '0,0,1,0,0,0,1,1', '0,0,0,0,0,0,0,0', '0,0,0,1,1,0,0,0', '0,0,0,1,1,0,0,1', '0,0,0,0,0,0,0,0', 1, 0, 0),
(22, '張茗筑', '張茗筑', '追光者,我喜歡你,忽然之間,你的背包', '岑寧兒,宏安你,莫文蔚,陳奕迅', '', '1,2;2;2;2,5', '0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0', '1,1,1,1,1,1,1,1', 1, 0, 0),
(23, '王嘉駿 王麒華', '王嘉駿/王麒華', '在沒有你以後,因為愛,女孩,This is love', '謝和弦,韋禮安,韋禮安,周興哲', '', '2;2;2;2', '1,1,0,0,0,0,0,0', '1,0,0,0,0,0,0,0', '0,0,0,1,0,0,1,1', '0,0,0,0,0,0,0,0', '0,0,1,1,1,0,0,0', 1, 0, 0),
(24, 'Wez.Lin 藍詠文', 'Wez.Lin/藍詠文', '海波浪,喵電感應,當你,我的哀鳳壞了,全世界我最喜歡你,我們不一樣', '郭桂彬,勸世宗親會,王心凌,蕭閎仁,來吧焙焙,大壯', '', '2,4,5;3,5;2,3,4;3,5;1,2;1', '0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0', 1, 0, 0),
(25, '陳杰民 鄭心穎', '陳杰民/鄭心穎', '斑馬斑馬,誰,接不接受,南山南', '宋冬野,李友廷,河仁傑,馬(由頁)', '', '4;2;2;1,4', '0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0', 1, 0, 0),
(26, '梁惟傑 李保杉', '梁惟傑/李保杉', 'It\'s my way,錯過,誰,念舊', '柯智棠,木眼鏡,李友廷,Crispy', '', '2;5;2;5', '0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0', 1, 0, 0),
(27, '游政諺 林以莊', '游政諺/林以莊', '愛著愛著就永遠,當我們一起走過,日子,張三的歌', '田馥甄,蘇打綠,張懸,齊秦', '', '1,2;1;2,3;1,2', '0,0,0,1,0,0,0,1', '0,1,1,1,1,0,0,0', '0,0,0,0,0,0,0,0', '0,0,0,0,0,1,1,1', '1,1,0,0,0,1,1,1', 1, 0, 0),
(28, '于晟 鄭開元', '于晟/鄭開元', '稻香,Mirrors,可惜沒如果', '周杰倫,Justin Timberlake,林俊傑', '', '5;2;2', '0,0,0,0,0,0,0,0', '1,1,0,0,0,0,0,0', '0,0,0,0,0,0,0,0', '1,1,1,1,1,1,0,0', '0,0,0,0,0,0,0,0', 1, 0, 0),
(29, '謝其良', '謝其良', 'Perfect,Shape of you,Just the way you are,Count on me', 'Ed Sheeran,Ed Sheeran,Bruno Mars,Bruno Mars', '', '2;2;2;1', '0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0', 1, 0, 0),
(30, '王賀 施宛妤', '王賀/施宛妤', '100分,You Are My Sunshine,環島旅行,艷火', 'Crispy,Jimmie Davis,熊寶貝樂團,張懸', '', '1;1,2,4;1,2;2', '1,1,1,1,0,0,0,1', '0,0,0,0,0,0,1,1', '0,0,0,0,0,1,1,1', '0,0,0,1,0,0,0,0', '0,0,0,0,0,0,0,0', 1, 0, 0),
(31, '王威發 郭仲嘉', '王威發/郭仲嘉', '獨家記憶,淘汰,追光者', '陳小春,陳奕迅,岑寧兒', '', '1,2;1,2;1,2', '0,0,0,0,0,0,0,0', '1,1,1,0,0,0,0,0', '0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0', '0,0,0,0,1,1,1,1', 1, 0, 0),
(32, '李佳靜 楊曜彰', '李佳靜/楊耀彰', '關於我愛你,缺口,Photograph', '張懸,庾澄慶,Ed Sheeran', '', '2;2;2', '0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0', 1, 0, 0),
(33, '林延諭 賴廷威', '林延諭/賴廷威', '路口,秦皇島,Wonderwall', '陳昇,萬能青年旅店,Oasis', '', '1,4;5;2', '1,1,1,1,1,1,1,0', '0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0', '1,1,0,0,0,0,1,1', 1, 0, 0),
(34, '黃家暄 吳妍庭', '黃家暄/吳妍庭', '對你愛不完,I miss you(鬼怪ost),彩虹,Perfect,當我們一起走過,你在煩惱甚麼', '金城武,Soyou,張惠妹,Ed Sheeran,蘇打綠,蘇打綠', '', '1,2,3,4;1,2;1,2;1,2;1,2;1,2', '0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0', 1, 0, 0),
(35, '陳晁偉 Campus.Hsu', '陳晁偉/Campus.Hsu', '請問你是處女嗎,謝謝你愛我,製造浪漫', '反骨男孩,謝和弦,鄭中基陳慧琳', '', '3,5;1,2;2,4', '0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0', 1, 0, 0);

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `teamlist`
--
ALTER TABLE `teamlist`
  ADD PRIMARY KEY (`TID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
