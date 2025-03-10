-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 15, 2024 at 09:34 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shoponline2`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `a_id` int(4) NOT NULL,
  `a_name` varchar(200) NOT NULL,
  `a_username` varchar(200) NOT NULL,
  `a_password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`a_id`, `a_name`, `a_username`, `a_password`) VALUES
(1, 'ศศิวรรณ ภูพิพัฒน์', 'admin1', 'ac3e2c4e1d4bd07fb973a2ea4d250160'),
(2, 'ศิศิรา กำเนิดสินธุ์', 'admin2', '070dbb6024b5ef93784428afc71f2146'),
(3, 'ชัญชญา ตั้งเกษมสุข', 'admin3', '8011ecba39754a741ff861d810a7601f'),
(4, 'กฤษณา สาไชยัน', 'admin4', '3f998e713a6e02287c374fd26835d87e'),
(5, 'มัทนาภรณ์ สีวะ', 'admin5', '31c97cbb941d3e92d0e6f9925e9bc4d7');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `c_id` int(6) NOT NULL,
  `c_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`c_id`, `c_name`) VALUES
(1, 'อาหารไทย'),
(2, 'อาหารจีน'),
(3, 'อาหารอิตาเลี่ยน'),
(4, 'อาหารเกาหลี'),
(5, 'ญี่ปุ่น');

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `f_id` int(6) NOT NULL,
  `f_name` varchar(200) NOT NULL,
  `f_detail` text NOT NULL,
  `f_price` float NOT NULL,
  `f_ext` varchar(50) NOT NULL,
  `c_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`f_id`, `f_name`, `f_detail`, `f_price`, `f_ext`, `c_id`) VALUES
