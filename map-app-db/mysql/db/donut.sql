SET @old_autocommit=@@autocommit;

CREATE DATABASE `donuts_map_db` DEFAULT CHARACTER SET utf8;

use `donuts_map_db`;

-- 
-- Table structure for table `donut`
-- 

DROP TABLE IF EXISTS `donut`;

CREATE TABLE `donut` (
    `id` int NOT NULL AUTO_INCREMENT,
    `shop_name` char(35) NOT NULL,
    `lat` double(9,6) NOT NULl,
    `lng` double(9,6) NOT NULl,
    `eat_in_ok` boolean NOT NULL DEFAULT 1,
    `take_out_ok` boolean NOT NULL DEFAULT 0,
    PRIMARY KEY(`id`),
    INDEX(id)
) ENGINE=InnoDB;

set autocommit=0;
INSERT INTO `donut` VALUES(0,'グッドタウンドーナツ',35.66651051655499,139.70506148337932,1,0);
INSERT INTO `donut` VALUES(0,'RacinesDonut&IceCream',35.66791435276801,139.71304133587216,1,0);
INSERT INTO `donut` VALUES(0,'クリスピー・クリーム・ドーナツ渋谷シネタワー店',35.65930798470502,139.69891366437423,1,1);
INSERT INTO `donut` VALUES(0,'I’mdonut?渋谷',35.6613743737076,139.70783276989903,0,1);
INSERT INTO `donut` VALUES(0,'TheLittleBAKERYTokyo',35.66695301369741,139.70534367995964,1,1);
INSERT INTO `donut` VALUES(0,'WHITEGLASSCOFFEE',35.65663222325235,139.69980760061165,1,1);
INSERT INTO `donut` VALUES(0,'ラシーヌドーナツ ＆ アイスクリーム',35.66855329504049,139.71272781739134,1,0);
INSERT INTO `donut` VALUES(0,'ハリッツ上原店',35.67052067428471,139.6829589377468,1,1);
INSERT INTO `donut` VALUES(0,'フロレスタ三軒茶屋店',35.6453162782065,139.66977386949333,1,1);
INSERT INTO `donut` VALUES(0,'WARUWARUDONUT',35.6489431676698,139.6727779435581,1,0);
INSERT INTO `donut` VALUES(0,'ミスタードーナツ三軒茶屋ショップ',35.645246528718566,139.6717479753073,1,1);
INSERT INTO `donut` VALUES(0,'ミスタードーナツ下北沢ショップ',35.66165132075073,139.6672779149939,1,1);
INSERT INTO `donut` VALUES(0,'RACINESDONUT&ICECREAMEBISU',35.644013499987814,139.71345376155605,1,0);
INSERT INTO `donut` VALUES(0,'洞洞',35.660655787653646,139.66414500827744,1,1);
INSERT INTO `donut` VALUES(0,'HigumaDoughnuts × CoffeeWrights表参道',35.669196949172395,139.71077399520928,1,1);
INSERT INTO `donut` VALUES(0,'THEMALASADATOKYO下北沢店',35.66040760654407,139.66727711499388,1,1);
commit;