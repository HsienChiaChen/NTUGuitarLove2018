-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- 主機: 127.0.0.1
-- 產生時間： 2018-04-15 10:53:02
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
(1, '王賢慈 葉芳如', '王賢慈/葉芳如', '變成全世界最勇敢的人,High hopes,I\'m Yours,關於我愛你', '江松霖,Kadoline,Jason Mraz,張懸', '1,2,3,4', '5;2;1;2', '0,0,0,0,0,1,0,0', '1,0,1,0,0,1,0,0', '0,0,0,0,0,1,0,0', '0,0,0,1,1,0,0,0', '0,0,0,1,0,0,0,1', 1, 0, 9),
(2, '詹柏鈞 羅詠絮', '詹柏鈞/羅詠絮', '愛你,一個像夏天一個像秋天,Lucky', 'Kimberley,范瑋琪,Jason Mraz', '5,6,7', '2;1,2;2', '1,0,1,0,0,0,1,1', '0,0,1,0,0,1,1,1', '1,1,1,0,0,0,0,0', '0,0,0,0,0,0,0,0', '1,1,1,0,0,0,0,0', 1, 0, 14),
(3, '黃思穎 高顥偉', '黃思穎/高顥偉', '體面,我懷念的,等你下課,魚仔(改編歌詞：學生仔),後來,你還要我怎樣', '于文文,孫燕姿,周杰倫,盧廣仲,劉若英,薛之謙', '8,9,10,11,12,13', '2;2;1,2;1,2,3,4,5;2;2', '0,0,1,0,0,0,0,0', '0,0,1,1,1,0,0,0', '0,1,0,1,0,0,0,0', '0,0,0,0,0,0,0,0', '0,0,1,1,1,0,0,0', 1, 0, 9),
(4, '徐稚凱 黃拮安', '徐稚凱/黃拮安', '接不接受,幾分之幾,100個太陽月亮,是甚麼讓我遇見這樣的你,捲菸,一朵花', '河仁傑,盧廣仲,棉花糖樂團,白安,美秀集團,MATZKA', '14,15,16,17,18,19', '2;2;1;1,2;3,5;2,3,5', '0,0,0,0,0,0,0,1', '0,0,0,0,0,0,0,0', '0,1,1,0,1,1,0,1', '0,1,0,0,0,1,0,1', '0,0,0,0,0,0,0,1', 1, 0, 10),
(5, '陳節昕 李俊傑', '陳節昕/李俊傑', '一場小聰明,想你的物件,連名帶姓,編織星空的人', '輕日記,輕日記,張惠妹,脆樂團', '20,21,22,23', '2;1,2;2;5', '0,0,0,0,0,0,0,1', '0,0,0,1,0,0,0,1', '1,0,0,1,0,0,0,1', '0,0,0,1,0,0,0,0', '1,0,0,0,0,0,0,0', 1, 0, 8),
(6, '褚冠綸', '褚冠綸', '愛你,望春風,Photogragh,等你下課', 'Kimberley,鄧雨賢,Ed Sheeran,周杰倫', '24,25,26,27', '2;4;1,2,4;2,4', '0,0,0,0,0,0,0,0', '0,0,1,1,1,0,0,0', '0,0,0,1,1,0,0,0', '0,0,0,0,0,0,0,0', '1,1,1,1,1,1,0,0', 1, 0, 11),
(7, '林允箴', '林允箴', '三個願望,你的行李,欠一個勇敢', '梁文音,謝震廷,棉花糖樂團', '28,29,30', '2;2;5', '1,0,1,0,0,0,0,0', '0,0,0,0,0,0,0,0', '0,0,0,0,0,1,1,1', '0,0,0,0,0,1,1,1', '0,0,0,0,0,0,0,0', 1, 0, 8),
(8, '鄭可麗', '鄭可麗', '等你下課,獨家記憶,帶你去旅行,一個像夏天一個像秋天,當你,妮妮', '周杰倫,陳小春,校長,范瑋琪,林俊傑,Kim', '31,32,33,34,35,36', '2;2;2;1;2;2', '0,1,1,0,0,0,0,0', '0,0,0,0,0,0,0,0', '0,0,1,1,0,0,0,0', '1,1,1,1,0,0,0,0', '0,0,0,0,0,0,0,0', 1, 0, 8),
(9, '金約瑟', '金約瑟', 'I\'m in Love,officially missing you,my eyes,the time of walking on remembrance', 'Ra.D,Geeks,10cm,Nell', '37,38,39,40', '2;2;2;2', '0,0,0,0,0,0,0,0', '0,0,1,1,0,0,0,0', '0,0,0,0,0,0,0,0', '1,1,1,1,0,0,0,0', '0,0,0,0,0,0,0,0', 1, 0, 6),
(10, '林倢妤 柯王嘉', '林倢妤/柯王嘉', '等你下課(歌詞改編版),我喜歡你, 我多喜歡你，你會知道', '周杰倫,洪安妮,王俊琪', '41,42,43', '2,3,4;1,2;1,2', '0,0,1,1,1,0,0,0', '0,0,0,0,0,0,1,1', '1,1,1,0,0,0,0,0', '0,0,0,1,1,1,1,1', '0,0,1,0,0,0,1,1', 1, 0, 16),
(11, '藍韋翔 蔡秉晨', '藍韋翔/蔡秉晨', 'カタオモイ,缺口,醜八怪', 'Aimer,庾澄慶,薛之謙', '44,45,46', '2;2;5', '1,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0', '0,0,1,1,0,0,0,0', '1,1,1,1,0,0,0,0', '0,0,0,0,1,1,1,1', 1, 0, 11),
(12, '蔡佳穎 李政宏', '蔡佳穎/李政宏', '海枯石爛', 'Olivia Ong', '47', '2', '0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0', '0,0,0,1,1,1,1,0', '0,0,0,0,0,0,0,0', '0,1,1,0,1,1,0,0', 1, 0, 8),
(13, '孫沛瀠 楊庭瑀', '孫沛瀠/楊庭瑀', '讓我留在你身邊,Count on me,追光者,Demons', '陳奕迅,Bruno Mars,汪蘇瀧,Imagine Dragons', '48,49,50,51', '2;1;2;5', '0,0,0,1,0,0,0,0', '0,0,1,1,0,0,0,0', '0,0,0,1,0,0,0,0', '0,0,0,1,1,0,0,0', '0,0,0,1,1,0,0,0', 1, 0, 8),
(14, '鄭凱云 鍾奕妍', '鄭凱云/鍾奕妍', '水星記,天天想你,等你下課,魯蛇情歌,零距離', '郭頂,陳綺貞,周杰倫,兩棲人,Double2', '52,53,54,55,56', '2;2;2;3;2', '0,0,0,1,0,0,0,0', '0,0,0,1,1,1,0,0', '0,0,0,1,1,0,0,0', '0,0,0,0,0,0,0,0', '0,0,0,1,1,0,0,0', 1, 0, 8),
(15, '吳嘉虹 曾耀賢', '吳嘉虹/曾耀賢', '真的不想嘴,幾分之幾,你啊你啊', '聖結石,盧廣仲,魏如萱', '57,58,59', '3;1,2;2', '0,0,1,1,0,0,0,0', '0,0,0,0,0,0,0,1', '1,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0', '0,0,0,1,1,1,1,1', 1, 0, 9),
(16, '李岱容 林廣琦', '李岱容/林廣琦', 'The Show', 'Lenka', '60', '5', '0,0,1,1,0,0,0,1', '0,0,1,1,1,0,0,1', '1,0,0,1,1,0,0,1', '1,0,0,0,0,0,0,1', '1,0,0,0,1,1,1,1', 1, 0, 18),
(17, '高世峰 邱韻庭', '高世峰/邱韻庭', '一朵花,披星戴月的想你,我多喜歡你，你會知道,你被寫在我的歌裡', 'MATZKA,告五人,王俊琪,蘇打綠', '61,62,63,64', '3;2,5;2;2', '0,0,0,0,0,0,0,0', '1,1,1,1,0,1,1,1', '0,0,1,0,0,1,0,0', '1,1,0,1,1,1,0,0', '0,0,1,1,0,0,0,0', 1, 0, 16),
(18, '曹祐維 李映萱', '曹祐維/李映萱', '我把我的青春給你,你的行李,真的不想嘴', '好樂團,謝震廷,聖結石', '65,66,67', '2;2;2', '0,0,0,0,0,0,0,1', '0,0,1,1,0,0,0,0', '0,0,0,1,0,0,0,0', '0,1,1,1,1,0,0,0', '0,0,0,0,1,1,1,1', 1, 0, 12),
(19, '鄭博尹 林泓宇', '鄭博尹/林泓宇', '垃圾車,什麼歌,缺口,我不願讓你一個人,女孩你知道嗎,無眠', '五月天,五月天,庾澄慶,五月天,謝和弦,蘇打綠', '68,69,70,71,72,73', '1;1;2;2;3;2', '1,1,1,0,0,0,0,1', '1,1,1,1,1,0,0,0', '0,0,0,0,0,0,0,0', '0,0,0,0,0,0,1,1', '0,0,0,0,0,0,0,0', 1, 0, 11),
(20, '高翊賢 陳君豪', '高翊賢/陳君豪', '生日快樂歌,小幸運', '無,田馥甄', '74,75', '1;2', '0,0,0,0,0,0,0,0', '0,0,0,1,0,0,0,1', '0,0,0,0,0,0,0,0', '0,0,0,1,1,0,0,0', '0,0,0,1,1,1,1,1', 1, 0, 9),
(21, '王奕璇 周荷', '王奕璇/周荷', '聽不到', '五月天', '76', '2', '0,0,1,0,0,0,1,1', '0,0,0,0,0,0,0,0', '0,0,0,1,1,0,0,0', '0,0,0,1,1,0,0,1', '0,0,0,0,0,0,0,0', 1, 0, 8),
(22, '張茗筑', '張茗筑', '追光者,我喜歡你,忽然之間,你的背包', '岑寧兒,宏安你,莫文蔚,陳奕迅', '77,78,79,80', '1,2;2;2;2,5', '0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0', '1,1,1,1,1,1,1,1', 1, 0, 8),
(23, '王嘉駿 王麒華', '王嘉駿/王麒華', '在沒有你以後,因為愛,女孩,讓我留在你身邊', '謝和弦,韋禮安,韋禮安,陳奕迅', '81,82,83,84', '2;2;2;1,2', '1,1,0,0,0,0,0,0', '1,0,0,0,0,0,0,0', '0,0,0,1,0,0,1,1', '0,0,0,0,0,0,0,0', '0,0,1,1,1,0,0,0', 1, 0, 9),
(24, 'Wez.Lin 藍詠文', 'Wez.Lin/藍詠文', '海波浪,喵電感應,當你,全世界我最喜歡你,我們不一樣', '郭桂彬,勸世宗親會,王心凌,來吧焙焙,大壯', '85,86,87,88,89', '2,4,5;3,5;2,3,4;1,2;1', '0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0', '1,1,1,1,0,0,0,1', '1,0,1,1,0,0,0,0', '0,0,0,0,1,1,1,1', 1, 0, 12),
(25, '陳杰民 鄭心穎', '陳杰民/鄭心穎', '南山南', '馬迪', '90', '1,4', '0,0,0,1,1,0,0,0', '0,0,0,0,0,0,0,0', '0,0,0,1,1,1,0,0', '1,1,1,0,0,1,1,1', '1,1,1,0,0,0,0,0', 1, 0, 14),
(26, '梁惟傑 李保杉', '梁惟傑/李保杉', 'It was May,念舊', '柯智棠,Crispy', '91,92', '2;5', '0,0,0,0,0,0,0,0', '1,1,1,0,0,0,0,0', '1,1,1,0,0,0,0,0', '1,1,1,0,0,0,0,0', '0,0,0,0,0,0,0,0', 1, 0, 9),
(27, '游政諺 林以莊', '游政諺/林以莊', '愛著愛著就永遠,當我們一起走過,日子,張三的歌', '田馥甄,蘇打綠,張懸,李壽全', '93,94,95,96', '1,2;1;2,3;1,2', '0,0,0,1,0,0,0,1', '0,1,1,1,1,0,0,0', '0,0,0,0,0,0,0,0', '0,0,0,0,0,1,1,1', '1,1,0,0,0,1,1,1', 1, 0, 14),
(28, '于晟 鄭開元', '于晟/鄭開元', '稻香,可惜沒如果', '周杰倫,林俊傑', '97,98', '5;2', '0,0,0,0,0,0,0,0', '1,1,0,0,0,0,0,0', '0,0,0,0,0,0,0,0', '1,1,1,1,1,1,0,0', '0,0,0,0,0,0,0,0', 1, 0, 8),
(29, '謝其良', '謝其良', 'Perfect,Shape of you,Just the way you are,Count on me', 'Ed Sheeran,Ed Sheeran,Bruno Mars,Bruno Mars', '99,100,101,102', '2;2;2;1', '0,0,1,1,1,1,1,1', '0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0', '1,1,1,1,1,1,1,1', '1,1,1,1,1,1,1,1', 1, 0, 22),
(30, '王賀 施宛妤', '王賀/施宛妤', '100分,You Are My Sunshine,環島旅行,艷火', 'Crispy,Jimmie Davis,熊寶貝樂團,張懸', '103,104,105,106', '1;1,2,4;1,2;2', '1,1,1,1,0,0,0,1', '0,0,0,0,0,0,1,1', '0,0,0,0,0,1,1,1', '0,0,0,1,0,0,0,0', '0,0,0,0,0,0,0,0', 1, 0, 11),
(31, '王威發 郭仲嘉', '王威發/郭仲嘉', '淘汰', '陳奕迅', '107', '1,2', '0,0,0,0,0,0,0,0', '1,1,1,0,0,0,0,0', '0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0', '0,0,0,0,1,1,1,1', 1, 0, 7),
(32, '李佳靜 楊曜彰', '李佳靜/楊耀彰', '關於我愛你,缺口,Photograph', '張懸,庾澄慶,Ed Sheeran', '108,109,110', '2;2;2', '0,0,0,1,1,1,0,0', '0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0', '0,1,1,0,0,0,0,0', '0,0,0,1,1,1,0,0', 1, 0, 8),
(33, '林延諭 賴廷威', '林延諭/賴廷威', '路口,秦皇島,Wonderwall', '陳昇,萬能青年旅店,Oasis', '111,112,113', '1,4;5;2', '1,1,1,1,1,1,1,0', '0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0', '1,1,0,0,0,0,1,1', 1, 0, 11),
(34, '黃家暄 吳妍庭', '黃家暄/吳妍庭', '對你愛不完,I miss you(鬼怪ost),彩虹,Perfect,當我們一起走過,你在煩惱甚麼', '金城武,Soyou,張惠妹,Ed Sheeran,蘇打綠,蘇打綠', '114,115,116,117,118,119', '1,2,3,4;1,2;1,2;1,2;1,2;1,2', '0,0,1,1,1,0,0,0', '0,0,0,1,0,0,0,0', '0,0,1,1,1,0,0,0', '1,1,1,0,0,0,0,0', '1,1,1,0,0,0,0,0', 1, 0, 13),
(35, '陳晁偉 Campus.Hsu', '陳晁偉/Campus.Hsu', '請問你是處女嗎,謝謝你愛我,製造浪漫', '反骨男孩,謝和弦,鄭中基陳慧琳', '120,121,122', '3,5;1,2;2,4', '1,1,1,1,0,0,0,1', '1,1,1,1,1,0,0,0', '0,0,0,1,1,1,1,1', '0,0,1,1,1,0,0,0', '1,1,1,1,1,0,0,0', 1, 0, 23);

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