(1, 'ต้มยํากุ้ง น้ำข้น', 'ต้มยํากุ้งอาหารถูกปากของคนไทยและชาวต่างชาติ\nเรียกได้ว่าทั่วโลกแทบทุกคนไม่มีใครที่ไม่รู้อาหารไทยอย่าง ต้มยํากุ้ง นี้ และสูตรเมนูต้มยํากุ้งวันนี้จะเป็น ต้มยํากุ้งน้ำข้น นั่นเอง เอาใจคอชอบอาหารที่เน้นความเข้มข้นของรสชาติใครที่ชอบทำอาหารห้ามพลาด\nกับเมนู ต้มยำกุ้ง ถ้วยนี้เลยนะขอบอก และขอบอกอีกทีว่า ต้มยำกุ้งชาม นี้นับว่าแซ่บจี๊ดจริง ๆ', 250, 'jpg', '1'),
(2, 'ส้มตำ', 'ส้มตำ เป็นอาหารปรุงมาจากการทำตำส้ม คือการทำให้เปรี้ยวและเผ็ดในลาวและอีสานจะเรียกว่าตำหมากหุ่งปรุงโดยนำมะละกอดิบที่สับแล้วฝานหรือขูดเป็นเส้นมาตำในครกเป็นหลักพร้อมด้วยวัตถุดิบอื่น ๆ คือ มะเขือเทศลูกเล็ก มะเขือสีดา มะเขือเปราะ พริกสดหรือพริกแห้ง ถั่วฝักยาว กระเทียม และปรุงรสด้วยน้ำตาลปี๊บ น้ำปลา และมะนาว รวมถึงน้ำปลาร้า', 80, 'jpg', '1'),
(3, 'ลาบน้ำตกหมู', 'น้ำตก มีลักษณะเหมือนกับลาบทุกประการ\nต่างกันเพียงแค่ไม่ใช้เนื้อสับแต่จะใช้เนื้อย่างหั่นเป็นชิ้น ๆ แทน โดยมากนิยมใช้เนื้อหมูย่างหรือเนื้อวัวย่าง ซกเล็กเป็นอาหารที่มีลักษณะคล้ายลาบ แต่ไม่ทำให้เนื้อสัตว์สุก เมื่อปรุงรสได้ที่แล้วจะนำเลือดสัตว์ชนิดที่นำมาทำให้เนื้อสัตว์ชนิดที่นำมาทำนั้น มาขยำให้เหลวและเคล้ากับลาบดิบ ๆ', 185, 'jpg', '1'),
(4, 'ไก่ยาง', 'อาหารที่ทำจากเนื้อไก่ที่ถูกหมักด้วยเครื่องเทศและน้ำซอสต่าง ๆ แล้วนำไปย่างจนสุกและมีสีเหลืองสวย มักมีรสชาติอร่อยและกลิ่นหอมโดยสามารถเสิร์ฟคู่กับน้ำจิ้มต่าง ๆ เช่น น้ำจิ้มแจ่วหรือน้ำจิ้มไก่ ไก่ย่าง', 200, 'jpg', '1'),
(5, 'กระเพราหมูสับ', 'กระเพราหมูสับคือเมนูอาหารไทยที่ทำจากหมูสับผัดกับใบกระเพรา พริก และกระเทียม โดยมักจะปรุงรสด้วยน้ำปลา น้ำตาล และซอสหอยนางรม จนเข้ากันดี แล้วเสิร์ฟร้อน ๆ มักจะทานคู่กับข้าวสวยร้อน ๆ และไข่ดาว', 150, 'jpg', '1'),
(6, 'ผัดไทย', 'ผัดไทยคือเมนูอาหารจานเส้นที่มีต้นกำเนิดจากประเทศไทย โดยทั่วไปจะทำจากเส้นก๋วยเตี๋ยวไทย (เส้นจันทน์) ผัดกับไข่ เต้าหู้ กุ้งหรือไก่ และผักต่าง ๆ เช่น ถั่วงอกและหอมแดง มักจะปรุงรสด้วยน้ำซอสผัดไทยที่มีส่วนผสมของน้ำตาลมะพร้าว น้ำปลา และน้ำมะนาว เพื่อให้มีรสชาติกลมกล่อมผัดไทย', 175, 'jpg', '1'),
(7, 'ห่อหมก', 'ห่อหมกคืออาหารไทยที่ทำจากปลาหรือเนื้อสัตว์อื่น ๆ\nผสมกับเครื่องแกงที่มีส่วนผสมของกะทิ ใบมะกรูด และสมุนไพรต่าง ๆ แล้วนำไปห่อด้วยใบตองหรือใส่ในถ้วยเพื่อให้สุกมักจะมีรสชาติเผ็ดเค็มและกลิ่นหอมจากสมุนไพรห่อหมก', 120, 'jpg', '1'),
(8, 'ไข่เจียว', 'ไข่เจียวคือเมนูอาหารที่ทำจากไข่ไก่ที่ตีให้เข้ากันแล้วนำไปทอดในน้ำมันจนสุกและเหลืองกรอบ มีลักษณะนุ่มด้านในและกรอบด้านนอก โดยสามารถปรุงรสด้วยเกลือหรือซอสต่าง ๆ และสามารถเพิ่มวัตถุดิบอื่น ๆ เช่น หัวหอม พริก หรือผักต่าง ๆ', 80, 'jpg', '1'),
(9, 'น้ำพริกกะปิปลาทูทอด', 'น้ำพริกกะปิปลาทูทอดคือเมนูอาหารไทยที่รวมกันระหว่างน้ำพริกกะปิ ซึ่งทำจากกะปิ พริกขี้หนู กระเทียม และมะนาว บดให้เข้ากันจนได้รสชาติที่กลมกล่อม กับปลาทูที่ทอดจนกรอบ\nน้ำพริกกะปิมักเสิร์ฟคู่กับผักสด เช่น แตงกวา ถั่วฝักยาว หรือผักต้มเมนูนี้มีรสชาติเปรี้ยว เค็ม เผ็ด และหอมกลิ่นกะปิ', 195, 'jpg', '1'),
(10, 'ต้มขาไก่', 'ต้มขาไก่คือเมนูอาหารไทยที่ทำจากขาไก่ต้มในน้ำซุป\nโดยมักมีการปรุงรสด้วยเครื่องเทศต่าง ๆ เช่น ข่า ตะไคร้ ใบมะกรูด และพริกไทย ต้มจนขาไก่นุ่มและมีรสชาติกลมกล่อม', 230, 'jpg', '1'),
(11, 'กิมจิ', 'อาหารหรือเครื่องเคียงที่อยู่คู่กับชาวเกาหลีมานานกว่า 2,000 ปี มีจุดเริ่มต้นจากสภาพอากาศของเกาหลีในฤดูหนาวที่หนาวจัดจนไม่สามารถเพาะปลูกได้ จึงต้องใช้วิธีการดองเพื่อยืดอายุอาหาร ซึ่งก็คือกิมจินั่นเอง และในปัจจุบันกิมจิได้รับความนิยมในการกินมากขึ้นเรื่อยๆ และเป็นเครื่องเคียงที่นิยมกินคู่กับอาหารต่างๆ โดยเฉพาะการกินอาหารประเภทปิ้งย่าง', 200, 'jpg', '4'),
(12, 'บิบิมบับ', 'เมนูข้าวยำจานเด็ดของเกาหลีที่ไม่ควรพลาด มีเสริฟอยู่ทั่วไปไม่ว่าจะเป็นตามร้านอาหาร ฟู้ดคอร์ท หรือแม้แต่ตามสตรีทฟู้ด บิบิมบับจะสามารถเลือกรับประทานได้ว่าจะใส่เนื้อวัว เนื้อไก่ หรือเน้นผัก แต่ส่วนประกอบที่สำคัญของบิบัมบับจะมี ข้าวสวยร้อนๆ ผักต่างๆ และไข่ดิบ', 300, 'jpg', '4'),
(13, 'ซัมกยอบซัล', 'หมูสามชั้นย่างที่หมักด้วยซอสสูตรพิเศษทำให้ซัมกยอบซัลมีรสชาติที่อร่อย นุ่ม กลอมกล่อม นิยมทานคู่กับผักหลากหลายชนิด พร้อมเครื่องเคียงต่างๆ และมีน้ำจิ้มสำหรับทานคู่กันคือซัมจัง', 499, 'jpg', '4'),
(14, 'บูลโกกิ', 'เมนูเนื้อย่างหรือผัดสไตล์เกาหลี จุดเด่นคือตัวเนื้อจะถูกหมักด้วยซอส น้ำมันงา และเครื่องปรุงอื่นๆ ทำให้เนื้อมีความนุ่ม หวาน หอม อร่อย สามารถทานคู่กับข้าวร้อนๆ หรือห่อผักและทานคู่กับน้ำจิ้มก็ได้', 299, 'jpg', '4'),
(15, 'ต๊อกบกกี', 'อาหารที่อยู่คู่กับวงการสตรีทฟู้ดของเกาหลีมาอย่างเนิ่นนาน คือการนำคาแรต็อก (แป้งเค้กข้าว) หรือที่รู้เราทุกคนจะคุ้นหูว่า “แป้งต๊อก” ไปผัดกับซอสเกาหลีสีแดง มีรสชาติเผ็ด หวาน อร่อย มีเอกลักษณ์พร้อมใส่ปลาแผ่น และผักเล็กน้อย ซึ่งในบางร้านจะใส่ไข่ต้มหรือเส้นรามยอนลงไปอีกด้วย', 250, 'jpg', '4'),
(16, 'ไก่ทอดเกาหลี', 'เมนูที่กำเนิดจากทหารอเมริกันในช่วงสงครามเกาหลี ถึงหน้าตาจะดูเหมือนไก่ทอดธรรมดา แต่จะมีรสชาติที่เป็นเอกลักษณ์ในแต่ละร้านไม่ซ้ำกัน โดยทั่วไปจะคลุกเคล้าด้วยซอสเผ็ดหวาน บางร้านก็จะมีท๊อปปิ้งพิเศษเพิ่มเติมใส่ลงไปด้วย เช่น แป้งต๊อกทอด เฟรนฟราย หรือการราดชีส ซึ่งคนเกาหลีนิยมทานเป็นกับแกล้มกับเบียร์', 259, 'jpg', '4'),
(17, 'ซัมกเยทัง', 'หรือก็คือซุปไก่โสม เป็นเมนูที่คนเกาหลีนิยมทานกันช่วงฤดูร้อน (ช่วงเดือน มิถุนายน – ต้นเดือนกันยายน) เพื่อช่วยฟื้นฟูกำลังของร่างกาย ไก่ที่นำมาประกอบเมนูนี้จะเป็นไก่ที่อายุไม่เกิน 45 วัน ยัดใส้ด้วยข้าวเหนียว และสมุนไพรต่างๆ เช่น เกาลัด พุทรา โสม แปะก๊วย', 1599, 'jpg', '4'),
(18, 'บิบิม เนงเมียน', 'บะหมี่เย็นสไตล์เกาหลี ตัวเส้นที่ใช้จะเป็นเส้นยาวบาง ทำจากแป้งผสมบัควีท หรือมันหวาน เสิร์ฟในชามสเตนเลสเย็นๆ คลุกเคล้าด้วยซอสเผ็ดร้อน เป็นเมนูที่ชาวเกาหลีนิยมทานในช่วงฤดูร้อน', 199, 'jpg', '4'),
(19, 'จาจังมยอน', 'บะหมี่ดำเกาหลี ใช้เส้นบะหมี่แบบหนาคล้ายเส้นอุด้ง คลุกเคล้าด้วยซอสที่ทำจากเต้าเจี้ยว ถั่วดำหมัก ผัดกับเนื้อหมูหั่นและผัก นอกจากนี้ จาจังมยอนถือเป็นอาหารที่บ่งบอกถึงความโสด เนื่องจากในวันแบล๊กเดย์หรือวันคนโสดของเกาหลีซึ่งตรงกับวันที่ 14 เมษายน เหล่าคนโสดจะพร้อมใจกันรับประทานจาจังมยอนกัน ถือเป็นหนึ่งในวัฒนธรรมที่มีเฉพาะที่เกาหลีที่เดียว', 399, 'jpg', '4'),
(20, 'จิเก', 'หรือซุปเกาหลี มีหลากหลายแบบตามประเภทเนื้อสัตว์ที่ใส่ลงไป เช่น เต้าหู้ ไข่ปลา เนื้อปู กิมจิ หรือเนื้อหมู ปรุงรสด้วยโกชูจัง มิโซะหมัก เต้าเจี้ยวหรือกุ้งดองเค็ม นิยมทานเป็นของคั่นกลางระหวางอาหารจานหลัก', 299, 'jpg', '4'),
(21, 'บรูเชตตา', 'บรูเชตตานี้คือขนมปังย่างที่ราดด้วยน้ำมันมะกอก เกลือ ก่อนออนท็อปด้วยผักต่างๆ เนื้อ หรือชีสครีมมี แต่สูตรยอดนิยมกันเลยคือ บรูเชตตาหน้าใบโหระพา มะเขือเทศสดกระเทียม หัวหอม หรือใส่ชีสมอสซาเรลลา', 799, 'jpg', '3'),
(22, 'ลาซานญ่า', 'หนึ่งในอาหารอิตาเลียนสุดป๊อปตลอดกาล เส้นพาสตาสดแผ่นใหญ่แบนกว้าง สลับชั้นกับซอสรสเข้มข้นซึ่งส่วนใหญ่เป็นซอสมะเขือเทศ เนื้อสัตว์ ผักต่างๆ และที่ขาดไม่ได้เลยคือชีสหอมมัน', 599, 'jpg', '3'),
(23, 'ริชอตโต', 'ริชอตโตก็เป็นอาหารอิตาเลียนแบบดั้งเดิมที่มีต้นกำเนิดมาจากภาคเหนือของประเทศอิตาลี ข้าวผัดที่เต็มไปด้วยรสเข้มข้นของครีม ไวน์และน้ำซุปจากเนื้อวัว ปลา หรือผัก ประกอบกับชีสพาเมซาน เนย และหัวหอม', 359, 'jpg', '3'),
(24, ' พิซซ่า', 'เป็นเมนูที่ถูกคิดค้นครั้งแรก ณ เมืองเนเปิลส์ พิซซาในสไตล์ดั้งเดิมจะประกอบไปด้วยแผ่นแป้งทาซอสมะเขือเทศสด โรยมอซซาเรลลาชีส ใบโหระพาสด และน้ำมันมะกอก แต่ก็ยังมีพิซซาหน้าอื่นๆ ที่ฟู้ดดี้ชอบไม่น้อยกว่าพิซซาเนเปิลส์เลย เช่น พิซซามาการิตาและพิซซามารินารา นั่นเอง', 399, 'jpg', '3'),
(25, 'พาสต้า', 'พาสตา คือ เส้นที่ทำจากแป้งสาลี น้ำ ไข่ เกลือ และ น้ำมันมะกอก รีดเป็นแผ่นแล้วทำเป็นเส้นลักษณะต่างๆ อาทิ สปาเกตตี เป็นเส้นพาสตาที่ยาว บาง แข็ง และเป็นทรงกระบอก ราวิโอลี เกี๊ยวสไตล์อิตาเลียน ทอร์เทลลินี พาสตารูปวงแหวนที่มีต้นกำเนิดมาจากแคว้นเอมีเลีย เป็นต้น ผัดซอสหลากหลายประเภท แต่ส่วนใหญ่จะใช้น้ำมันมะกอก ผัก เครื่องเทศ และเนยแข็ง', 599, 'jpg', '3'),
(26, 'ฟอกาเซีย', 'ขนมปังสัญชาติอิตาเลียนที่มีลักษณะและเนื้อสัมผัสคล้ายกับพิซซา แต่จะมีลักษณะที่แบน และรสสัมผัสที่แห้งกว่า นิยมกินกับดิปต่างๆ กินเปล่าๆ หรือเสิร์ฟคู่กับซุป เนื้อสัตว์ และชีส', 459, 'jpg', '3'),
(27, 'โพรชูโต', 'แฮมแห้งสไตล์อิตาเลียน ที่ทำมาจากต้นขาหรือขาหลังของหมู มักหั่นบางๆ และเสิร์ฟแบบไม่ปรุงสุกคู่กับขนมปังขาไก่ (Breadstick)', 579, 'jpg', '3'),
(28, 'คาเปรเซ่ สลัด', 'สลัดในแบบอิตาเลียนที่นักกินคุ้นเคย ประกอบไปด้วยชีสมอซซาเรลลาสดหั่น มะเขือเทศ และโหระพา ปรุงรสด้วยเกลือ น้ำมันมะกอก หรือน้ำส้มสายชูบัลซามิก', 339, 'jpg', '3'),
(29, 'เจลาโต', 'เจลาโต (Gelato) ในภาษาอิตาเลียน แปลว่า ไอศกรีม ประกอบไปด้วยนม ครีม น้ำตาล และแต่งกลิ่นรสด้วยผลไม้ ธัญพืชต่างๆ บดจนเป็นครีมข้น แต่ถึงอย่างนั้นเจลาโตก็มีไขมันที่น้อยกว่าไอศกรีมทั่วไป', 200, 'jpg', '3'),
(30, 'ทิรามิสุ', 'ของหวานสัญชาติอิตาเลียนที่ป๊อปพอๆ กับไอศกรีมเจลาโตเลย ฐานล่างเป็นแท่งขนมปังกรอบที่ชุ่มฉ่ำไปด้วยกาแฟเอสเปรสโซ สลับชั้นกับครีมชีสมาสคาโปน โรยหน้าด้วยผงโกโก้ เสิร์ฟเย็นๆ ฟินชื่นใจ', 259, 'jpg', '3'),
(31, 'เป็ดปักกิ่ง', 'อาหารจีนหนึ่งในเมนูประจำชาติจีน ถึงจะชื่อ เป็ดปักกิ่ง แต่แท้จริงแล้วกำเนิดขึ้นใน นานกิง ถูกถ่ายทอดมายังปักกิ่งในภายหลัง ภัตตาคารชื่อดังในปักกิ่งได้นำมาทำเป็นเมนูพิเศษ และโด่งดังจนมีชื่อเสียงมาจนถึงวันนี้ เสิร์ฟในรูปแบบ หนังเป็ดกรอบ ทานด้วยแผ่นแป้งบางๆเอาไว้ห่อ ตามด้วยซอสหวานและเครื่องเคียงต่างๆ เช่น ต้นหอม แตงกวาปอกเปลือกและอื่นๆ ', 1500, 'jpg', '2'),
(32, 'บะหมี่ตันตัน', 'อาหารประจำท้องถิ่นดั้งเดิม ที่มีพร้อมกับเส้นเหนียวนุ่ม ครบเครื่องด้วยรส เปรี้ยว เผ็ด หวาน เค็ม หมูสับโรยหน้าและผักดองสไตล์เสฉวน น่าจะเป็นที่ถูกใจของคนไทยได้ไม่ยากเลย เพราะปรุงด้วยซอสงารสเผ็ดหรือซอสหม่าล่า เผ็ดแซบแน่นอน ครบทุกรสชาติให้ความรู้สึกคล้ายกับบะหมี่บ้านเราจริงๆ ', 299, 'jpg', '2'),
(33, 'เสี่ยวหลงเปา', 'อาหารประเภทติ่มซำ หน้าตาคล้ายซาลาเปาขนาดเล็ก บางคนก็บอกว่าเหมือนขนมจีบมากกว่า ทำมาจากแป้งขนมปัง ทำให้เหนียวนุ่มกว่าซาลาเปาและมีไส้ให้เลือกหลากหลายทั้ง หมูหมัก เห็ด ผัก ถั่วแดง มีที่มาจากการที่ในยุคนั้น ทางเปา หรือซาลาเปาขนาดใหญ่เป็นที่นิยมในจีนตอนใต้ เมื่อราชสำนักทางเหนือถูกรุกรานและย้านฐานทัพมาอยู่ที่เมืองทางตอนใต้อย่างหางโจว ทำให้ทางเปาเป็นที่นิยมมากขึ้น และมีการปรับขนาดให้เล็กลงพอดีคำและเปลี่ยนชื่อมาเป็น เสี่ยวหลงเปา นั่นเอง ', 129, 'jpg', '2'),
(34, 'หมูตงพัว', 'ทำจากหมูสามชั้นชิ้นใหญ่ เหนียวนุ่มและละลายในปาก ถูกเรียกว่า เมนูในตำนานของนักกวีจีน เพราะเกิดจากการที่นักกวีคนนั้นทำอาหารค้างไว้แล้วไปเล่นหมากรุกเพลิน จนกลายมาเป็นหมูสามชั้นเมนูนี้นี่เอง\r\n\r\n', 299, 'jpg', '2'),
(35, ' ติ่มซำ', 'อาหารว่างเรียกนํ้าย่อยของคนจีน นิยมทานเป็นอาหารว่างคู่กับนํ้าชา เป็นที่รู้จักกันทั่วโลก เพราะเป็นเมนูที่ทานง่าย หลากหลายรสชาติ เป็นการจัดอาหารให้มีขนาดพอดีคำ ส่วนมากมักเป็นอาหารที่ใช้การนึ่งในการปรุง เช่น ซาลาเปา ขนมจีบ ', 300, 'jpg', '2'),
(36, 'ซาลาเปาทอด', 'ซาลาเปาทอดที่จีนมีลักษณะคล้ายเสี่ยวหลงเปา แป้งชั้นบนไม่ผ่านการทอดและเนื้อบางจนเห็นไส้ข้างใน ปัจจุบันกลายมาเป็นอาหารทานเล่นยอดนิยมในเซี่ยงไฮ้ มีหน้าตาแตกต่างกันไปตามวัตถุดิบที่ใช้และอาจแตกต่างจากภาพประกอบพอสมควร', 249, 'jpg', '2'),
(37, 'ผัดเต้าหู้เสฉวน', 'นำเนื้อสัตว์มาผัดกับเครื่องเทศและนํ้ามันพริกสีแดง ราดบนเต้าหู้ ชาวบ้านที่ได้ลิ้มลองก็ชอบมาก และกลายมาเป็นอาหารยอดนิยมในทุกวันนี้ จุดเด่นอยู่ที่ ซอสพริกเสฉวน ที่มีความเผ็ดร้อน และเต้าหู้ที่มีความเปรี้ยวนิดๆช่วยดับร้อนได้เป็นอย่างดี ผสมผสานความอร่อยอย่างลงตัว เป็นอีกหนึ่งเมนูที่คนชอบความเผ็ดต้องลอง', 300, 'jpg', '2'),
(38, 'หมูทอดซอสเปรี้ยวหวาน', 'หมูทอดซอสเปรี้ยวหวาน เป็นเมนูอาหารจีน จากมณฑลเสฉวน ซึ่งโดยทั่วไปแล้ว อาหารจีนเสฉวน มักจะมีรสชาติไม่เผ็ด เน้นรสชาติที่นุ่มกลมกล่อมซะมากกว่า อย่างไรก็ตาม หมูทอดซอสเปรี้ยวหวาน กลับเป็นเมนูอาหารจีนเสฉวน ที่มีรสชาติเผ็ดร้อนจนชาปาก ซึ่งเมนูนี้มีรสชาติที่เผ็ดร้อน ผสมผสานกับความเปรี้ยวจากสับปะรด, ซอสมะเขือเทศ และน้ำส้มสายชู ได้อย่างลงตัว ', 459, 'jpg', '2'),
(39, 'ผัดมังสวิรัติ (หลัว ฮั่น จ่าย)', 'จุดเด่นของเมนูนี้ อยู่ที่วัตถุดิบที่ได้ถูกคัดเลือกเพื่อบำรุงสุขภาพของผู้ทานโดยเฉพาะ ไม่ว่าจะเป็นเต้าหู้ และ ผักนานาชนิด เช่น บกฉ่อย กะหล่ำปลี หรือ บร็อคโค เป็นต้น อย่างไรก็ตาม แม้จะเป็นเมนูเพื่อสุขภาพ แต่เมนูนี้ ก็ยังไม่ทิ้งความเป็นเอกลักษณ์ของอาหารจีน โดยการใส่ซอสพริกเข้าไปเล็กน้อย เพื่อรสชาติเผ็ดร้อนตามแบบฉบับของอาหารจีนนั่นเอง', 259, 'jpg', '2'),
(40, 'ผัดหมี่ซั่ว จีนดั้งเดิม', 'ผัดหมี่ซั่ว หรือ โซ่วเมี่ยน เป็นอาหารจีนที่คนจีนนิยมทำ และ รับประทานกันในช่วงเทศกาลมงคล เช่น วันเกิด วันไหว้เจ้า ตรุษจีน หรือ วันไหว้พระจันทร์ เป็นต้น ทั้งนี้เนื่องจากในสมัยก่อน ชาวจีนเชื่อว่าคนที่มีใบหน้ายาว จะมีอายุที่ยืนนาน ซึ่งคำว่าเส้นหมี่ในภาษาจีน คือ เมี่ยน ซึ่งนอกจากจะแปลว่าเส้นหมี่แล้ว ยังแปลว่าใบหน้าได้อีกด้วย ดังนั้น ความยาวของหมี่ซั่ว หรือ หมี่เตี๊ยวที่เป็นวัตถุดิบหลักในการผัดหมี่ซั่วนั้น จึงสามารถสื่อความหมายถึงอายุที่ยั่งยืนได้นั่นเอง ', 289, 'jpg', '2'),
(41, 'ราเม็ง', 'ราเม็ง (Ramen) คือ เส้นก๋วยเตี๋ยวญี่ปุ่นที่ทำจากแป้งสาลี มักเสิร์ฟในน้ำซุปที่มีรสชาติต่าง ๆ เช่น ซุปโชยุ (ซอสถั่วเหลือง), ซุปมิโซะ, หรือซุปทงคตสึ (กระดูกหมู) โดยจะมีท็อปปิ้งหลากหลาย เช่น เนื้อหมูชาชู\r\n(หมูตุ๋น), ไข่ต้ม, ต้นหอม, และสาหร่ายนอริ (nori)\r\nราเม็งเป็นอาหารยอดนิยมที่มีหลากหลายสูตรและสไตล์ทั่วญี่ปุ่นและได้รับความนิย\r\nมไปทั่วโลก', 230, 'jpg', '5'),
(42, 'โอมากาเสะ', 'สไตล์การรับประทานอาหารในร้านซูชิหรือร้านอาหารญี่ปุ่นที่ลูกค้าให้ความไว้วางใจให้เชฟเลือกเมนูอาหารให้ตามความชอบและความสดใหม่ของวัตถุดิบในวันนั้นโดยทั่วไปแล้ว จะมีการเสิร์ฟอาหารเป็นหลาย ๆ คอร์สซึ่งเชฟจะนำเสนออาหารที่ดีที่สุดและสร้างสรรค์ให้กับลูกค้าโอมากาเสะจึงเป็นประสบการณ์ที่เฉพาะเจาะจงและมักจะมาพร้อมกับการแสดงฝีมื\r\nอของเชฟในแต่ละจาน', 10000, 'jpg', '5'),
(43, 'เกี๊ยวซ่า', 'ขนมจีบหรือเกี๊ยวญี่ปุ่นที่มีไส้เนื้อสัตว์และผัก เช่น หมู, ไก่, หรือกุ้ง โดยมักจะมีการทอดให้กรอบที่ด้านล่างและนึ่งจนสุกที่ด้านบน', 300, 'jpg', '5'),
(44, 'ข้าวหมูโชกุน', 'ข้าวหน้าหมูทอดชุบเกล็ดขนมปังซึ่งมักจะเสิร์ฟพร้อมกับไข่ที่ถูกตีให้เข้ากันและปรุงรสด้วยซอสโชยุโดยจะมีข้าวสวยเป็นฐาน ข้าวหมูโชกุนเป็นอาหารยอดนิยมในญี่ปุ่นมีรสชาติกลมกล่อมและเนื้อสัมผัสกรอบนอกนุ่มใน', 259, 'jpg', '5'),
(45, 'ทาโกะยากิ', 'ขนมญี่ปุ่นที่ทำจากแป้งข้าวสาลีผสมกับน้ำซุปดาชิ (dashi)แล้วมีไส้เป็นปลาหมึก (ทาโกะ) หั่นเป็นชิ้นเล็ก ๆขนมจะถูกปรุงในพิมพ์กลมจนกรอบนอกและนุ่มในมักจะเสิร์ฟร้อนพร้อมกับซอสทาโกะยากิ, มายองเนส, และโรยด้วยสาหร่ายโนริและปลาแห้ง', 100, 'jpg', '5'),
(46, 'นาเบะ', 'อาหารจานเดียวที่มีลักษณะเป็นสตูว์หรือซุปที่ถูกปรุงในหม้อโดยมักจะประกอบด้วยเนื้อสัตว์ (เช่น หมู, ไก่, หรือวัว), ผัก, และเส้น เช่น อุด้งหรือราเม็ง น้ำซุปจะมีรสชาติหลากหลาย เช่น ซุปโชยุ, ซุปมิโซะ, หรือซุปทงคตสึ ซึ่งนาบะเป็นอาหารที่เหมาะสำหรับการรับประทานร่วมกันในครอบครัวหรือกลุ่มเพื่อน', 1000, 'jpg', '5'),
(47, 'แกงกะหรี่หมู', 'อาหารญี่ปุ่นที่มีรสชาติเข้มข้น มักประกอบด้วยหมู, ผัก เช่น มันฝรั่งและแครอท และมีซอสแกงกะหรี่ที่ทำจากผงแกงหรือก้อนแกงที่เตรียมไว้โดยมักจะเสิร์ฟพร้อมกับข้าวสวย', 250, 'jpg', '5'),
(48, 'ซูชิ (Sushi) และซาชิมิ (Sashimi)', 'ซูชิ ข้าวญี่ปุ่นที่ปรุงรสด้วยน้ำส้มสายชู (vinegar)\r\nมักจะมีการเสิร์ฟกับเนื้อสัตว์สด เช่น ปลา และมักจะมีการห่อด้วยสาหร่าย (nori)หรืออาจเสิร์ฟในรูปแบบที่เรียกว่า (ข้าวปั้นท็อปด้วยปลา)ซาชิมิเนื้อสัตว์หรือปลา สด ๆ ที่หั่นเป็นชิ้นบาง ๆ มักจะเสิร์ฟพร้อมกับโชยุ (soy sauce) และวาซาบิ (wasabi) โดยไม่มีข้าว', 1200, 'jpg', '5'),
(49, 'ไก่ทอดซอสนัมบัง', 'อาหารญี่ปุ่นที่มีลักษณะเป็นไก่ทอดกรอบที่ถูกหมักและนำไปชุบแป้งแล้วทอดจนกรอบ จากนั้นจะราดด้วยซอสนัมบัง ซึ่งมีรสชาติเปรี้ยวหวานมักจะใช้ส่วนผสมจากน้ำส้มสายชู น้ำตาล และซอสถั่วเหลือง', 280, 'jpg', '5'),
(50, 'โซบะ', 'เส้นก๋วยเตี๋ยวญี่ปุ่นที่ทำจากแป้งบัควีท (buckwheat) โดยมีลักษณะเป็นเส้นบาง ๆสีน้ำตาล มักจะเสิร์ฟในรูปแบบต่าง ๆ เช่น ซุปโซบะร้อนหรือเย็นโดยสามารถรับประทานกับน้ำจิ้มซอสหรือราดด้วยซุป มีทั้งแบบเสิร์ฟร้อนและเย็น', 289, 'jpg', '5');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `oid` int(7) UNSIGNED ZEROFILL NOT NULL,
  `ototal` int(7) NOT NULL,
  `odate` datetime NOT NULL,
  `member_id` int(7) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`oid`, `ototal`, `odate`, `member_id`) VALUES
