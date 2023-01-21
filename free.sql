-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 21, 2023 at 11:56 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `free`
--

-- --------------------------------------------------------

--
-- Table structure for table `movie_card_info`
--

CREATE TABLE `movie_card_info` (
  `id` int(11) NOT NULL,
  `movie_name` varchar(40) NOT NULL,
  `movie_rating` varchar(3) NOT NULL,
  `movie_img` text NOT NULL,
  `movie_release_year` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movie_card_info`
--

INSERT INTO `movie_card_info` (`id`, `movie_name`, `movie_rating`, `movie_img`, `movie_release_year`) VALUES
(41, 'All Quiet on the Western Front', '8.0', 'https://upload.wikimedia.org/wikipedia/en/c/c3/All_quiet_on_the_western_front_%282022_film%29.jpg', 2022),
(42, 'Mia and Me : The Hero of Centopia', '5.8', 'https://m.media-amazon.com/images/M/MV5BNjgwY2ZkYmYtMDZlMS00YzcyLWE3MTgtZjUzNjY4NjA2ZjIzXkEyXkFqcGdeQXVyNjk0ODAxMTk@._V1_FMjpg_UX1000_.jpg', 2022),
(43, 'The Loneliest Boy in the World', '5.1', 'https://m.media-amazon.com/images/M/MV5BOTg3YmJjMGEtNGM1ZC00YzA0LWI5MTUtOWZiZWQ4MmEyMDRjXkEyXkFqcGdeQXVyOTg4MDYyNw@@._V1_.jpg', 2022),
(44, 'John Wick: Chapter 3 – Parabellum', '7.5', 'https://themoviespoiler.com/wp-content/uploads/2019/05/john_wick_chapter_three_ver26_xlg.jpg', 2019),
(45, 'Black Adam', '7.3', 'https://m.media-amazon.com/images/M/MV5BYzZkOGUwMzMtMTgyNS00YjFlLTg5NzYtZTE3Y2E5YTA5NWIyXkEyXkFqcGdeQXVyMjkwOTAyMDU@._V1_.jpg', 2022),
(46, 'The School for Good and Evil', '5.8', 'https://m.media-amazon.com/images/M/MV5BNzM1ODI4Y2UtMGYxMS00OTUxLWE4NzItNjgxMTM2NzRjZThkXkEyXkFqcGdeQXVyMTA1OTcyNDQ4._V1_FMjpg_UX1000_.jpg', 2022),
(47, 'Nussa: The Movie', '7.7', 'https://m.media-amazon.com/images/M/MV5BZWZiODkxNjgtYmQ2OS00YmNlLThhZDMtMzNiN2Q5OGYzMzE2XkEyXkFqcGdeQXVyMTEzMTI1Mjk3._V1_FMjpg_UX1000_.jpg', 2022),
(48, 'Frankenweenie', '6.9', 'https://lumiere-a.akamaihd.net/v1/images/p_frankenweenie2012_20501_06183b98.jpeg', 2012),
(49, 'Batman and Superman: Battle of the Super', '8.0', 'https://m.media-amazon.com/images/M/MV5BYmMwZGRlNDYtZDdmYy00MzBjLTg4NmItNTU5NzFiMDRkMDc4XkEyXkFqcGdeQXVyMTU0OTM5ODc1._V1_.jpg', 2022),
(50, 'Trick or Treat Scooby-Doo!', '7.5', 'https://m.media-amazon.com/images/M/MV5BMTlmMTVlMWMtOGI0Zi00MWYwLThiNGYtMTBiZTgzZTg2ODZlXkEyXkFqcGdeQXVyMTA4NTQwNjY4._V1_FMjpg_UX1000_.jpg', 2022),
(51, 'Scooby-Doo! Camp Scare', '7.0', 'https://images.moviesanywhere.com/1cba132edeb6f10188ff24f9f641c95c/1dec138b-1f52-4534-a0ef-4574ed5a0d8d.jpg', 2010),
(52, 'John Wick: Chapter 2', '7.5', 'https://resizing.flixster.com/t03J-N7iMiWdgqbkRNHNArjDD44=/ems.cHJkLWVtcy1hc3NldHMvbW92aWVzLzcxY2M3ZWE3LTc3Y2ItNDExMS1hNzhkLWJhYTljMzZiZmVkNC53ZWJw', 2017),
(53, 'John Wick: Chapter 1', '8.0', 'https://flxt.tmsimg.com/assets/p11016518_p_v8_as.jpg', 2014),
(54, 'Confidential Assignment', '6.6', 'https://www.themoviedb.org/t/p/original/begGZaUaxdUConId1554D9D8gms.jpg', 2017),
(55, 'Confidential Assignment 2', '6.9', 'https://photos.hancinema.net/photos/photo1539829.jpg', 2022),
(56, 'Catherine Called Birdy', '6.5', 'https://channelmyanmar.org/wp-content/uploads/2022/10/MV5BNzEyYTE3ZTItODg1Ny00N2VjLWExZTYtNmE4ODY4ZGE4ZDZjXkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_FMjpg_UX1000_.jpg', 2022),
(57, 'Jane', '5.1', 'https://m.media-amazon.com/images/M/MV5BNjQ5M2I4MmMtMTU5ZS00NzdiLTg1NDItYmIxOGEzMmNjYTU0XkEyXkFqcGdeQXVyMTM1MTE1NDMx._V1_FMjpg_UX1000_.jpg', 2022),
(58, 'To Be Immortal', '5.9', 'https://image.tmdb.org/t/p/w185/3h4mE3okwJ9DjjXu6jipix96rzh.jpg', 2018),
(59, 'Accident Man: Hitman’s Holiday', '5.8', 'https://image.tmdb.org/t/p/w185/8XF5EIDUOZv1p9orukdyERvv2Qn.jpg', 2022),
(60, 'Game of Love', '2.4', 'https://image.tmdb.org/t/p/w185/suASijYyJ3jwwEfPki1V3R8vuO9.jpg', 2022),
(61, 'Work In Vain Song Ci', '6.1', 'https://image.tmdb.org/t/p/w185/2YR04AfB6SZhAdv7edkdaIivG7c.jpg', 2021),
(62, 'Eddie the Eagle', '7.3', 'https://image.tmdb.org/t/p/w185/80fwjYfHmeDXobIErpNvCFCOAYd.jpg', 2015),
(63, 'The Curious Case of Dolphin Bay', '5.4', 'https://channelmyanmar.org/wp-content/uploads/2022/10/insert-curi-scaled.jpg', 2022),
(64, 'Doll House', '8.2', 'https://image.tmdb.org/t/p/w185/hYGADLbf0I7VLe5i8pwjJ9dRYh4.jpg', 2022),
(65, 'Big Three Dragons', '6.2', 'https://image.tmdb.org/t/p/w185/8vkC3dYoZvf2u2hRWul3MC2JJLM.jpg', 2020);

-- --------------------------------------------------------

--
-- Table structure for table `movie_video`
--

CREATE TABLE `movie_video` (
  `id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `genre` text NOT NULL,
  `movie_runtime` varchar(20) NOT NULL,
  `collection` varchar(30) NOT NULL,
  `video_url` text NOT NULL,
  `video_info` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movie_video`
--

INSERT INTO `movie_video` (`id`, `movie_id`, `genre`, `movie_runtime`, `collection`, `video_url`, `video_info`) VALUES
(3, 41, 'Action, War', '2h 27m', '', 'https://sbanh.com/e/d6h94se19k6c.html', 'ဂျာမန်စစ်ကားအသစ်ထွက်လာပါပြီ။ အနောက်ပိုင်းစစ်မြေပြင်မှာ အားလုံးတိတ်ဆိတ်လို့ ဆိုတဲ့ နာမည်အတိုင်းပဲ အနောက်ပိုင်းစစ်မြေပြင်က တိုက်ပွဲတွေအကြောင်းပါပဲ။ 1930 နဲ့ 1973 မှာလည်း ဒီနာမည်နဲ့ ရုပ်ရှင်တွေ ထွက်ခဲ့ပါသေးတယ်။ အနောက်ပိုင်းစစ်မြေပြင်ဟာ ပထမကမ္ဘာစစ်ရဲ့ ကမ္ဘာကျော်တိုက်ပွဲကြီးတွေ ဖြစ်ခဲ့တဲ့နေရာပါပဲ။ တစ်ဘက်နဲ့တစ်ဘက် မီတာ ၁၀၀ လောက် ရှေ့တိုးနိုင်ဖို့ လူ တစ်သန်းလောက် အသေခံခဲ့ရတဲ့ စစ်မြေပြင်လည်းဖြစ်ပါတယ်။ ဒီရုပ်ရှင်ထဲမှာလည်း ပထမကမ္ဘာစစ်အစကနေ အဆုံးအထိ စစ်သားတွေရဲ့ တိုက်ပွဲတွေနဲ့ ဖြတ်သန်းမှုတွေကို တွေ့ရမှာပါ။ သဘောကျစရာကောင်းလာတာကတော့ စစ်ကားအများစုဟာ စစ်ပွဲကို သူရဲကောင်းဝါဒထက် စိတ်ကုန်စရာ စိတ်ပျက်စရာဖြစ်အောင် ပုံဖော်ခဲ့ကြတာ အတော်များလာပါပြီ။ Kingsmen နောက်ဆုံးရုပ်ရှင်မှာ ကဗျာရွတ်သွားတဲ့အခန်းလိုပါပဲ။ ဒီရုပ်ရှင်မှာလည်းဒီလိုပါပဲ စစ်ပွဲပြီးဆုံးရေးကို ဦးတည်မျှော်လင့်နေတဲ့ စစ်သားတွေအကြောင်းပါပဲ။ “ငါ့သားလည်း စစ်ပွဲထဲမှာ သေသွားတာပဲကွ၊ သူတော့ ဘာဂုဏ်သိက္ခာမှ ခံစားမိလိုက်တယ် မကြားပါဘူး” ဆိုတဲ့ စကားမျိုးတွေပဲ ပြောသွားတာပါပဲ။ပထမကမ္ဘာစစ်ဟာ ၁၉၁၄ ဇူလိုင်လ ၂၈ မှာ စတင်ခဲ့ပြီး ၁၉၁၈ နိုဝင်ဘာ ၁၁ မှာ ပြီးဆုံးခဲ့ပါတယ်။ စတင်ခဲ့တာကတော့ ဩစတြီးယား-ဟန်ဂေရီက ဆားဘီယားကို စစ်ကြေညာတာကနေ စတင်ခဲ့ပါတယ်။ နိုင်ငံပေါင်း ၃၀ ကျော်ပါဝင်ခဲ့ကြပြီး ပင်မအနေနဲ့ ရုရှား၊ ဘယ်ဂျီယံ၊ ပြင်သစ်၊ ဗြိတိန်၊ ဆားဘီးယား၊ အီတလီ၊ အမေရိကန် တို့ဟာ ဩစတြီးယား-ဟန်ဂေရီ၊ ဂျာမနီ၊ ဘူဂေးရီးယား၊ တော့တိုမန်အင်ပါယာတို့နဲ့ တိုက်ခိုက်ခဲ့ကြတာပါ။ အဆိပ်ငွေ့တွေအဓိကသုံးခဲ့ကြတဲ့ စစ်ပွဲလည်းဖြစ်ပါတယ်။ စစ်သား ၉ သန်းခန့်သေဆုံးခဲ့ပြီး စစ်ပွဲဘေးဒုက္ခကြောင့် ဒဏ်ရာရ၊ ငတ်မွတ်၊ ရောဂါဘေးတွေနဲ့ လူ ၅ သန်းခဲ့ သေဆုံးခဲ့ပါတယ်။ ကမ္ဘာ့ပထမဆုံးနဲ့အကြီးဆုံး တုပ်ကွေးကပ်ရောဂါလည်း ပထမကမ္ဘာစစ်ကြောင့် ပြန့်နှံ့ခဲ့ပါတယ်။ဒီတော့ ဒီရုပ်ရှင်ထဲက ပထမကမ္ဘာစစ်တိုက်ပွဲတွေနဲ့ စစ်သားတွေအကြောင်းကို ခံစားကြည့်လိုက်ပါဦး။'),
(4, 42, 'Adventure, Animation, Family', '1h 25m', '', 'https://sbanh.com/e/8beqp94te3b5.html', 'Mia and Me ဆိုတဲ့ ကာတွန်းစီးရီးကို Movie အနေနဲ့ ပြန်လည် အသက်သွင်းထာားတဲ့\r\n2022 ခုနှစ်ထွက် Animation ကားကောင်းလေးကို တင်ဆက်ပေးလိုက်ပါတယ်မီယာဆိုတာ အဖေရော အမေရော မရှိတော့တဲ့ ၁၂ နှစ်အရွယ် လူသားကောင်မလေး ဖြစ်ပြီး\r\nသူ့အဖေ ထားခဲ့တဲ့ မှော်ကာတွန်းစာအုပ်လေးကနေတစ်ဆင့် Unicorn နဲ့ Elf တို့ရဲ့ ကမ္ဘာ Centopia ဆီ အသွားအပြန်လုပ်နေတဲ့ သူပါဒီကားမှာတော့ Centopia ကို မကောင်းဆိုးဝါး ဖားပြုတ်ကြီး လက်ထဲကနေ\r\nမီယာနဲ့ Centopia က သူ့သူငယ်ချင်းတွေပူးပေါင်းပြီး ကယ်တင်ကြပုံကို ကြည့်ရှုကြရမှာပါ\r\nAnimation ကားတွေရဲ့ ထုံးစံအတိုင်း အရောင်အသွေးစုံစုံလင်လင်နဲ့\r\nမျက်စိပသာဒဖြစ်အောင် တင်ဆက်ထားတာဖြစ်လို့ ပေါ့ပေါ့ပါးပါးနဲ့ အနားယူရင်း ရှုစားလိုက်ကြပါဦး'),
(5, 43, 'Comedy, Horror', '1h 30min', '', 'https://sbanh.com/e/auwg1ee992ia.html', 'THE LONELIEST BOY IN THE WORLD is billed as a modern fairytale--except with zombies. When the sheltered and unsocialized Oliver is tasked with making new friends after the sudden and devastating death of his mother, he decides that digging a few up (literally) might be his best bet. However, when he awakens the morning after his excavating escapades, he discovers that his newly acquired friends have mysteriously come to life overnight, launching them all into a series of misadventures as they try to keep their secret safe from neighbors, classmates, and social workers alike.'),
(6, 44, ' Action, Crime, Thriller', '2h 10min', '', 'https://sbanh.com/e/io8v858h14ma.html', 'Chapter 2 မှာ ကျွန်တော်တို့ရဲ့ ဇာတ်လိုက်ကြီး John wick ဟာ သူတို့လောကရဲ့\r\nအကြီးမားဆုံးသောစည်းမျဉ်းကိုချိုးဖောက်ခဲ့လေတော့ဒေါ်လာ 14 million နဲ့\r\nဆုကြေးအထုတ်ခံရတဲ့အပြင် အချိန်အနည်းငယ်ပဲရခဲ့လေတော့\r\nဖရိုဖရဲနဲ့ ထွက်ပြေးခဲ့တာကို အားလုံးအမှတ်ရကြမယ်ထင်ပါတယ်….\r\nဆိုတော့ Chapter 3 နဲ့ပတ်သက်လို့ထွေထွေထူးထူးညွှန်းဆိုစရာမလိုတော့ဘူးထင်ပါရဲ့…\r\nကိုင်း ကျွန်တော်တို့ရဲ့ John Wick ကြီး ဘယ်လိုတွေ အသက်ရှင်သန်ရေးအတွက်လှုပ်ရှားမလဲ….\r\nဘယ်သူတွေကရော သူ့ဘက်ပါမလဲ….\r\nဒုစရိုက်လောကသားအားလုံးဟာလည်း John Wick ကြီးကို သတ်ဖို့ဘယ်လိုတွေအားထုတ်ကြမလဲဆိုတာကို\r\nတော့ ရင်ခုန်စိတ်လှုပ်ရှားစွာဖြင့်ခံစားကြည့်လိုက်ပါ…');

-- --------------------------------------------------------

--
-- Table structure for table `series_info`
--

CREATE TABLE `series_info` (
  `id` int(11) NOT NULL,
  `series_name` varchar(50) NOT NULL,
  `season` varchar(5) NOT NULL,
  `rating` varchar(5) NOT NULL,
  `img_url` text NOT NULL,
  `genre` text NOT NULL,
  `release_year` int(4) NOT NULL,
  `video_info` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `series_info`
--

INSERT INTO `series_info` (`id`, `series_name`, `season`, `rating`, `img_url`, `genre`, `release_year`, `video_info`) VALUES
(1, 'The Winchesters', 'S1', '6.9', 'https://i1.wp.com/channelmyanmar.vip/wp-content/uploads/2022/10/1666244782-2978-sx9CxQCQmt6oYYLs0MKyx4G940S.jpg?resize=200,300', 'Action & Adventure, Sci-Fi & Fantasy', 2022, 'ပညာသည်နှစ်ဦးတို့ တစ္ဆေမုဆိုးတို့ ဘာညာနာမည်မျိုးစုံနဲ့ ကျော်ကြားခဲ့တဲ့\r\nSupernatural စီးရီးကို လူအတော်များများ ကြည့်ဖူးကြားဖူးမှာပါ။ အဓိက\r\nဇာတ်ဆောင်ကတော့ ဆမ်နဲ့ဒင်း ညီအစ်ကိုနှစ်ယောက်ပေါ့။\r\n\r\nအခုစီးရီးကတော့ အဲဒီစီးရီးရဲ့ခေတ်မတိုင်ခင် ဆမ်နဲ့ဒင်းရဲ့ အဖေနဲ့အမေဖြစ်တဲ့\r\nဂျွန် ဝင်ချက်စတာနဲ့ မယ်ရီဝင်ချက်စတာတို့ စတွေ့ပုံရယ် စွန့်စားခန်းတွေ ဖွင့်ခဲ့\r\nကြပုံတွေရယ်ကို ပြသသွားမှာပဲဖြစ်ပါတယ်။ ဇာတ်ကောင်အသစ်တွေပါလာသလို\r\nSPN တုန်းက အရမ်းကြိုက်ခဲ့ရတဲ့သူတွေလည်း ပြန်ပါလာဖို့ မျှော်လင့်ရတာပါပဲ။\r\n\r\nပြီးတော့ အရင် SPN မှာမဖော်ပြဖူးတဲ့ မွန်းစတား ကြမ်းကြမ်းတွေလည်း ပါလာဖို့\r\nရှိတာမို့ သေချာပေါက်စောင့်မျှော်ကြည့်ရှုရမယ့် စီးရီးတစ်ခုပဲဖြစ်ပါတယ်။ အပိုင်း\r\n(၁၃)ပိုင်းရှိမှာဖြစ်ပြီး အပတ်စဉ် ဗုဒ္ဓဟူးနေ့တိုင်း ချန်နယ်မြန်မာမှာ ဘာသာပြန်\r\nတင်ဆက်ပေးသွားမှာမို့ စောင့်မျှော်ကြည့်ရှုလို့ရပါပြီ။'),
(2, 'May I Help You', 'S1', '8.3', 'https://i1.wp.com/channelmyanmar.vip/wp-content/uploads/2022/10/1666244464-8997-4WRmW8ATNfKbacwh9eeL8i4SpSl.jpg?resize=200,300', 'Drama', 2022, 'Baek Dong Ju (Hyeri) က နာရေးကူညီမှုက ဒါရိုက်တာတစ်ယောက်ဖြစ်ပြီး သေသွားတဲ့လူတွေကို မြင်နိုင်၊ ပြောဆိုနိုင်တဲ့ အထူးစွမ်းရည်တစ်ခု ပိုင်ဆိုင်ထားပါတယ်။ သေသွားတဲ့လူတွေဟာ Dong Ju ဆီကို သူတို့ရဲ့ နောက်ဆုံးဆန္ဒကို တောင်းဆိုတယ်။ တကယ်လို့ Dong Ju က မလုပ်ပေးဘူးဆိုရင် အဲ့နေ့တစ်နေ့လုံး ကံဆိုးမှုတွေကို ကြုံရမှာပါ။\r\nKim Jib Sa (Lee Jun Young) ကတော့ ဦးလေးဖြစ်သူပိုင်ဆိုင်တဲ့ “အီဒန်းဘဲ့” ကုမ္ပဏီက ဝန်ထမ်းဖြစ်ပြီး “အီဒန်းဘဲ့” ဆိုတာကတော့ တစ်နေ့ကို ဝမ် 100 ကနေစပြီး ဖောက်သည်တွေ တောင်းဆိုသမျှ အလုပ်အားလုံးကို အကောင်းဆုံးဝန်ဆောင်မှုပေးတဲ့ လုပ်ငန်း‌မျိုးပါ။\r\nBaek Dong Ju နဲ့ Kim Jib Sa တို့နှစ်ယောက် အလုပ်တူတူလုပ်ကြရင်း သေသွားတဲ့ ဝိညာဥ်တွေရဲ့ ဆန္ဒကို လိုက်ဖြည့်ဆည်းပေးရင်းနဲ့ ဖြစ်လာမယ့်အလွဲအချော်လေးတွေကြားထဲက သူတို့ရဲ့ Romance လေးတွေကို ကြည့်ရှုရမှာပါနော်။\r\nဒီ drama လေးကို MBC ရုပ်သံလှိုင်းကနေ အပတ်စဉ် ဗုဒ္ဓဟူး၊ ကြာသပတေးနေ့တိုင်း ထုတ်လွှင့်ပြသသွားမှာပဲဖြစ်ပါတယ်။'),
(3, 'High Water', 'S1', '8.5', 'https://i1.wp.com/channelmyanmar.vip/wp-content/uploads/2022/10/1666195736-5155-hzlrv2jEqHKyl88g8L03pwEAR1j.jpg?resize=200,300', 'Drama', 2022, 'Netflix က ပိုလန်မှာရင်းနှီးမြှပ်နှံမှုတွေ များလာတာကြောင့်ရုပ်ရှင်ချစ်သူတွေအတွက် ပိုလန်စီးရီးတွေကို Netflix မှာလက်လှမ်းမီနေပါပြီ။ပိုလန်စီးရီးတွေကလဲ တကယ့်ကိုစီးရီးကောင်းတွေအများကြီးထွက်တာမို့hidden gems တွေပေါ်လာတယ်ပြောရမှာပါပဲ။အခုလဲ ပိုလန်စီးရီးအသစ်တစ်ခုဖြစ်တဲ့ High Water ကိုကြည့်လိုက်ကြရအောင်။\r\nဒါကတော့ပိုလန်ကရေကြီးမှုဖြစ်ရပ်မှန်ကို အခြေခံထားတဲ့ဇာတ်လမ်းပါ။နယ်သာလန်မှာနေနေတဲ့ ပိုလန်ကဗရော့ဆွာဖ်မြို့သူ ဇလဗေဒပညာရှင်ယက်ရှ်မီနာကဗရော့ဆွာဖ်မှာရေကြီးတော့မယ်လို့ခန့်မှန်းချက်ထုတ်လိုက်ပါတယ်။တခြားဇလဗေဒပညာရှင်ကြီးတွေကတော့မဖြစ်နိုင်ဘူးဆိုပါတယ်။မြို့တော်ဝန်ကတော့သေချာအောင်ဆိုပြီးယက်ရှ်မီနာကိုမြို့ဆီ ပြန်လာကူညီဖို့ဖိတ်ခေါ်ရာမှာဇာတ်လမ်းစတင်လာပါတယ်။သဘာဝတရားနဲ့ရင်ဆိုင်ရမယ်ဆိုရင်တော့ လုပ်စရာတစ်ခုပဲရှိပါတယ်။အားလုံးအန္တရာယ်ကင်းရေးပါ။သဘာဝတရားကိုပြန်တိုက်ခိုက်ဖို့ဆိုတာက မဖြစ်နိုင်သလောက်ပဲလေ။ဗရော့ဆွာဖ်မှာ ရေကြီးမယ့အရိပ်အယောင်စချိန်မှာပဲပညာရှင်တွေကြားကအယူအဆတွေ အားပြိုင်မှုတွေ လုပ်ဆောင်ချက်တွေ မြို့သူမြို့သားတွေရဲ့တုံ့ပြန်မှုတွေဒါ့အပြင်မြို့ပြန်ရောက်လာတဲ့ယက်ရှ်မီနာရဲ့အတိတ်ဒရာမာတွေအဲလိုအကြောင်းအရာတွေကိုဇာတ်လမ်းသွားခပ်သွက်သွက်နဲ့တင်ဆက်ထားတာကရေကြီးမှူအကြောင်းဘာမှမသိသူအတွက်တောင် စိတ်ဝင်စားစရာကောင်းပြီး ဗဟုသုတလဲအတော်ရတဲ့စီးရီးကောင်းတစ်ခုပါပဲ။\r\nအညွှန်းကိုတော့ Rashida က ရေးထားပေးပြီးတော့ ဘာသာပြန်ထားတာကတော့ Rashida, Roman NoX, Mary Christ တို့ပဲ ဖြစ်ပါတယ်။'),
(4, 'The Midnight Club', 'S1', '7.1', 'https://i1.wp.com/channelmyanmar.vip/wp-content/uploads/2022/10/1666195392-1948-2Y4F9BHkacKIMnDBZI3GGKpG1If.jpg?resize=200,300', 'Drama, Mystery', 2022, 'နက်ဖလစ်ရဲ့ ဟော်ရာ သည်းထိပ်ရင်ဖို စီးရီးကောင်းတစ်ခု တင်ပေးလိုက်ပါတယ်။ စီးရီးအစမှာတော့ အလွန်ကာဆိုတဲ့ ကောင်မလေးတစ်ယောက်ကနေ စထားပါတယ်။ အလွန်ကာဟာ စာတော်ပြီး အထက်တန်းကျောင်းပြီးလို့ ကောလိပ်တက်ဖို့ စောင့်နေတဲ့ ကောင်မလေးဖြစ်ပါတယ်။ ဒါပေမဲ့ ကင်ဆာကုမရတဲ့အဆင့်ရောက်နေတာကို သိလိုက်ရပြီး အိပ်မက်တွေ ပျက်စီးသွားခဲ့တယ်။ အဲဒီမှာ သူ့လိုပဲ ဆရာဝန်တွေလက်လျှော့ထားတဲ့ ရောဂါပိုင်ရှင် ဆယ်ကျော်သက်လူငယ်လေးတွေ နောက်ဆုံးအချိန်မှ ာ အနားယူကြတဲ့ အိမ်တစ်ခုကိုတွေ့သွားပြီး သွားဖို့ဆုံးဖြတ်လိုက်တယ်။ အဲဒီမှာ သူ့လိုပဲ ရောဂါသည် ၇ ယောက်နဲ့တွေ့ပြီး ညသန်းခေါင်ကလပ်ဆိုတာမှာ ဝင်ပါလိုက်တယ်။ အဲဒီကလပ်ကညတိုင်း ကြောက်စရာပုံပြင်တွေ အလှည့်ကျပြောရတဲ့အပြင် သူတို့အဖွဲ့ထဲကပထမဆုံးသေတဲ့လူဟာ တမလွန်ကနေကျန်တဲ့သူတွေကို မရရအောင်ဆက်သွယ်ပြီး ပြောပြရမယ်လို့ ကတိပေးထားကြပါတယ်။ ဒီလိုနဲ့ သူတို့အထဲက တစ်ယောက် အရင်ဆုံးသေသွားတဲ့အခါ ထူးဆန်းတာတွေ စတင်လာပါတော့တယ်…');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `movie_card_info`
--
ALTER TABLE `movie_card_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movie_video`
--
ALTER TABLE `movie_video`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `series_info`
--
ALTER TABLE `series_info`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `movie_card_info`
--
ALTER TABLE `movie_card_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `movie_video`
--
ALTER TABLE `movie_video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `series_info`
--
ALTER TABLE `series_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