(0000001, 3685, '2017-11-14 12:56:27', 0),
(0000002, 5080, '2017-11-14 12:57:15', 0),
(0000003, 12350, '2021-10-01 11:11:44', 0),
(0000004, 2585, '2021-10-01 11:15:47', 0),
(0000005, 3685, '2021-10-01 15:56:10', 0),
(0000006, 6770, '2021-10-01 15:58:08', 0),
(0000007, 5280, '2024-10-14 08:47:11', 0),
(0000008, 370, '2024-10-14 10:29:20', 0);

-- --------------------------------------------------------

--
-- Table structure for table `orders_detail`
--

CREATE TABLE `orders_detail` (
  `od_id` int(6) NOT NULL,
  `oid` int(7) UNSIGNED ZEROFILL NOT NULL,
  `pid` int(7) NOT NULL,
  `item` int(7) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `orders_detail`
--

INSERT INTO `orders_detail` (`od_id`, `oid`, `pid`, `item`) VALUES
(1, 0000001, 7, 2),
(2, 0000001, 1, 1),
(3, 0000001, 9, 3),
(4, 0000002, 6, 2),
(5, 0000002, 4, 1),
(6, 0000003, 1, 4),
(7, 0000003, 6, 1),
(8, 0000004, 7, 3),
(9, 0000004, 9, 2),
(10, 0000004, 6, 1),
(11, 0000005, 9, 3),
(12, 0000005, 7, 2),
(13, 0000005, 1, 1),
(14, 0000006, 2, 2),
(15, 0000006, 5, 1),
(16, 0000007, 1, 1),
(17, 0000007, 2, 1),
(18, 0000008, 1, 1),
(19, 0000008, 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `p_id` int(4) NOT NULL,
  `p_name` varchar(200) NOT NULL,
  `p_detail` text NOT NULL,
  `p_price` int(6) NOT NULL,
  `p_picture` varchar(200) NOT NULL,
  `p_type` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`p_id`, `p_name`, `p_detail`, `p_price`, `p_picture`, `p_type`) VALUES
(1, 'ต้มยํากุ้ง น้ำข้น', 'ต้มยํากุ้งอาหารถูกปากของคนไทยและชาวต่างชาติ\nเรียกได้ว่าทั่วโลกแทบทุกคนไม่มีใครที่ไม่รู้อาหารไทยอย่าง ต้มยํากุ้ง นี้ และสูตรเมนูต้มยํากุ้งวันนี้จะเป็น ต้มยํากุ้งน้ำข้น นั่นเอง เอาใจคอชอบอาหารที่เน้นความเข้มข้นของรสชาติใครที่ชอบทำอาหารห้ามพลาด\nกับเมนู ต้มยำกุ้ง ถ้วยนี้เลยนะขอบอก และขอบอกอีกทีว่า ต้มยำกุ้งชาม นี้นับว่าแซ่บจี๊ดจริง ๆ', 250, '1.jpg', 1),
(2, 'ส้มตำ', 'ส้มตำ เป็นอาหารปรุงมาจากการทำตำส้ม คือการทำให้เปรี้ยวและเผ็ดในลาวและอีสานจะเรียกว่าตำหมากหุ่งปรุงโดยนำมะละกอดิบที่สับแล้วฝานหรือขูดเป็นเส้นมาตำในครกเป็นหลักพร้อมด้วยวัตถุดิบอื่น ๆ คือ มะเขือเทศลูกเล็ก มะเขือสีดา มะเขือเปราะ พริกสดหรือพริกแห้ง ถั่วฝักยาว กระเทียม และปรุงรสด้วยน้ำตาลปี๊บ น้ำปลา และมะนาว รวมถึงน้ำปลาร้า', 80, '2.jpg', 1),
(3, 'ลบาน้ำตกหมู', 'น้ำตก มีลักษณะเหมือนกับลาบทุกประการ\nต่างกันเพียงแค่ไม่ใช้เนื้อสับแต่จะใช้เนื้อย่างหั่นเป็นชิ้น ๆ แทน โดยมากนิยมใช้เนื้อหมูย่างหรือเนื้อวัวย่าง ซกเล็กเป็นอาหารที่มีลักษณะคล้ายลาบ แต่ไม่ทำให้เนื้อสัตว์สุก เมื่อปรุงรสได้ที่แล้วจะนำเลือดสัตว์ชนิดที่นำมาทำให้เนื้อสัตว์ชนิดที่นำมาทำนั้น มาขยำให้เหลวและเคล้ากับลาบดิบ ๆ', 185, '3.jpg', 1),
(4, 'ไก่ย่าง', 'อาหารที่ทำจากเนื้อไก่ที่ถูกหมักด้วยเครื่องเทศและน้ำซอสต่าง ๆ แล้วนำไปย่างจนสุกและมีสีเหลืองสวย มักมีรสชาติอร่อยและกลิ่นหอมโดยสามารถเสิร์ฟคู่กับน้ำจิ้มต่าง ๆ เช่น น้ำจิ้มแจ่วหรือน้ำจิ้มไก่ ไก่ย่าง', 200, '4.jpg', 1),
(5, 'กระเพราหมูสับ', 'กระเพราหมูสับคือเมนูอาหารไทยที่ทำจากหมูสับผัดกับใบกระเพรา พริก และกระเทียม โดยมักจะปรุงรสด้วยน้ำปลา น้ำตาล และซอสหอยนางรม จนเข้ากันดี แล้วเสิร์ฟร้อน ๆ มักจะทานคู่กับข้าวสวยร้อน ๆ และไข่ดาว', 150, '5.jpg', 1),
(6, 'ผัดไท', 'ผัดไทยคือเมนูอาหารจานเส้นที่มีต้นกำเนิดจากประเทศไทย โดยทั่วไปจะทำจากเส้นก๋วยเตี๋ยวไทย (เส้นจันทน์) ผัดกับไข่ เต้าหู้ กุ้งหรือไก่ และผักต่าง ๆ เช่น ถั่วงอกและหอมแดง มักจะปรุงรสด้วยน้ำซอสผัดไทยที่มีส่วนผสมของน้ำตาลมะพร้าว น้ำปลา และน้ำมะนาว เพื่อให้มีรสชาติกลมกล่อมผัดไทย', 175, '6.jpg', 1),
(7, 'ห่อหมก', 'ห่อหมกคืออาหารไทยที่ทำจากปลาหรือเนื้อสัตว์อื่น ๆ\nผสมกับเครื่องแกงที่มีส่วนผสมของกะทิ ใบมะกรูด และสมุนไพรต่าง ๆ แล้วนำไปห่อด้วยใบตองหรือใส่ในถ้วยเพื่อให้สุกมักจะมีรสชาติเผ็ดเค็มและกลิ่นหอมจากสมุนไพรห่อหมก', 120, '7.jpg', 1),
(8, 'ไข่เจียว', 'ไข่เจียวคือเมนูอาหารที่ทำจากไข่ไก่ที่ตีให้เข้ากันแล้วนำไปทอดในน้ำมันจนสุกและเหลืองกรอบ มีลักษณะนุ่มด้านในและกรอบด้านนอก โดยสามารถปรุงรสด้วยเกลือหรือซอสต่าง ๆ และสามารถเพิ่มวัตถุดิบอื่น ๆ เช่น หัวหอม พริก หรือผักต่าง ๆ', 80, '8.jpg', 1),
(9, 'น้ำพริกกะปิปลาทูทอด', 'น้ำพริกกะปิปลาทูทอดคือเมนูอาหารไทยที่รวมกันระหว่างน้ำพริกกะปิ ซึ่งทำจากกะปิ พริกขี้หนู กระเทียม และมะนาว บดให้เข้ากันจนได้รสชาติที่กลมกล่อม กับปลาทูที่ทอดจนกรอบ\nน้ำพริกกะปิมักเสิร์ฟคู่กับผักสด เช่น แตงกวา ถั่วฝักยาว หรือผักต้มเมนูนี้มีรสชาติเปรี้ยว เค็ม เผ็ด และหอมกลิ่นกะปิ', 195, '9.jpg', 1),
(10, 'ต้มขาไก่', 'ต้มขาไก่คือเมนูอาหารไทยที่ทำจากขาไก่ต้มในน้ำซุป โดยมักมีการปรุงรสด้วยเครื่องเทศต่าง ๆ เช่น ข่า ตะไคร้ ใบมะกรูด และพริกไทย ต้มจนขาไก่นุ่มและมีรสชาติกลมกล่อม', 230, '10.jpg', 1),
(11, '', '', 0, '11.jpg', 0),
(12, '', '', 0, '12.jpg', 0),
(13, '', '', 0, '13.jpg', 0),
(14, '', '', 0, '14.jpg', 0),
(15, '', '', 0, '15.jpg', 0),
(16, '', '', 0, '16.jpg', 0),
(17, '', '', 0, '17.jpg', 0),
(18, '', '', 0, '18.jpg', 0),
(19, '', '', 0, '19.jpg', 0),
(20, '', '', 0, '20.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_type`
--

CREATE TABLE `product_type` (
  `pt_id` int(3) NOT NULL,
  `pt_name` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `product_type`
--

INSERT INTO `product_type` (`pt_id`, `pt_name`) VALUES
(1, 'อาหารไทย'),
(2, 'อาหารเกาหลี'),
(3, 'อาหารจีน'),
(4, 'อาหารอิตาเลียน'),
(5, 'ิอาหารญี่ปุ่น');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`f_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`oid`);

--
-- Indexes for table `orders_detail`
--
ALTER TABLE `orders_detail`
  ADD PRIMARY KEY (`od_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `product_type`
--
ALTER TABLE `product_type`
  ADD PRIMARY KEY (`pt_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `c_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `f_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `oid` int(7) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders_detail`
--
ALTER TABLE `orders_detail`
  MODIFY `od_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
