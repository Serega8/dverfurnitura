-- phpMyAdmin SQL Dump
-- version 3.5.8.1deb1
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Янв 31 2014 г., 19:42
-- Версия сервера: 5.5.34-0ubuntu0.13.04.1
-- Версия PHP: 5.4.9-4ubuntu2.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `dverf_main`
--

-- --------------------------------------------------------

--
-- Структура таблицы `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `name_translit` varchar(200) DEFAULT NULL,
  `description` text,
  `keywords` varchar(200) NOT NULL,
  `descr` text NOT NULL,
  `title` varchar(200) NOT NULL,
  `seo_text` text NOT NULL,
  `status` int(11) DEFAULT '0',
  `sort` tinyint(4) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `articles`
--

INSERT INTO `articles` (`id`, `date`, `name`, `name_translit`, `description`, `keywords`, `descr`, `title`, `seo_text`, `status`, `sort`, `parent_id`) VALUES
(1, 1384001297, 'Тестовая статья', 'testovaya-stat-ya', '<div style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 15px; font-style: normal; font-variant: normal; line-height: 22.984375px; background-color: rgb(255, 255, 255);"><strong style="font-size: 15px;">Житель штата Мичиган, США, Джозеф Палмарчук, два года назад выигравший в лотерею 1 миллион долларов, в среду выиграл джек-пот региональной лотереи Classic Lotto 47 в размере 1,35 миллиона долларов, сообщает агентство Associated Press.</strong><br>&nbsp;</div><div style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 15px; font-style: normal; font-variant: normal; line-height: 22.984375px; background-color: rgb(255, 255, 255);">На полученные средства семья планирует приобрести квартиру в одном из южных штатов, чтобы проводить там зимние месяцы. Журналистам победитель заявил, что любит покупать лотерейные билеты и всегда чувствовал, что еще раз победит. По словам Палмарчука, теперь он рассчитывает выиграть приз покрупнее — джекпот лотереи Mega Millions или Powerball, сумма которого, как правило, доходит до нескольких сотен миллионов долларов, передает CBS.<br>&nbsp;<span id="bufferBlock" style="height: 1px; overflow: hidden; position: absolute; width: 1px; margin-top: 5px; margin-left: -1px; line-height: 0; opacity: 0;"><br>Читать полностью:&nbsp;<a href="http://finance.tut.by/news374094.html?utm_source=news-right-block&amp;utm_medium=other-news&amp;utm_campaign=other-news" style="border: 0px; font-family: inherit; color: rgb(25, 44, 143); text-decoration: underline; line-height: inherit;">http://finance.tut.by/news374094.html?utm_source=news-right-block&amp;utm_medium=other-news&amp;utm_campaign=other-news</a></span></div>', '', '', '', '', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `article_images`
--

CREATE TABLE IF NOT EXISTS `article_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `img_url` varchar(200) DEFAULT NULL,
  `img_alt` varchar(85) DEFAULT ' ',
  `img_title` varchar(85) DEFAULT ' ',
  `sort` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `article_images`
--

INSERT INTO `article_images` (`id`, `parent_id`, `img_url`, `img_alt`, `img_title`, `sort`, `status`) VALUES
(1, 1, '/content/images/article_images/last_breath-_by_francisco_javier_epinoza_p-rez-jpg-.jpg', '', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `brands`
--

CREATE TABLE IF NOT EXISTS `brands` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) DEFAULT NULL,
  `translit` varchar(65) DEFAULT NULL,
  `img_url` varchar(100) DEFAULT NULL,
  `img_alt` varchar(80) DEFAULT NULL,
  `img_title` varchar(80) DEFAULT NULL,
  `keywords` varchar(250) NOT NULL,
  `descript` text NOT NULL,
  `seo_text` text NOT NULL,
  `title` varchar(200) NOT NULL,
  `descr` text,
  `status` tinyint(4) DEFAULT '0',
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `brands`
--

INSERT INTO `brands` (`id`, `name`, `translit`, `img_url`, `img_alt`, `img_title`, `keywords`, `descript`, `seo_text`, `title`, `descr`, `status`, `sort`) VALUES
(1, 'Тестовый производитель', 'testovyy-proizvoditel', '/content/images/category_images/la_gomera_by_alfonso_aguirre_arbex-jpg-.jpg', '', '', '', '', '', '', '', 3, NULL),
(2, 'SALICE PAOLO', 'salice-paolo', '/content/images/category_images/leningrado-jpg-.jpg', 'краткое описание SALICE PAOLO', '', '', '', '', '', 'Полное описание SALICE PAOLO', 0, NULL),
(3, 'тестовый производитель 2', 'testovyy-proizvoditel-2', '/content/images/category_images/furnitura_dlya_razdvizhnyh_mezhkomnatnyh_dverey_5313-jpg-.jpg', 'Краткое описание тестового производителя 2', '', '', '', '', '', 'Полное описание тестового производителя 2', 0, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(60) DEFAULT NULL,
  `translit_name` varchar(60) DEFAULT NULL,
  `keywords` varchar(250) NOT NULL,
  `seo_text` text NOT NULL,
  `descr` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `rus_url` varchar(300) NOT NULL,
  `img_url` varchar(200) DEFAULT NULL,
  `img_title` varchar(100) DEFAULT NULL,
  `img_alt` varchar(100) DEFAULT NULL,
  `date` int(11) NOT NULL,
  `status` tinyint(4) DEFAULT '0',
  `sort` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=43 ;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `translit_name`, `keywords`, `seo_text`, `descr`, `title`, `rus_url`, `img_url`, `img_title`, `img_alt`, `date`, `status`, `sort`) VALUES
(34, 'Тестовая категория', 'testovaya-kategoriya', 'Ключевые слова (keywords)', '', 'Описание (description)', 'Название (title)', '', '/content/images/category_images/leftover_by_sagar_jain-jpg-.jpg', NULL, NULL, 1384001018, 3, NULL),
(35, 'Ручки', 'ruchki', '', '', '', '', '', NULL, NULL, NULL, 1388042363, 0, NULL),
(36, 'Петли', 'petli', '', '', '', '', '', '/content/images/category_images/bez-imeni-10-jpg-.jpg', NULL, NULL, 1388044987, 0, NULL),
(37, 'Замки', 'zamki', '', '', '', '', '', '/content/images/category_images/bez-imeni-11-jpg-.jpg', NULL, NULL, 1388045002, 0, NULL),
(38, 'Защелки', 'zaschelki', '', '', '', '', '', NULL, NULL, NULL, 1388044811, 0, NULL),
(39, 'Ящики почтовые', 'yaschiki-pochtovye', '', '', '', '', '', '/content/images/category_images/bez-imeni-14-jpg-.jpg', NULL, NULL, 1388044894, 0, NULL),
(40, 'Ограничители дверные', 'ogranichiteli-dvernye', '', '', '', '', '', '/content/images/category_images/bez-imeni-15-jpg-.jpg', NULL, NULL, 1388044909, 0, NULL),
(41, 'Цилиндры', 'cilindry', '', '', '', '', '', '/content/images/category_images/bez-imeni-16-jpg-.jpg', NULL, NULL, 1388044925, 0, NULL),
(42, 'Стучалки', 'stuchalki', '', '', '', '', '', '/content/images/category_images/bez-imeni-17-jpg-.jpg', NULL, NULL, 1388044943, 0, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `contacts`
--

CREATE TABLE IF NOT EXISTS `contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `velcom` varchar(100) NOT NULL,
  `mts` varchar(100) NOT NULL,
  `life` varchar(100) NOT NULL,
  `dialog` varchar(100) NOT NULL,
  `gorod` varchar(100) NOT NULL,
  `name` varchar(250) NOT NULL,
  `img_url` varchar(250) NOT NULL,
  `other` text NOT NULL,
  `adr` varchar(200) NOT NULL,
  `sort` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `currency`
--

CREATE TABLE IF NOT EXISTS `currency` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `val` double NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `currency`
--

INSERT INTO `currency` (`id`, `name`, `val`, `status`) VALUES
(1, 'USD', 1, 0),
(2, 'BYR', 9250, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `details`
--

CREATE TABLE IF NOT EXISTS `details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT '0',
  `name` varchar(65) DEFAULT NULL,
  `name_translit` varchar(65) DEFAULT NULL,
  `sort` tinyint(4) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) NOT NULL DEFAULT 'text',
  `tag` varchar(100) NOT NULL,
  `placeholder` varchar(200) NOT NULL,
  `ident` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '1',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `main_pages`
--

CREATE TABLE IF NOT EXISTS `main_pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `translit_name` varchar(45) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_id` int(11) NOT NULL,
  `text` text NOT NULL,
  `msg_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `msg_id`
--

CREATE TABLE IF NOT EXISTS `msg_id` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(60) NOT NULL,
  `date` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `translit` varchar(100) NOT NULL,
  `keywords` text NOT NULL,
  `descr` text NOT NULL,
  `title` varchar(150) NOT NULL,
  `seo_text` varchar(250) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=ucs2 AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `pages`
--

INSERT INTO `pages` (`id`, `name`, `translit`, `keywords`, `descr`, `title`, `seo_text`, `status`, `sort`) VALUES
(1, 'Каталог', 'catalog', 'keys2456456', 'descr5', 'CATALOG', 'seotext7456', 0, 0),
(2, 'Производители', 'brands', 'wegweg45456456', 'gweg', 'BRANDS', 'weg', 0, 0),
(3, 'Контакты', 'contacts', 'ywords)', 'ywords)', 'CONTACTS', 'wegywords)', 0, 0),
(4, 'Статьи', 'articles', 'FEEDBACK', 'rsthrth', 'NEWS', 'hrsth', 0, 0),
(5, 'Главная', '/', 'srthsrth', 'rsth', 'Magnific Locks', 'weh', 0, 0),
(6, 'Обратная связь', 'feedback', '', '', 'FEEDBACK', '', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sub_category_id` int(11) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `product_name` varchar(60) DEFAULT NULL,
  `name_translit` varchar(60) DEFAULT NULL,
  `keywords` varchar(250) NOT NULL,
  `seo_text` text NOT NULL,
  `descr` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `cost` varchar(50) NOT NULL DEFAULT '0',
  `currency` varchar(10) NOT NULL DEFAULT 'Бел. руб.',
  `date` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=28 ;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `sub_category_id`, `category_id`, `brand_id`, `product_name`, `name_translit`, `keywords`, `seo_text`, `descr`, `title`, `cost`, `currency`, `date`, `status`, `sort`) VALUES
(1, 1, 34, 1, 'Тестовый товар', 'testovyy-tovar', '', '', '', '', '5000', '1', 1384001071, 3, 0),
(2, NULL, 35, 1, 'На розетке ( классика и модерн )', 'na-rozetke-klassika-i-modern', '', '', '', '', '0', '1', 1388042793, 3, 0),
(3, NULL, 35, 1, 'На планке ( классика и модерн )', 'na-planke-klassika-i-modern', '', '', '', '', '0', '1', 1388042858, 3, 0),
(4, 2, 35, 2, 'beirut', 'beirut', '', '', '', '', '0', '1', 1391109117, 0, 0),
(5, 2, 35, 2, 'dakar', 'dakar', '', '', '', '', '0', '1', 1391178516, 0, 0),
(6, 2, 35, 2, 'damasko', 'damasko', '', '', '', '', '0', '1', 1391181521, 0, 0),
(7, 2, 35, 2, 'delhi', 'delhi', '', '', '', '', '0', '1', 1391181619, 0, 0),
(8, 2, 35, 2, 'encrinus', 'encrinus', '', '', '', '', '0', '1', 1391181668, 0, 0),
(9, 2, 35, 2, 'eolica', 'eolica', '', '', '', '', '0', '1', 1391181702, 0, 0),
(10, 2, 35, 2, 'ginevra', 'ginevra', '', '', '', '', '0', '1', 1391181741, 0, 0),
(11, 2, 35, 2, 'hannover', 'hannover', '', '', '', '', '0', '1', 1391181779, 0, 0),
(12, 2, 35, 2, 'il cairo', 'il-cairo', '', '', '', '', '0', '1', 1391181822, 0, 0),
(13, 2, 35, 2, 'jakarta', 'jakarta', '', '', '', '', '0', '1', 1391181848, 0, 0),
(14, 2, 35, 2, 'lisbona', 'lisbona', '', '', '', '', '0', '1', 1391181928, 0, 0),
(15, 2, 35, 2, 'luxor', 'luxor', '', '', '', '', '0', '1', 1391181952, 0, 0),
(16, 2, 35, 2, 'madrid', 'madrid', '', '', '', '', '0', '1', 1391181997, 0, 0),
(17, 2, 35, 2, 'orleans', 'orleans', '', '', '', '', '0', '1', 1391182048, 0, 0),
(18, 2, 35, 2, 'paestum', 'paestum', '', '', '', '', '0', '1', 1391182085, 0, 0),
(19, 2, 35, 2, 'pompei', 'pompei', '', '', '', '', '0', '1', 1391182114, 0, 0),
(20, 2, 35, 2, 'reims', 'reims', '', '', '', '', '0', '1', 1391182151, 0, 0),
(21, 2, 35, 2, 'rochefort', 'rochefort', '', '', '', '', '0', '1', 1391182191, 0, 0),
(22, 2, 35, 2, 'samarra', 'samarra', '', '', '', '', '0', '1', 1391182234, 0, 0),
(23, 2, 35, 2, 'sharjan', 'sharjan', '', '', '', '', '0', '1', 1391182271, 0, 0),
(24, 2, 35, 2, 'todi', 'todi', '', '', '', '', '0', '1', 1391182307, 0, 0),
(25, 2, 35, 2, 'urbino', 'urbino', '', '', '', '', '0', '1', 1391182336, 0, 0),
(26, 2, 35, 2, 'versailles', 'versailles', '', '', '', '', '0', '1', 1391182368, 0, 0),
(27, 2, 35, 2, 'vienna', 'vienna', '', '', '', '', '0', '1', 1391182393, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `product_images`
--

CREATE TABLE IF NOT EXISTS `product_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `img_url` varchar(200) DEFAULT NULL,
  `img_url_small` varchar(250) NOT NULL,
  `img_alt` varchar(80) DEFAULT NULL,
  `img_title` varchar(80) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '0',
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=39 ;

--
-- Дамп данных таблицы `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `img_url`, `img_url_small`, `img_alt`, `img_title`, `status`, `sort`) VALUES
(1, 1, '/content/images/product_images/1/cacomixtle_ubunte-o_by_carlos_and_paula_morales-jpg-1384001071.jpg', '/content/images/product_images/1/s/cacomixtle_ubunte-o_by_carlos_and_paula_morales-jpg-1384001071.jpg', '', '', 3, NULL),
(2, 1, '/content/images/product_images/1/fleurs_de_prunus_2-4_by_j-r-me_boivin-jpg-1384001071.jpg', '/content/images/product_images/1/s/fleurs_de_prunus_2-4_by_j-r-me_boivin-jpg-1384001071.jpg', '', '', 3, NULL),
(3, 1, '/content/images/product_images/1/la_gomera_by_alfonso_aguirre_arbex-jpg-1384001072.jpg', '/content/images/product_images/1/s/la_gomera_by_alfonso_aguirre_arbex-jpg-1384001072.jpg', '', '', 3, NULL),
(4, 1, '/content/images/product_images/1/last_breath-_by_francisco_javier_epinoza_p-rez-jpg-1384001072.jpg', '/content/images/product_images/1/s/last_breath-_by_francisco_javier_epinoza_p-rez-jpg-1384001072.jpg', '', '', 3, NULL),
(5, 1, '/content/images/product_images/1/landing_by_nic_dahlquist-jpg-1384001073.jpg', '/content/images/product_images/1/s/landing_by_nic_dahlquist-jpg-1384001073.jpg', '', '', 3, NULL),
(6, 1, '/content/images/product_images/1/la_gomera_by_alfonso_aguirre_arbex-jpg-1384001210.jpg', '/content/images/product_images/1/s/la_gomera_by_alfonso_aguirre_arbex-jpg-1384001210.jpg', '', '', 3, NULL),
(7, 1, '/content/images/product_images/1/landing_by_nic_dahlquist-jpg-1384001211.jpg', '/content/images/product_images/1/s/landing_by_nic_dahlquist-jpg-1384001211.jpg', '', '', 3, NULL),
(8, 1, '/content/images/product_images/1/morning_sun_on_frost-covered_leaves_by_gary_a_stafford-jpg-1384001211.jpg', '/content/images/product_images/1/s/morning_sun_on_frost-covered_leaves_by_gary_a_stafford-jpg-1384001211.jpg', '', '', 3, NULL),
(9, 1, '/content/images/product_images/1/leftover_by_sagar_jain-jpg-1384001212.jpg', '/content/images/product_images/1/s/leftover_by_sagar_jain-jpg-1384001212.jpg', '', '', 3, NULL),
(10, 1, '/content/images/product_images/1/last_breath-_by_francisco_javier_epinoza_p-rez-jpg-1384001212.jpg', '/content/images/product_images/1/s/last_breath-_by_francisco_javier_epinoza_p-rez-jpg-1384001212.jpg', '', '', 3, NULL),
(11, 1, '/content/images/product_images/1/morning_sun_on_frost-covered_leaves_by_gary_a_stafford-jpg-1384001451.jpg', '/content/images/product_images/1/s/morning_sun_on_frost-covered_leaves_by_gary_a_stafford-jpg-1384001451.jpg', NULL, NULL, 0, NULL),
(12, 2, '/content/images/product_images/2/bez-imeni-3-jpg-1388042793.jpg', '/content/images/product_images/2/s/bez-imeni-3-jpg-1388042793.jpg', NULL, NULL, 0, NULL),
(13, 3, '/content/images/product_images/3/bez-imeni-4-jpg-1388042858.jpg', '/content/images/product_images/3/s/bez-imeni-4-jpg-1388042858.jpg', NULL, NULL, 0, NULL),
(14, 4, '/content/images/product_images/4/images-jpg-1391109117.jpg', '/content/images/product_images/4/s/images-jpg-1391109117.jpg', '', '', 3, NULL),
(15, 4, '/content/images/product_images/4/beirut-jpg-1391178396.jpg', '/content/images/product_images/4/s/beirut-jpg-1391178396.jpg', '', '', 0, NULL),
(16, 5, '/content/images/product_images/5/dakar-jpg-1391178516.jpg', '/content/images/product_images/5/s/dakar-jpg-1391178516.jpg', NULL, NULL, 0, NULL),
(17, 6, '/content/images/product_images/6/damasco-jpg-1391181521.jpg', '/content/images/product_images/6/s/damasco-jpg-1391181521.jpg', NULL, NULL, 0, NULL),
(18, 7, '/content/images/product_images/7/delhi-jpg-1391181619.jpg', '/content/images/product_images/7/s/delhi-jpg-1391181619.jpg', NULL, NULL, 0, NULL),
(19, 8, '/content/images/product_images/8/encrinus-jpg-1391181668.jpg', '/content/images/product_images/8/s/encrinus-jpg-1391181668.jpg', NULL, NULL, 0, NULL),
(20, 9, '/content/images/product_images/9/eolica-jpg-1391181702.jpg', '/content/images/product_images/9/s/eolica-jpg-1391181702.jpg', NULL, NULL, 0, NULL),
(21, 10, '/content/images/product_images/10/ginevra-jpg-1391181741.jpg', '/content/images/product_images/10/s/ginevra-jpg-1391181741.jpg', NULL, NULL, 0, NULL),
(22, 11, '/content/images/product_images/11/hannover-jpg-1391181779.jpg', '/content/images/product_images/11/s/hannover-jpg-1391181779.jpg', NULL, NULL, 0, NULL),
(23, 12, '/content/images/product_images/12/il-cairo-jpg-1391181822.jpg', '/content/images/product_images/12/s/il-cairo-jpg-1391181822.jpg', NULL, NULL, 0, NULL),
(24, 13, '/content/images/product_images/13/jakarta-jpg-1391181848.jpg', '/content/images/product_images/13/s/jakarta-jpg-1391181848.jpg', NULL, NULL, 0, NULL),
(25, 14, '/content/images/product_images/14/lisbona-jpg-1391181928.jpg', '/content/images/product_images/14/s/lisbona-jpg-1391181928.jpg', NULL, NULL, 0, NULL),
(26, 15, '/content/images/product_images/15/luxor-jpg-1391181953.jpg', '/content/images/product_images/15/s/luxor-jpg-1391181953.jpg', NULL, NULL, 0, NULL),
(27, 16, '/content/images/product_images/16/madrid-jpg-1391181997.jpg', '/content/images/product_images/16/s/madrid-jpg-1391181997.jpg', NULL, NULL, 0, NULL),
(28, 17, '/content/images/product_images/17/orleans-jpg-1391182048.jpg', '/content/images/product_images/17/s/orleans-jpg-1391182048.jpg', NULL, NULL, 0, NULL),
(29, 18, '/content/images/product_images/18/paestum-jpg-1391182085.jpg', '/content/images/product_images/18/s/paestum-jpg-1391182085.jpg', NULL, NULL, 0, NULL),
(30, 19, '/content/images/product_images/19/pompei-jpg-1391182114.jpg', '/content/images/product_images/19/s/pompei-jpg-1391182114.jpg', NULL, NULL, 0, NULL),
(31, 20, '/content/images/product_images/20/reims-jpg-1391182151.jpg', '/content/images/product_images/20/s/reims-jpg-1391182151.jpg', NULL, NULL, 0, NULL),
(32, 21, '/content/images/product_images/21/rochefort-jpg-1391182191.jpg', '/content/images/product_images/21/s/rochefort-jpg-1391182191.jpg', NULL, NULL, 0, NULL),
(33, 22, '/content/images/product_images/22/samarra-jpg-1391182234.jpg', '/content/images/product_images/22/s/samarra-jpg-1391182234.jpg', NULL, NULL, 0, NULL),
(34, 23, '/content/images/product_images/23/sharjan-jpg-1391182272.jpg', '/content/images/product_images/23/s/sharjan-jpg-1391182272.jpg', NULL, NULL, 0, NULL),
(35, 24, '/content/images/product_images/24/todi-jpg-1391182307.jpg', '/content/images/product_images/24/s/todi-jpg-1391182307.jpg', NULL, NULL, 0, NULL),
(36, 25, '/content/images/product_images/25/urbino-jpg-1391182336.jpg', '/content/images/product_images/25/s/urbino-jpg-1391182336.jpg', NULL, NULL, 0, NULL),
(37, 26, '/content/images/product_images/26/versailles-jpg-1391182368.jpg', '/content/images/product_images/26/s/versailles-jpg-1391182368.jpg', NULL, NULL, 0, NULL),
(38, 27, '/content/images/product_images/27/vienna-jpg-1391182393.jpg', '/content/images/product_images/27/s/vienna-jpg-1391182393.jpg', NULL, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `reviews`
--

CREATE TABLE IF NOT EXISTS `reviews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `ip` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `val` float NOT NULL,
  `date` int(11) NOT NULL,
  `text` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `reviews`
--

INSERT INTO `reviews` (`id`, `product_id`, `name`, `ip`, `email`, `val`, `date`, `text`, `status`) VALUES
(1, 1, 'Ilya', '127.0.0.1', 'ilya.baranovskiy@mail.ru', 4.8, 1384001355, 'тестовый текст сообщениятестовый текст сообщения', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`) VALUES
(1, 'login', 'Login privileges, granted after account confirmation'),
(2, 'admin', 'Administrative user, has access to everything.');

-- --------------------------------------------------------

--
-- Структура таблицы `roles_users`
--

CREATE TABLE IF NOT EXISTS `roles_users` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `fk_role_id` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `roles_users`
--

INSERT INTO `roles_users` (`user_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(1, 2),
(2, 2),
(3, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `slideshow`
--

CREATE TABLE IF NOT EXISTS `slideshow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img_url` varchar(200) NOT NULL,
  `img_title` text NOT NULL,
  `img_alt` text NOT NULL,
  `img_link` varchar(200) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `stats`
--

CREATE TABLE IF NOT EXISTS `stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from` varchar(250) NOT NULL,
  `to` varchar(250) NOT NULL,
  `ip` varchar(50) NOT NULL,
  `browser` varchar(200) NOT NULL,
  `date` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=738 ;

--
-- Дамп данных таблицы `stats`
--

INSERT INTO `stats` (`id`, `from`, `to`, `ip`, `browser`, `date`) VALUES
(1, 'прямая ссылка', 'Главная', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/30.0.1599.66 Safari/537.36', 1384000767),
(2, 'прямая ссылка', 'Главная', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/30.0.1599.66 Safari/537.36', 1384000827),
(3, 'прямая ссылка', 'Главная', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/30.0.1599.66 Safari/537.36', 1384000836),
(4, 'прямая ссылка', 'Главная', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/30.0.1599.66 Safari/537.36', 1384000897),
(5, 'прямая ссылка', 'Главная', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/30.0.1599.66 Safari/537.36', 1384000919),
(6, 'http%3A%2F%2Fadmin.local%2F', '/feedback', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/30.0.1599.66 Safari/537.36', 1384000921),
(7, 'http%3A%2F%2Fadmin.local%2Ffeedback', '/feedback', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/30.0.1599.66 Safari/537.36', 1384000925),
(8, 'http%3A%2F%2Fadmin.local%2Ffeedback', '/brands', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/30.0.1599.66 Safari/537.36', 1384000927),
(9, 'http%3A%2F%2Fadmin.local%2Fbrands', 'Главная', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/30.0.1599.66 Safari/537.36', 1384000928),
(10, 'http%3A%2F%2Fadmin.local%2F', '/articles', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/30.0.1599.66 Safari/537.36', 1384000929),
(11, 'http%3A%2F%2Fadmin.local%2Farticles', '/contacts', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/30.0.1599.66 Safari/537.36', 1384000929),
(12, 'http%3A%2F%2Fadmin.local%2Fcontacts', '/catalog', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/30.0.1599.66 Safari/537.36', 1384000930),
(13, 'http%3A%2F%2Fadmin.local%2Fcontacts', '/catalog', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/30.0.1599.66 Safari/537.36', 1384001023),
(14, 'http%3A%2F%2Fadmin.local%2Fcatalog', '/catalog/testovaya-kategoriya', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/30.0.1599.66 Safari/537.36', 1384001024),
(15, 'http%3A%2F%2Fadmin.local%2Fcatalog', '/catalog/testovaya-kategoriya', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/30.0.1599.66 Safari/537.36', 1384001074),
(16, 'http%3A%2F%2Fadmin.local%2Fcatalog%2Ftestovaya-kategoriya', '/catalog/testovaya-kategoriya/testovaya-podkategoriya', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/30.0.1599.66 Safari/537.36', 1384001075),
(17, 'http%3A%2F%2Fadmin.local%2Fcatalog%2Ftestovaya-kategoriya%2Ftestovaya-podkategoriya', '/catalog/testovaya-kategoriya/testovaya-podkategoriya/testovyy-tovar', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/30.0.1599.66 Safari/537.36', 1384001077),
(18, 'http%3A%2F%2Fadmin.local%2Fcatalog%2Ftestovaya-kategoriya%2Ftestovaya-podkategoriya', '/catalog/testovaya-kategoriya/testovaya-podkategoriya/testovyy-tovar', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/30.0.1599.66 Safari/537.36', 1384001085),
(19, 'http%3A%2F%2Fadmin.local%2Fcatalog%2Ftestovaya-kategoriya%2Ftestovaya-podkategoriya', '/catalog/testovaya-kategoriya/testovaya-podkategoriya/testovyy-tovar', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/30.0.1599.66 Safari/537.36', 1384001126),
(20, 'http%3A%2F%2Fadmin.local%2Fcatalog%2Ftestovaya-kategoriya%2Ftestovaya-podkategoriya', '/catalog/testovaya-kategoriya/testovaya-podkategoriya/testovyy-tovar', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/30.0.1599.66 Safari/537.36', 1384001129),
(21, 'http%3A%2F%2Fadmin.local%2Fcatalog%2Ftestovaya-kategoriya%2Ftestovaya-podkategoriya', '/catalog/testovaya-kategoriya/testovaya-podkategoriya/testovyy-tovar', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/30.0.1599.66 Safari/537.36', 1384001205),
(22, 'http%3A%2F%2Fadmin.local%2Fcatalog%2Ftestovaya-kategoriya%2Ftestovaya-podkategoriya', '/catalog/testovaya-kategoriya/testovaya-podkategoriya/testovyy-tovar', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/30.0.1599.66 Safari/537.36', 1384001212),
(23, 'http%3A%2F%2Fadmin.local%2Fcatalog%2Ftestovaya-kategoriya%2Ftestovaya-podkategoriya', '/catalog/testovaya-kategoriya/testovaya-podkategoriya/testovyy-tovar', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/30.0.1599.66 Safari/537.36', 1384001224),
(24, 'http%3A%2F%2Fadmin.local%2Fcatalog%2Ftestovaya-kategoriya%2Ftestovaya-podkategoriya%2Ftestovyy-tovar', '/articles', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/30.0.1599.66 Safari/537.36', 1384001232),
(25, 'http%3A%2F%2Fadmin.local%2Fcatalog%2Ftestovaya-kategoriya%2Ftestovaya-podkategoriya%2Ftestovyy-tovar', '/articles', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/30.0.1599.66 Safari/537.36', 1384001278),
(26, 'http%3A%2F%2Fadmin.local%2Farticles', '/articles/testovaya-stat-ya', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/30.0.1599.66 Safari/537.36', 1384001280),
(27, 'http%3A%2F%2Fadmin.local%2Farticles', '/articles/testovaya-stat-ya', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/30.0.1599.66 Safari/537.36', 1384001292),
(28, 'http%3A%2F%2Fadmin.local%2Fcatalog%2Ftestovaya-kategoriya%2Ftestovaya-podkategoriya%2Ftestovyy-tovar', '/articles', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/30.0.1599.66 Safari/537.36', 1384001293),
(29, 'http%3A%2F%2Fadmin.local%2Fcatalog%2Ftestovaya-kategoriya%2Ftestovaya-podkategoriya%2Ftestovyy-tovar', '/articles', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/30.0.1599.66 Safari/537.36', 1384001298),
(30, 'http%3A%2F%2Fadmin.local%2Farticles', '/brands', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/30.0.1599.66 Safari/537.36', 1384001315),
(31, 'http%3A%2F%2Fadmin.local%2Fbrands', '/brands/testovyy-proizvoditel', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/30.0.1599.66 Safari/537.36', 1384001315),
(32, 'http%3A%2F%2Fadmin.local%2Fbrands', '/brands/testovyy-proizvoditel', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/30.0.1599.66 Safari/537.36', 1384001325),
(33, 'http%3A%2F%2Fadmin.local%2Fbrands%2Ftestovyy-proizvoditel', '/catalog/testovaya-kategoriya/testovaya-podkategoriya/testovyy-tovar', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/30.0.1599.66 Safari/537.36', 1384001326),
(34, 'http%3A%2F%2Fadmin.local%2Fbrands', '/brands/testovyy-proizvoditel', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/30.0.1599.66 Safari/537.36', 1384001326),
(35, 'http%3A%2F%2Fadmin.local%2Fbrands%2Ftestovyy-proizvoditel', '/catalog/testovaya-kategoriya/testovaya-podkategoriya/testovyy-tovar', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/30.0.1599.66 Safari/537.36', 1384001328),
(36, 'http%3A%2F%2Fadmin.local%2Fcatalog%2Ftestovaya-kategoriya%2Ftestovaya-podkategoriya%2Ftestovyy-tovar', '/catalog/testovaya-kategoriya/testovaya-podkategoriya/testovyy-tovar', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/30.0.1599.66 Safari/537.36', 1384001354),
(37, 'http%3A%2F%2Fadmin.local%2Fcatalog%2Ftestovaya-kategoriya%2Ftestovaya-podkategoriya%2Ftestovyy-tovar', '/feedback', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/30.0.1599.66 Safari/537.36', 1384001362),
(38, 'http%3A%2F%2Fadmin.local%2Fbrands%2Ftestovyy-proizvoditel', '/catalog/testovaya-kategoriya/testovaya-podkategoriya/testovyy-tovar', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/30.0.1599.66 Safari/537.36', 1384001379),
(39, 'http%3A%2F%2Fadmin.local%2Fbrands%2Ftestovyy-proizvoditel', '/catalog/testovaya-kategoriya/testovaya-podkategoriya/testovyy-tovar', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/30.0.1599.66 Safari/537.36', 1384001380),
(40, 'http%3A%2F%2Fadmin.local%2Fbrands%2Ftestovyy-proizvoditel', '/catalog/testovaya-kategoriya/testovaya-podkategoriya/testovyy-tovar', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/30.0.1599.66 Safari/537.36', 1384001386),
(41, 'http%3A%2F%2Fadmin.local%2Fbrands%2Ftestovyy-proizvoditel', '/catalog/testovaya-kategoriya/testovaya-podkategoriya/testovyy-tovar', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/30.0.1599.66 Safari/537.36', 1384001435),
(42, 'прямая ссылка', '//catalog/testovaya-kategoriya/testovaya-podkategoriya/testovyy-tovar', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/30.0.1599.66 Safari/537.36', 1384001454),
(43, 'прямая ссылка', '//catalog/testovaya-kategoriya/testovaya-podkategoriya/testovyy-tovar', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/30.0.1599.66 Safari/537.36', 1384001455),
(44, 'прямая ссылка', '//catalog/testovaya-kategoriya/testovaya-podkategoriya/testovyy-tovar', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/30.0.1599.66 Safari/537.36', 1384001456),
(45, 'прямая ссылка', '//catalog/testovaya-kategoriya/testovaya-podkategoriya/testovyy-tovar', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/30.0.1599.66 Safari/537.36', 1384001456),
(46, 'прямая ссылка', 'Главная', '86.57.186.182', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.71 Safari/537.36', 1387898722),
(47, 'прямая ссылка', 'Главная', '128.30.52.70', 'W3C_Validator/1.767', 1387898725),
(48, 'http%3A%2F%2Fdverfurnitura.by%2F', '/brands', '86.57.186.182', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.71 Safari/537.36', 1387898725),
(49, 'прямая ссылка', '/brands', '128.30.52.72', 'W3C_Validator/1.767', 1387898726),
(50, 'http%3A%2F%2Fdverfurnitura.by%2Fbrands', '/brands/testovyy-proizvoditel', '86.57.186.182', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.71 Safari/537.36', 1387898727),
(51, 'прямая ссылка', '/brands/testovyy-proizvoditel', '128.30.52.73', 'W3C_Validator/1.767', 1387898729),
(52, 'http%3A%2F%2Fdverfurnitura.by%2Fbrands%2Ftestovyy-proizvoditel', '/catalog/testovaya-kategoriya/testovaya-podkategoriya/testovyy-tovar', '86.57.186.182', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.71 Safari/537.36', 1387898730),
(53, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Ftestovaya-kategoriya%2Ftestovaya-podkategoriya%2Ftestovyy-tovar', '/articles', '86.57.186.182', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.71 Safari/537.36', 1387898731),
(54, 'прямая ссылка', '/catalog/testovaya-kategoriya/testovaya-podkategoriya/testovyy-tovar', '128.30.52.73', 'W3C_Validator/1.767', 1387898731),
(55, 'http%3A%2F%2Fdverfurnitura.by%2Farticles', '/contacts', '86.57.186.182', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.71 Safari/537.36', 1387898733),
(56, 'прямая ссылка', '/articles', '128.30.52.73', 'W3C_Validator/1.767', 1387898733),
(57, 'прямая ссылка', '/contacts', '128.30.52.73', 'W3C_Validator/1.767', 1387898734),
(58, 'http%3A%2F%2Fdverfurnitura.by%2Finfo', '/brands', '86.57.186.182', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1387900403),
(59, 'прямая ссылка', 'Главная', '93.85.167.111', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1387918666),
(60, 'http%3A%2F%2Fdverfurnitura.by%2F', 'Главная', '93.85.167.111', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1387918672),
(61, 'http%3A%2F%2Fdverfurnitura.by%2F', '/catalog/testovaya-kategoriya/testovaya-podkategoriya', '93.85.167.111', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1387918677),
(62, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Ftestovaya-kategoriya%2Ftestovaya-podkategoriya', '/catalog/testovaya-kategoriya/testovaya-podkategoriya/testovyy-tovar', '93.85.167.111', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1387918681),
(63, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Ftestovaya-kategoriya%2Ftestovaya-podkategoriya%2Ftestovyy-tovar', 'Главная', '93.85.167.111', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1387918692),
(64, 'прямая ссылка', 'Главная', '93.125.14.125', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1387977050),
(65, 'http%3A%2F%2Fdverfurnitura.by%2F', '/catalog/testovaya-kategoriya/testovaya-podkategoriya', '93.125.14.125', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1387977056),
(66, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Ftestovaya-kategoriya%2Ftestovaya-podkategoriya', '/catalog/testovaya-kategoriya/testovaya-podkategoriya/testovyy-tovar', '93.125.14.125', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1387977059),
(67, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Ftestovaya-kategoriya%2Ftestovaya-podkategoriya%2Ftestovyy-tovar', 'Главная', '93.125.14.125', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1387977067),
(68, 'http%3A%2F%2Fdverfurnitura.by%2F', 'Главная', '93.125.14.125', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1387977084),
(69, 'http%3A%2F%2Fdverfurnitura.by%2F', '/brands', '93.125.14.125', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1387977087),
(70, 'http%3A%2F%2Fdverfurnitura.by%2Fbrands', '/articles', '93.125.14.125', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1387977089),
(71, 'http%3A%2F%2Fdverfurnitura.by%2Farticles', '/contacts', '93.125.14.125', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1387977099),
(72, 'http%3A%2F%2Fdverfurnitura.by%2Fcontacts', 'Главная', '93.125.14.125', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1387977148),
(73, 'http%3A%2F%2Fdverfurnitura.by%2F', '/catalog/ruchki', '93.125.14.125', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1387977154),
(74, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/contacts', '93.125.14.125', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1387977158),
(75, 'прямая ссылка', 'Главная', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388041936),
(76, 'прямая ссылка', 'Главная', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388042366),
(77, 'прямая ссылка', 'Главная', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388042795),
(78, 'http%3A%2F%2Fdverfurnitura.by%2F', '/catalog/ruchki', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388042798),
(79, 'http%3A%2F%2Fdverfurnitura.by%2F', '/catalog/ruchki', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388042860),
(80, 'прямая ссылка', 'Главная', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388042861),
(81, 'прямая ссылка', 'Главная', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388042863),
(82, 'прямая ссылка', 'Главная', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388042949),
(83, 'прямая ссылка', 'Главная', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388042952),
(84, 'прямая ссылка', 'Главная', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388042971),
(85, 'прямая ссылка', 'Главная', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388042977),
(86, 'прямая ссылка', 'Главная', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388043020),
(87, 'http%3A%2F%2Fdverfurnitura.by%2F', '/catalog/ruchki', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388043023),
(88, 'прямая ссылка', 'Главная', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388043025),
(89, 'прямая ссылка', 'Главная', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388043096),
(90, 'прямая ссылка', 'Главная', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388043152),
(91, 'прямая ссылка', 'Главная', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388043648),
(92, 'прямая ссылка', 'Главная', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388043755),
(93, 'http%3A%2F%2Fdverfurnitura.by%2F', '/catalog/ruchki/na-rozetke-klassika-i-modern', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388043784),
(94, 'http%3A%2F%2Fdverfurnitura.by%2F', '/catalog/ruchki/na-rozetke-klassika-i-modern', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388043798),
(95, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki%2Fna-rozetke-klassika-i-modern', '/catalog/ruchki', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388043800),
(96, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/ruchki/na-rozetke-klassika-i-modern', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388043966),
(97, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki%2Fna-rozetke-klassika-i-modern', '/catalog/ruchki/na-rozetke-klassika-i-modern', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388043970),
(98, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki%2Fna-rozetke-klassika-i-modern', '/catalog/ruchki', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388043972),
(99, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki%2Fna-rozetke-klassika-i-modern', '/catalog/ruchki', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388044146),
(100, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki%2Fna-rozetke-klassika-i-modern', '/catalog/ruchki', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388044183),
(101, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki%2Fna-rozetke-klassika-i-modern', '/catalog/ruchki', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388044186),
(102, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki%2Fna-rozetke-klassika-i-modern', '/catalog/ruchki', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388044446),
(103, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki%2Fna-rozetke-klassika-i-modern', '/catalog/ruchki', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388044504),
(104, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki%2Fna-rozetke-klassika-i-modern', '/catalog/ruchki', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388044563),
(105, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki%2Fna-rozetke-klassika-i-modern', '/catalog/ruchki', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388044586),
(106, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki%2Fna-rozetke-klassika-i-modern', '/catalog/ruchki', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388044724),
(107, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/petli', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388044729),
(108, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/petli', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388044955),
(109, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fpetli', '/catalog/yaschiki-pochtovye', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388044961),
(110, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fpetli', '/catalog/yaschiki-pochtovye', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388045011),
(111, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fyaschiki-pochtovye', '/catalog/ruchki/na-rozetke-klassika-i-modern', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388045015),
(112, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki%2Fna-rozetke-klassika-i-modern', '/catalog/ruchki', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388045017),
(113, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/petli', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388045020),
(114, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fpetli', '/catalog/zamki', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388045023),
(115, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fzamki', '/catalog/zaschelki', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388045025),
(116, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fzamki', '/catalog/zaschelki', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388045061),
(117, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fzamki', '/catalog/zaschelki', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388045065),
(118, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fzaschelki', '/catalog/zaschelki', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388045068),
(119, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fzaschelki', '/catalog/ruchki', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388045070),
(120, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fzaschelki', '/catalog/ruchki', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388045330),
(121, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fzaschelki', '/catalog/ruchki', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388045405),
(122, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fzaschelki', '/catalog/ruchki', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388045426),
(123, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fzaschelki', '/catalog/ruchki', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388045463),
(124, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fzaschelki', '/catalog/ruchki', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388045525),
(125, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/petli', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388045553),
(126, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fpetli', '/catalog/ruchki', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388045586),
(127, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/petli', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388045609),
(128, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fpetli', '/catalog/ruchki', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388045612),
(129, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fpetli', '/catalog/ruchki', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388045635),
(130, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/petli', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388045637),
(131, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/petli', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388045837),
(132, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/petli', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388045839),
(133, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/petli', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388045853),
(134, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/petli', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388045854),
(135, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fpetli', '/catalog/ruchki', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388045857),
(136, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fpetli', '/catalog/ruchki', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388045875),
(137, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fpetli', '/catalog/ruchki', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388046010),
(138, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fpetli', '/catalog/ruchki', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388046029),
(139, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fpetli', '/catalog/ruchki', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388046030),
(140, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fpetli', '/catalog/ruchki', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388046030),
(141, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fpetli', '/catalog/ruchki', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388046031),
(142, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fpetli', '/catalog/ruchki', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388046036),
(143, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fpetli', '/catalog/ruchki', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388046317),
(144, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fpetli', '/catalog/ruchki', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388046346),
(145, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fpetli', '/catalog/ruchki', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388046540),
(146, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fpetli', '/catalog/ruchki', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388046587),
(147, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fpetli', '/catalog/ruchki', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388046713),
(148, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fpetli', '/catalog/ruchki', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388046715),
(149, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fpetli', '/catalog/ruchki', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388046736),
(150, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fpetli', '/catalog/ruchki', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388046756),
(151, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fpetli', '/catalog/ruchki', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388046840),
(152, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fpetli', '/catalog/ruchki', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388046859),
(153, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/petli', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388046863),
(154, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/petli', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388046880),
(155, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/petli', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388046915),
(156, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/petli', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388046947),
(157, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/petli', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388046971),
(158, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/petli', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388046995),
(159, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/petli', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388046997),
(160, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/petli', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388047020),
(161, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/petli', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388047065),
(162, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/petli', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388047075),
(163, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/petli', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388047196),
(164, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/petli', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388047220),
(165, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/petli', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388047448),
(166, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/petli', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388047499),
(167, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/petli', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388047545),
(168, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/petli', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388047546),
(169, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/petli', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388047566),
(170, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/petli', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388047622),
(171, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/petli', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388047647),
(172, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/petli', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388047649),
(173, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/petli', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388047649),
(174, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/petli', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388047649),
(175, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/petli', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388047708),
(176, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/petli', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388047879),
(177, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/petli', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388048024),
(178, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/petli', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388048060),
(179, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/petli', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388048070),
(180, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/petli', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388048288),
(181, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/petli', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388048443),
(182, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/petli', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388048476),
(183, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/petli', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388048502),
(184, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/petli', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388048627),
(185, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/petli', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388048797),
(186, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/petli', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388048804),
(187, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/petli', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388048893),
(188, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/petli', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388048912),
(189, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/petli', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388048937),
(190, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/petli', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388049002),
(191, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/petli', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388049005),
(192, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/petli', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388049026),
(193, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/petli', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388049040),
(194, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/petli', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388054512),
(195, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/petli', '86.57.187.118', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388054512),
(196, 'прямая ссылка', 'Главная', '195.50.31.219', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388063678),
(197, 'http%3A%2F%2Fdverfurnitura.by%2F', '/catalog/petli', '195.50.31.219', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388063691),
(198, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fpetli', '/catalog/zaschelki', '195.50.31.219', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388063694),
(199, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fpetli', '/catalog/zaschelki', '195.50.31.219', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388063695),
(200, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fzaschelki', '/catalog/yaschiki-pochtovye', '195.50.31.219', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388063699),
(201, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fyaschiki-pochtovye', '/catalog/ogranichiteli-dvernye', '195.50.31.219', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388063702),
(202, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fogranichiteli-dvernye', '/catalog/cilindry', '195.50.31.219', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388063706),
(203, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fcilindry', '/catalog/stuchalki', '195.50.31.219', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388063709),
(204, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/petli', '86.57.191.54', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388135915),
(205, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/petli', '86.57.191.54', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388135932),
(206, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/petli', '86.57.191.54', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388135952),
(207, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fpetli', '/catalog/zaschelki/mezhkomnatnye', '86.57.191.54', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388138980),
(208, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fzaschelki%2Fmezhkomnatnye', '/catalog/yaschiki-pochtovye', '86.57.191.54', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388138982),
(209, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fyaschiki-pochtovye', '/brands', '86.57.191.54', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388146353),
(210, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fyaschiki-pochtovye', '/brands', '86.57.191.54', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388146966),
(211, 'http%3A%2F%2Fdverfurnitura.by%2Fbrands', '/catalog/ruchki', '86.57.191.54', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388146968),
(212, 'http%3A%2F%2Fdverfurnitura.by%2Fbrands', '/catalog/ruchki', '86.57.191.54', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388147008),
(213, 'http%3A%2F%2Fdverfurnitura.by%2Fbrands', '/catalog/ruchki', '86.57.191.54', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388147023),
(214, 'http%3A%2F%2Fdverfurnitura.by%2Fbrands', '/catalog/ruchki', '86.57.191.54', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388147025),
(215, 'http%3A%2F%2Fdverfurnitura.by%2Fbrands', '/catalog/ruchki', '86.57.191.54', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388147033),
(216, 'http%3A%2F%2Fdverfurnitura.by%2Fbrands', '/catalog/ruchki', '178.124.105.163', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388154227),
(217, 'прямая ссылка', 'Главная', '82.145.209.26', 'Opera/9.80 (Android; Opera Mini/7.0.29530/34.818; U; ru) Presto/2.8.119 Version/11.10', 1388233329),
(218, 'http%3A%2F%2Fdverfurnitura.by%2F', '/catalog/ruchki', '82.145.209.26', 'Opera/9.80 (Android; Opera Mini/7.0.29530/34.818; U; ru) Presto/2.8.119 Version/11.10', 1388233340),
(219, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/petli', '82.145.209.26', 'Opera/9.80 (Android; Opera Mini/7.0.29530/34.818; U; ru) Presto/2.8.119 Version/11.10', 1388233374),
(220, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fpetli', '/catalog/zamki', '82.145.209.26', 'Opera/9.80 (Android; Opera Mini/7.0.29530/34.818; U; ru) Presto/2.8.119 Version/11.10', 1388233393),
(221, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fzamki', '/catalog/zaschelki', '82.145.209.26', 'Opera/9.80 (Android; Opera Mini/7.0.29530/34.818; U; ru) Presto/2.8.119 Version/11.10', 1388233409),
(222, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fzaschelki', '/catalog/zaschelki/magnitnye', '82.145.209.26', 'Opera/9.80 (Android; Opera Mini/7.0.29530/34.818; U; ru) Presto/2.8.119 Version/11.10', 1388233419),
(223, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fzaschelki', 'Главная', '82.145.209.26', 'Opera/9.80 (Android; Opera Mini/7.0.29530/34.818; U; ru) Presto/2.8.119 Version/11.10', 1388233449),
(224, 'прямая ссылка', 'Главная', '37.215.243.149', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388234942),
(225, 'http%3A%2F%2Fdverfurnitura.by%2F', '/catalog/ruchki', '37.215.243.149', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388234952),
(226, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/ruchki/na-rozetke-klassika-i-modern', '37.215.243.149', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388234956),
(227, 'http%3A%2F%2Fdverfurnitura.by%2F', '/catalog/ruchki', '37.215.243.149', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388234959),
(228, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/ruchki/na-planke-klassika-i-modern', '37.215.243.149', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388234960),
(229, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki%2Fna-planke-klassika-i-modern', '/catalog/zamki/vreznye', '37.215.243.149', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388234962),
(230, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fzamki%2Fvreznye', '/catalog/yaschiki-pochtovye', '37.215.243.149', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388234964);
INSERT INTO `stats` (`id`, `from`, `to`, `ip`, `browser`, `date`) VALUES
(231, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fyaschiki-pochtovye', '/catalog/ogranichiteli-dvernye', '37.215.243.149', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388234970),
(232, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fogranichiteli-dvernye', '/catalog/cilindry', '37.215.243.149', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388234972),
(233, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fcilindry', '/brands', '37.215.243.149', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388234974),
(234, 'http%3A%2F%2Fdverfurnitura.by%2Fbrands', '/articles', '37.215.243.149', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388234975),
(235, 'http%3A%2F%2Fdverfurnitura.by%2Farticles', '/articles', '37.215.243.149', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388234976),
(236, 'http%3A%2F%2Fdverfurnitura.by%2Farticles', '/contacts', '37.215.243.149', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388234980),
(237, 'http%3A%2F%2Fdverfurnitura.by%2Fcontacts', '/articles', '37.215.243.149', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388234981),
(238, 'http%3A%2F%2Fdverfurnitura.by%2Farticles', '/brands', '37.215.243.149', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388234982),
(239, 'http%3A%2F%2Fdverfurnitura.by%2Fbrands', '/articles', '37.215.243.149', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388234983),
(240, 'http%3A%2F%2Fdverfurnitura.by%2Farticles', '/articles/testovaya-stat-ya', '37.215.243.149', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388234985),
(241, 'http%3A%2F%2Fdverfurnitura.by%2Farticles%2Ftestovaya-stat-ya', '/catalog/ruchki', '37.215.243.149', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388234989),
(242, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/ruchki/na-rozetke-klassika-i-modern', '37.215.243.149', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388234992),
(243, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki%2Fna-rozetke-klassika-i-modern', '/catalog/petli/universal-nye', '37.215.243.149', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388234994),
(244, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fpetli%2Funiversal-nye', '/catalog/zaschelki', '37.215.243.149', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388234995),
(245, 'прямая ссылка', 'Главная', '93.85.133.106', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.71 Safari/537.36', 1388393179),
(246, 'http%3A%2F%2Fdverfurnitura.by%2F', '/catalog/ruchki', '93.85.133.106', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.71 Safari/537.36', 1388393191),
(247, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/ruchki', '93.85.133.106', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.71 Safari/537.36', 1388393194),
(248, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/ruchki/na-rozetke-klassika-i-modern', '93.85.133.106', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.71 Safari/537.36', 1388396596),
(249, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki%2Fna-rozetke-klassika-i-modern', '/catalog/ruchki', '93.85.133.106', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.71 Safari/537.36', 1388396601),
(250, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/petli/universal-nye', '93.85.133.106', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.71 Safari/537.36', 1388396603),
(251, 'прямая ссылка', 'Главная', '86.57.191.214', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388428360),
(252, 'http%3A%2F%2Fdverfurnitura.by%2F', '/catalog/ruchki', '86.57.191.214', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388428366),
(253, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', 'Главная', '86.57.191.214', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388428373),
(254, 'http%3A%2F%2Fdverfurnitura.by%2F', '/catalog/petli', '86.57.191.214', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388428402),
(255, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fpetli', '/catalog/zamki', '86.57.191.214', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388428405),
(256, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fzamki', '/catalog/zaschelki', '86.57.191.214', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388428407),
(257, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fzaschelki', '/catalog/yaschiki-pochtovye', '86.57.191.214', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388428410),
(258, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fyaschiki-pochtovye', '/catalog/yaschiki-pochtovye', '86.57.191.214', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388428414),
(259, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fyaschiki-pochtovye', '/catalog/ogranichiteli-dvernye', '86.57.191.214', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388428418),
(260, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fogranichiteli-dvernye', '/catalog/cilindry', '86.57.191.214', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388428421),
(261, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fcilindry', '/catalog/stuchalki', '86.57.191.214', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388428423),
(262, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fstuchalki', 'Главная', '86.57.191.214', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388428426),
(263, 'http%3A%2F%2Fdverfurnitura.by%2F', '/brands', '86.57.191.214', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388428429),
(264, 'http%3A%2F%2Fdverfurnitura.by%2Fbrands', '/articles', '86.57.191.214', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388428432),
(265, 'http%3A%2F%2Fdverfurnitura.by%2Farticles', '/contacts', '86.57.191.214', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388428435),
(266, 'http%3A%2F%2Fdverfurnitura.by%2Fcontacts', 'Главная', '86.57.191.214', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388428437),
(267, 'http%3A%2F%2Fdverfurnitura.by%2F', 'Главная', '86.57.191.214', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388428447),
(268, 'http%3A%2F%2Fdverfurnitura.by%2F', '/catalog/ruchki', '86.57.191.214', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388428450),
(269, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/ruchki/na-rozetke-klassika-i-modern', '86.57.191.214', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388428455),
(270, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki%2Fna-rozetke-klassika-i-modern', 'Главная', '86.57.191.214', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388428458),
(271, 'http%3A%2F%2Fdverfurnitura.by%2Fbrands', '/catalog/ruchki', '86.57.189.134', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388731869),
(272, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', 'Главная', '86.57.189.134', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388731903),
(273, 'http%3A%2F%2Fdverfurnitura.by%2F', '/catalog/zamki', '86.57.189.134', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388731905),
(274, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fzamki', '/catalog/ruchki', '86.57.189.134', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388731909),
(275, 'прямая ссылка', 'Главная', '37.17.112.246', 'Mozilla/5.0 (iPhone; CPU iPhone OS 6_1_3 like Mac OS X) AppleWebKit/536.26 (KHTML, like Gecko) Version/6.0 Mobile/10B329 Safari/8536.25', 1388769929),
(276, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fzamki', '/catalog/ruchki', '86.57.185.6', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388822915),
(277, 'прямая ссылка', 'Главная', '86.57.185.6', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388829999),
(278, 'http%3A%2F%2Fdverfurnitura.by%2F', '/catalog/stuchalki', '86.57.185.6', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388830124),
(279, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fstuchalki', '/catalog/ruchki', '86.57.185.6', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388830134),
(280, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/petli', '86.57.185.6', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388830137),
(281, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fpetli', '/catalog/zamki', '86.57.185.6', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388830139),
(282, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fzamki', '/catalog/zaschelki', '86.57.185.6', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388830141),
(283, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fzamki', '/catalog/zaschelki', '86.57.185.6', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388830212),
(284, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fzaschelki', '/catalog/ruchki', '86.57.185.6', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388830216),
(285, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fzaschelki', '/catalog/ruchki', '86.57.185.6', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388830220),
(286, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fzaschelki', '/catalog/ruchki', '86.57.185.6', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388830244),
(287, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fzaschelki', '/catalog/ruchki', '86.57.185.6', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388830246),
(288, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fzaschelki', '/catalog/ruchki', '86.57.185.6', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388830247),
(289, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fzaschelki', '/catalog/ruchki', '86.57.185.6', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388830257),
(290, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fzaschelki', '/catalog/ruchki', '86.57.185.6', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388830321),
(291, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fzaschelki', '/catalog/ruchki', '86.57.185.6', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388830330),
(292, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/ruchki/na-rozetke-klassika-i-modern', '86.57.185.6', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388830334),
(293, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki%2Fna-rozetke-klassika-i-modern', '/catalog/petli/tarcevye', '86.57.185.6', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388830339),
(294, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fpetli%2Ftarcevye', '/brands', '86.57.185.6', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388830350),
(295, 'http%3A%2F%2Fdverfurnitura.by%2Fbrands', '/articles', '86.57.185.6', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388830352),
(296, 'http%3A%2F%2Fdverfurnitura.by%2Farticles', '/contacts', '86.57.185.6', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388830354),
(297, 'прямая ссылка', 'Главная', '37.17.112.246', 'Mozilla/5.0 (iPhone; CPU iPhone OS 6_1_3 like Mac OS X) AppleWebKit/536.26 (KHTML, like Gecko) Version/6.0 Mobile/10B329 Safari/8536.25', 1388929391),
(298, 'прямая ссылка', 'Главная', '217.69.133.169', 'Mozilla/5.0 (X11; Linux x86_64; rv:18.0) Gecko/20100101 Firefox/18.0', 1389326802),
(299, 'прямая ссылка', 'Главная', '93.84.12.120', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.72 Safari/537.36', 1389360902),
(300, 'http%3A%2F%2Fdverfurnitura.by%2F', '/catalog/ruchki', '93.84.12.120', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.72 Safari/537.36', 1389360909),
(301, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/petli', '93.84.12.120', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.72 Safari/537.36', 1389360915),
(302, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fpetli', '/catalog/zamki', '93.84.12.120', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.72 Safari/537.36', 1389360917),
(303, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fzamki', '/catalog/zaschelki', '93.84.12.120', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.72 Safari/537.36', 1389360922),
(304, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fzaschelki', '/catalog/yaschiki-pochtovye', '93.84.12.120', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.72 Safari/537.36', 1389360925),
(305, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fyaschiki-pochtovye', '/catalog/ogranichiteli-dvernye', '93.84.12.120', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.72 Safari/537.36', 1389360927),
(306, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fogranichiteli-dvernye', '/catalog/cilindry', '93.84.12.120', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.72 Safari/537.36', 1389360929),
(307, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fcilindry', '/catalog/stuchalki', '93.84.12.120', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.72 Safari/537.36', 1389360932),
(308, 'прямая ссылка', 'Главная', '178.124.110.25', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1389364947),
(309, 'http%3A%2F%2Fdverfurnitura.by%2F', '/catalog/ruchki/na-rozetke-klassika-i-modern', '178.124.110.25', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1389365121),
(310, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki%2Fna-rozetke-klassika-i-modern', '/catalog/ruchki/na-rozetke-klassika-i-modern', '178.124.110.25', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1389365124),
(311, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki%2Fna-rozetke-klassika-i-modern', '/catalog/ruchki', '178.124.110.25', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1389365126),
(312, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/ruchki/na-rozetke-klassika-i-modern', '178.124.110.25', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1389365129),
(313, 'прямая ссылка', 'Главная', '37.17.115.137', 'Mozilla/5.0 (iPhone; CPU iPhone OS 6_1_3 like Mac OS X) AppleWebKit/536.26 (KHTML, like Gecko) Version/6.0 Mobile/10B329 Safari/8536.25', 1389420990),
(314, 'прямая ссылка', 'Главная', '37.17.115.137', 'Mozilla/5.0 (iPhone; CPU iPhone OS 6_1_3 like Mac OS X) AppleWebKit/536.26 (KHTML, like Gecko) Version/6.0 Mobile/10B329 Safari/8536.25', 1389420991),
(315, 'прямая ссылка', 'Главная', '93.125.116.249', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.72 Safari/537.36', 1389597582),
(316, 'http%3A%2F%2Fdverfurnitura.by%2F', '/catalog/ruchki', '93.125.116.249', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.72 Safari/537.36', 1389597708),
(317, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', 'Главная', '93.125.116.249', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.72 Safari/537.36', 1389597712),
(318, 'http%3A%2F%2Fdverfurnitura.by%2F', '/brands', '93.125.116.249', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.72 Safari/537.36', 1389597768),
(319, 'http%3A%2F%2Fdverfurnitura.by%2Fbrands', 'Главная', '93.125.116.249', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.72 Safari/537.36', 1389599416),
(320, 'прямая ссылка', 'Главная', '178.124.110.217', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1389602851),
(321, 'http%3A%2F%2Fdverfurnitura.by%2F', '/catalog/zamki', '178.124.110.217', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1389610666),
(322, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fzamki', '/catalog/zamki/vreznye', '178.124.110.217', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1389610671),
(323, 'прямая ссылка', 'Главная', '93.125.62.212', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.72 Safari/537.36', 1389791916),
(324, 'http%3A%2F%2Fdverfurnitura.by%2F', '/brands', '93.125.62.212', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.72 Safari/537.36', 1389791922),
(325, 'http%3A%2F%2Fdverfurnitura.by%2Fbrands', '/catalog/ruchki', '93.125.62.212', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.72 Safari/537.36', 1389791927),
(326, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/ruchki/na-rozetke-klassika-i-modern', '93.125.62.212', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.72 Safari/537.36', 1389791929),
(327, 'прямая ссылка', 'Главная', '93.125.63.186', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390376000),
(328, 'http%3A%2F%2Fdverfurnitura.by%2F', '/catalog/ruchki', '93.125.63.186', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390376007),
(329, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/brands', '93.125.63.186', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390376011),
(330, 'http%3A%2F%2Fdverfurnitura.by%2Fbrands', 'Главная', '93.125.63.186', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390376014),
(331, 'прямая ссылка', 'Главная', '217.69.133.169', 'Mozilla/5.0 (X11; Linux x86_64; rv:18.0) Gecko/20100101 Firefox/18.0', 1390460289),
(332, 'прямая ссылка', 'Главная', '46.53.166.164', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390482211),
(333, 'прямая ссылка', 'Главная', '46.53.166.164', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390483088),
(334, 'http%3A%2F%2Fdverfurnitura.by%2F', '/catalog/ruchki', '46.53.166.164', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390483101),
(335, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/petli', '46.53.166.164', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390483109),
(336, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fpetli', '/catalog/petli/universal-nye', '46.53.166.164', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390483115),
(337, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fpetli%2Funiversal-nye', '/catalog/zaschelki', '46.53.166.164', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390483118),
(338, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fzaschelki', '/catalog/zaschelki/mezhkomnatnye', '46.53.166.164', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390483127),
(339, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fzaschelki%2Fmezhkomnatnye', '/catalog/yaschiki-pochtovye', '46.53.166.164', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390483131),
(340, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fyaschiki-pochtovye', '/catalog/ogranichiteli-dvernye', '46.53.166.164', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390483134),
(341, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fogranichiteli-dvernye', 'Главная', '46.53.166.164', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390483139),
(342, 'http%3A%2F%2Fdverfurnitura.by%2F', '/catalog/ruchki', '46.53.166.164', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390484263),
(343, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', 'Главная', '46.53.166.164', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390484265),
(344, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', 'Главная', '178.124.202.144', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390544076),
(345, 'прямая ссылка', 'Главная', '178.124.202.206', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390816014),
(346, 'http%3A%2F%2Fdverfurnitura.by%2F', 'Главная', '178.124.202.206', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390816022),
(347, 'http%3A%2F%2Fdverfurnitura.by%2F', '/brands', '178.124.202.206', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390816024),
(348, 'http%3A%2F%2Fdverfurnitura.by%2Fbrands', '/articles', '178.124.202.206', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390816030),
(349, 'http%3A%2F%2Fdverfurnitura.by%2Farticles', '/contacts', '178.124.202.206', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390816034),
(350, 'http%3A%2F%2Fdverfurnitura.by%2Fcontacts', '/catalog/ruchki', '178.124.202.206', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390816035),
(351, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/petli', '178.124.202.206', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390816062),
(352, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fpetli', '/catalog/zamki', '178.124.202.206', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390816065),
(353, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fzamki', '/catalog/zaschelki', '178.124.202.206', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390816068),
(354, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fzaschelki', '/catalog/yaschiki-pochtovye', '178.124.202.206', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390816069),
(355, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fyaschiki-pochtovye', '/catalog/ogranichiteli-dvernye', '178.124.202.206', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390816071),
(356, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fogranichiteli-dvernye', '/catalog/ruchki', '178.124.202.206', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390816075),
(357, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/petli', '178.124.202.206', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390816160),
(358, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fpetli', '/catalog/zamki', '178.124.202.206', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390816165),
(359, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fzamki', '/catalog/zaschelki', '178.124.202.206', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390816168),
(360, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fzaschelki', '/catalog/yaschiki-pochtovye', '178.124.202.206', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390816172),
(361, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fyaschiki-pochtovye', '/catalog/zaschelki', '178.124.202.206', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390816174),
(362, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fzaschelki', '/catalog/yaschiki-pochtovye', '178.124.202.206', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390816179),
(363, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fyaschiki-pochtovye', '/catalog/yaschiki-pochtovye', '178.124.202.206', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390816184),
(364, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fyaschiki-pochtovye', '/catalog/ogranichiteli-dvernye', '178.124.202.206', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390816187),
(365, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fogranichiteli-dvernye', '/catalog/cilindry', '178.124.202.206', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390816189),
(366, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fcilindry', '/catalog/stuchalki', '178.124.202.206', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390816191),
(367, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fstuchalki', '/catalog/ruchki/na-rozetke-klassika-i-modern', '178.124.202.206', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390816195),
(368, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki%2Fna-rozetke-klassika-i-modern', '/catalog/ruchki', '178.124.202.206', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390816203),
(369, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/ruchki/na-rozetke-klassika-i-modern', '178.124.202.206', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390816208),
(370, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki%2Fna-rozetke-klassika-i-modern', '/catalog/ruchki/na-rozetke-klassika-i-modern', '178.124.202.206', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390816321),
(371, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki%2Fna-rozetke-klassika-i-modern', '/catalog/ruchki', '178.124.202.206', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390816322),
(372, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/ruchki/na-rozetke-klassika-i-modern', '178.124.202.206', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390816324),
(373, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki%2Fna-rozetke-klassika-i-modern', '/catalog/ruchki', '178.124.202.206', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390816344),
(374, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/ruchki/na-rozetke-klassika-i-modern', '178.124.202.206', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390816348),
(375, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki%2Fna-rozetke-klassika-i-modern', '/catalog/ruchki', '178.124.202.206', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390816407),
(376, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/ruchki/na-rozetke-klassika-i-modern', '178.124.202.206', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390816414),
(377, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki%2Fna-rozetke-klassika-i-modern', '/catalog/ruchki', '178.124.202.206', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390816459),
(378, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/ruchki/na-rozetke-klassika-i-modern', '178.124.202.206', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390816519),
(379, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki%2Fna-rozetke-klassika-i-modern', '/catalog/petli', '178.124.202.206', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390816540),
(380, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fpetli', '/catalog/ruchki', '178.124.202.206', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390816548),
(381, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/petli', '178.124.202.206', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390816559),
(382, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fpetli', '/catalog/petli/universal-nye', '178.124.202.206', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390816571),
(383, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fpetli%2Funiversal-nye', '/catalog/petli', '178.124.202.206', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390816583),
(384, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fpetli', '/catalog/petli/universal-nye', '178.124.202.206', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390816592),
(385, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fpetli%2Funiversal-nye', '/catalog/petli', '178.124.202.206', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390816606),
(386, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fpetli', '/catalog/petli/universal-nye', '178.124.202.206', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390816607),
(387, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fpetli%2Funiversal-nye', '/catalog/zamki', '178.124.202.206', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390816624),
(388, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fzamki', '/catalog/zaschelki', '178.124.202.206', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390816626),
(389, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fzaschelki', '/contacts', '178.124.202.206', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390816666),
(390, 'http%3A%2F%2Fdverfurnitura.by%2Fcontacts', 'Главная', '178.124.202.206', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390816757),
(391, 'http%3A%2F%2Fdverfurnitura.by%2F', 'Главная', '178.124.202.206', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390816781),
(392, 'http%3A%2F%2Fdverfurnitura.by%2F', '/catalog/stuchalki', '178.124.202.206', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390816952),
(393, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fstuchalki', '/catalog/zamki', '178.124.202.206', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390816963),
(394, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fzamki', '/catalog/zaschelki', '178.124.202.206', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390816965),
(395, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fzaschelki', '/catalog/yaschiki-pochtovye', '178.124.202.206', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390816966),
(396, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fyaschiki-pochtovye', '/catalog/zaschelki', '178.124.202.206', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390816978),
(397, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fzaschelki', '/catalog/zamki', '178.124.202.206', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390816981),
(398, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fzamki', '/catalog/yaschiki-pochtovye', '178.124.202.206', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390816987),
(399, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fyaschiki-pochtovye', '/catalog/ogranichiteli-dvernye', '178.124.202.206', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390817010),
(400, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fogranichiteli-dvernye', '/catalog/cilindry', '178.124.202.206', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390817024),
(401, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fcilindry', '/catalog/stuchalki', '178.124.202.206', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390817033),
(402, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fstuchalki', '/brands', '178.124.202.206', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390817072),
(403, 'http%3A%2F%2Fdverfurnitura.by%2Fbrands', '/brands/testovyy-proizvoditel', '178.124.202.206', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390817108),
(404, 'http%3A%2F%2Fdverfurnitura.by%2Fbrands%2Ftestovyy-proizvoditel', 'Главная', '178.124.202.206', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390817580),
(405, 'http%3A%2F%2Fdverfurnitura.by%2F', '/catalog/ruchki', '178.124.202.206', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390817584),
(406, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/ruchki/na-rozetke-klassika-i-modern', '178.124.202.206', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390817590),
(407, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki%2Fna-rozetke-klassika-i-modern', '/catalog/ruchki', '178.124.202.206', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390817617),
(408, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', 'Главная', '178.124.202.206', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390817664),
(409, 'http%3A%2F%2Fdverfurnitura.by%2F', '/catalog/ruchki', '178.124.202.206', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390817832),
(410, 'http%3A%2F%2Fdverfurnitura.by%2F', '/catalog/ruchki', '178.124.202.206', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390817834),
(411, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/ruchki/na-rozetke-klassika-i-modern', '178.124.202.206', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390817837),
(412, 'прямая ссылка', 'Главная', '178.124.202.206', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.71 Safari/537.36', 1390818673),
(413, 'http%3A%2F%2Fdverfurnitura.by%2F', '/catalog/ruchki', '178.124.202.206', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.71 Safari/537.36', 1390818682),
(414, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/ruchki/na-rozetke-klassika-i-modern', '178.124.202.206', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.71 Safari/537.36', 1390818684),
(415, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki%2Fna-rozetke-klassika-i-modern', '/catalog/petli', '178.124.202.206', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.71 Safari/537.36', 1390818688),
(416, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fpetli', '/catalog/petli/universal-nye', '178.124.202.206', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.71 Safari/537.36', 1390818690),
(417, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki%2Fna-rozetke-klassika-i-modern', '/catalog/stuchalki', '178.124.202.206', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390820835),
(418, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fstuchalki', '/catalog/zamki', '178.124.202.206', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390821438),
(419, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fzamki', '/catalog/petli', '178.124.202.206', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390821440),
(420, 'прямая ссылка', 'Главная', '93.125.15.98', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390916555),
(421, 'http%3A%2F%2Fdverfurnitura.by%2F', '/brands', '93.125.15.98', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390916574),
(422, 'http%3A%2F%2Fdverfurnitura.by%2Fbrands', '/catalog/ruchki', '93.125.15.98', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390916577),
(423, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', 'Главная', '93.125.15.98', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390916582),
(424, 'http%3A%2F%2Fdverfurnitura.by%2F', '/catalog/ruchki', '93.125.15.98', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390917190),
(425, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/ruchki', '93.125.15.98', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390917482),
(426, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/ruchki', '93.125.15.98', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390917512),
(427, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/petli', '93.125.15.98', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390917523),
(428, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fpetli', 'Главная', '93.125.15.98', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390917527),
(429, 'http%3A%2F%2Fdverfurnitura.by%2F', 'Главная', '93.125.15.98', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390917531),
(430, 'прямая ссылка', 'Главная', '93.125.62.127', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.102 Safari/537.36', 1391085063),
(431, 'прямая ссылка', 'Главная', '93.125.62.127', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.102 Safari/537.36', 1391085064),
(432, 'http%3A%2F%2Fdverfurnitura.by%2F', '/catalog/ruchki', '93.125.62.127', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.102 Safari/537.36', 1391085078),
(433, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/ruchki/na-rozetke-klassika-i-modern', '93.125.62.127', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.102 Safari/537.36', 1391085080),
(434, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki%2Fna-rozetke-klassika-i-modern', '/brands', '93.125.62.127', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.102 Safari/537.36', 1391085083),
(435, 'прямая ссылка', 'Главная', '178.124.200.30', 'Opera/9.80 (Windows NT 6.1; WOW64) Presto/2.12.388 Version/12.16', 1391087902),
(436, 'http%3A%2F%2Fdverfurnitura.by%2F', '/catalog/petli', '178.124.200.30', 'Opera/9.80 (Windows NT 6.1; WOW64) Presto/2.12.388 Version/12.16', 1391087909),
(437, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fpetli', '/articles', '178.124.200.30', 'Opera/9.80 (Windows NT 6.1; WOW64) Presto/2.12.388 Version/12.16', 1391087932),
(438, 'http%3A%2F%2Fdverfurnitura.by%2Farticles', '/contacts', '178.124.200.30', 'Opera/9.80 (Windows NT 6.1; WOW64) Presto/2.12.388 Version/12.16', 1391087934),
(439, 'http%3A%2F%2Fdverfurnitura.by%2Fcontacts', 'Главная', '178.124.200.30', 'Opera/9.80 (Windows NT 6.1; WOW64) Presto/2.12.388 Version/12.16', 1391087935),
(440, 'http%3A%2F%2Fdverfurnitura.by%2F', '/brands', '178.124.200.30', 'Opera/9.80 (Windows NT 6.1; WOW64) Presto/2.12.388 Version/12.16', 1391087937),
(441, 'http%3A%2F%2Fdverfurnitura.by%2Fbrands', '/catalog/ruchki', '93.125.62.127', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.102 Safari/537.36', 1391088593),
(442, 'прямая ссылка', 'Главная', '178.124.108.41', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391092091),
(443, 'http%3A%2F%2Fdverfurnitura.by%2F', '/brands', '178.124.108.41', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391092110),
(444, 'http%3A%2F%2Fdverfurnitura.by%2Fbrands', '/catalog/ruchki', '178.124.108.41', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391092321),
(445, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/ruchki/na-rozetke-klassika-i-modern', '178.124.108.41', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391092398),
(446, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki%2Fna-rozetke-klassika-i-modern', 'Главная', '178.124.108.41', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391092506),
(447, 'http%3A%2F%2Fdverfurnitura.by%2F', '/articles', '178.124.108.41', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391092511),
(448, 'http%3A%2F%2Fdverfurnitura.by%2Farticles', '/contacts', '178.124.108.41', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391092513),
(449, 'http%3A%2F%2Fdverfurnitura.by%2Fcontacts', '/brands', '178.124.108.41', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391092522),
(450, 'http%3A%2F%2Fdverfurnitura.by%2Fbrands', '/catalog/ruchki', '178.124.108.41', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391092791),
(451, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/ruchki/na-rozetke-klassika-i-modern', '178.124.108.41', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391095736),
(452, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki%2Fna-rozetke-klassika-i-modern', '/catalog/ruchki', '178.124.108.41', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391095738),
(453, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/petli', '178.124.108.41', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391095739),
(454, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fpetli', '/catalog/zamki', '178.124.108.41', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391095742),
(455, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fzamki', '/catalog/zaschelki', '178.124.108.41', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391095747),
(456, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fzaschelki', '/catalog/yaschiki-pochtovye', '178.124.108.41', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391095748),
(457, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fyaschiki-pochtovye', '/catalog/zaschelki', '178.124.108.41', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391095750),
(458, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fzaschelki', '/catalog/petli', '178.124.108.41', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391095761),
(459, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fpetli', '/catalog/ruchki/knob', '178.124.108.41', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391095770),
(460, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki%2Fknob', '/catalog/ruchki/na-rozetke-klassika-i-modern', '178.124.108.41', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391095778);
INSERT INTO `stats` (`id`, `from`, `to`, `ip`, `browser`, `date`) VALUES
(461, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki%2Fna-rozetke-klassika-i-modern', '/catalog/ruchki', '178.124.108.41', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391095780),
(462, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/zaschelki', '178.124.108.41', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391095785),
(463, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fzaschelki', '/catalog/zaschelki', '178.124.108.41', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391095786),
(464, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fzaschelki', '/catalog/yaschiki-pochtovye', '178.124.108.41', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391095790),
(465, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fyaschiki-pochtovye', '/catalog/ogranichiteli-dvernye', '178.124.108.41', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391095794),
(466, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fogranichiteli-dvernye', '/catalog/cilindry', '178.124.108.41', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391095796),
(467, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fcilindry', '/catalog/stuchalki', '178.124.108.41', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391095797),
(468, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fstuchalki', '/catalog/yaschiki-pochtovye', '178.124.108.41', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391095825),
(469, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fyaschiki-pochtovye', '/catalog/ogranichiteli-dvernye', '178.124.108.41', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391095837),
(470, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fogranichiteli-dvernye', '/catalog/cilindry', '178.124.108.41', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391095844),
(471, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fcilindry', '/catalog/ruchki', '178.124.108.41', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391095851),
(472, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/petli', '178.124.108.41', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391095861),
(473, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fpetli', '/catalog/zamki', '178.124.108.41', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391095865),
(474, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fzamki', '/catalog/ruchki', '178.124.108.41', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391095885),
(475, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/petli', '178.124.108.41', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391095896),
(476, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fpetli', '/catalog/zaschelki', '178.124.108.41', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391095905),
(477, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fzaschelki', '/catalog/ruchki', '178.124.108.41', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391095926),
(478, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/petli', '178.124.108.41', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391095933),
(479, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/petli', '178.124.108.41', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391096071),
(480, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fpetli', '/catalog/ruchki', '178.124.108.41', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391096127),
(481, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/ruchki', '178.124.108.41', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391096130),
(482, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/ruchki/na-rozetke-klassika-i-modern', '178.124.108.41', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391096132),
(483, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki%2Fna-rozetke-klassika-i-modern', '/catalog/petli', '178.124.108.41', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391096161),
(484, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fpetli', '/catalog/petli/universal-nye', '178.124.108.41', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391096165),
(485, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fpetli%2Funiversal-nye', '/catalog/ruchki', '178.124.108.41', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391096174),
(486, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/ruchki/na-rozetke-klassika-i-modern', '178.124.108.41', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391096178),
(487, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/ruchki/na-rozetke-klassika-i-modern', '178.124.108.41', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391096179),
(488, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki%2Fna-rozetke-klassika-i-modern', '/catalog/ruchki/na-rozetke-klassika-i-modern', '178.124.108.41', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391096182),
(489, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki%2Fna-rozetke-klassika-i-modern', '/catalog/ruchki/na-planke-klassika-i-modern', '178.124.108.41', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391096185),
(490, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki%2Fna-planke-klassika-i-modern', '/catalog/ruchki', '178.124.108.41', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391096224),
(491, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/brands', '178.124.108.41', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391096405),
(492, 'http%3A%2F%2Fdverfurnitura.by%2Fbrands', '/catalog/ruchki/na-rozetke-klassika-i-modern', '178.124.108.41', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391096518),
(493, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki%2Fna-rozetke-klassika-i-modern', '/catalog/ruchki', '178.124.108.41', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391096521),
(494, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki%2Fna-rozetke-klassika-i-modern', '/catalog/ruchki', '178.124.108.41', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391096522),
(495, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki%2Fna-rozetke-klassika-i-modern', '/catalog/ruchki', '178.124.108.41', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391096522),
(496, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki%2Fna-rozetke-klassika-i-modern', '/catalog/ruchki', '178.124.108.41', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391096522),
(497, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/ruchki', '178.124.108.41', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391096523),
(498, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', '/catalog/stuchalki', '178.124.108.41', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391096546),
(499, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fstuchalki', '/catalog/ruchki/na-rozetke-klassika-i-modern', '178.124.108.41', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391096596),
(500, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki%2Fna-rozetke-klassika-i-modern', '/catalog/ruchki/na-planke-klassika-i-modern', '178.124.108.41', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391096610),
(501, 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki%2Fna-planke-klassika-i-modern', '/brands', '178.124.108.41', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391096660),
(502, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands', '/catalog/testovaya-kategoriya', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391102655),
(503, 'http%3A%2F%2Fdverfurnitura.local%2Fcatalog%2Ftestovaya-kategoriya', '/catalog/ruchki', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391102658),
(504, 'http%3A%2F%2Fdverfurnitura.local%2Fcatalog%2Ftestovaya-kategoriya', '/catalog/ruchki', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391103668),
(505, 'http%3A%2F%2Fdverfurnitura.local%2Fcatalog%2Fruchki', '/catalog/ruchki', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391103689),
(506, 'http%3A%2F%2Fdverfurnitura.local%2Fcatalog%2Fruchki', '/catalog/petli', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391103692),
(507, 'http%3A%2F%2Fdverfurnitura.local%2Fcatalog%2Fruchki', '/catalog/petli', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391103749),
(508, 'http%3A%2F%2Fdverfurnitura.local%2Fcatalog%2Fpetli', '/catalog/ruchki', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391103751),
(509, 'http%3A%2F%2Fdverfurnitura.local%2Fcatalog%2Fruchki', 'Главная', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391103777),
(510, 'http%3A%2F%2Fdverfurnitura.local%2F', '/catalog/ruchki/na-rozetke-klassika-i-modern', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391103783),
(511, 'http%3A%2F%2Fdverfurnitura.local%2Fcatalog%2Fruchki%2Fna-rozetke-klassika-i-modern', '/catalog/zaschelki', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391103790),
(512, 'http%3A%2F%2Fdverfurnitura.local%2Fcatalog%2Fzaschelki', '/catalog/zaschelki/magnitnye', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391103794),
(513, 'http%3A%2F%2Fdverfurnitura.local%2Fcatalog%2Fzaschelki%2Fmagnitnye', '/brands', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391103797),
(514, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands', 'Главная', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391103798),
(515, 'http%3A%2F%2Fdverfurnitura.local%2F', '/articles', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391103799),
(516, 'http%3A%2F%2Fdverfurnitura.local%2Farticles', '/contacts', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391103801),
(517, 'http%3A%2F%2Fdverfurnitura.local%2Farticles', '/contacts', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391103922),
(518, 'http%3A%2F%2Fdverfurnitura.local%2Fcontacts', '/catalog/ruchki', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391103924),
(519, 'http%3A%2F%2Fdverfurnitura.local%2Farticles', '/contacts', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391103929),
(520, 'http%3A%2F%2Fdverfurnitura.local%2Fcontacts', '/catalog/petli', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391103932),
(521, 'http%3A%2F%2Fdverfurnitura.local%2Farticles', '/contacts', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391103934),
(522, 'http%3A%2F%2Fdverfurnitura.local%2Farticles', '/contacts', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391103941),
(523, 'http%3A%2F%2Fdverfurnitura.local%2Fcontacts', '/catalog/ruchki', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391103947),
(524, 'http%3A%2F%2Fdverfurnitura.local%2Fcatalog%2Fruchki', '/catalog/yaschiki-pochtovye', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391103950),
(525, 'http%3A%2F%2Fdverfurnitura.local%2Fcatalog%2Fruchki', '/catalog/yaschiki-pochtovye', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391104017),
(526, 'http%3A%2F%2Fdverfurnitura.local%2Fcatalog%2Fyaschiki-pochtovye', '/catalog/ruchki/na-rozetke-klassika-i-modern', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391104019),
(527, 'http%3A%2F%2Fdverfurnitura.local%2Fcatalog%2Fruchki%2Fna-rozetke-klassika-i-modern', '/catalog/zaschelki', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391104022),
(528, 'http%3A%2F%2Fdverfurnitura.local%2Fcatalog%2Fruchki%2Fna-rozetke-klassika-i-modern', '/catalog/zaschelki', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391104117),
(529, 'http%3A%2F%2Fdverfurnitura.local%2Fcatalog%2Fzaschelki', '/catalog/ruchki', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391104120),
(530, 'http%3A%2F%2Fdverfurnitura.local%2Fcatalog%2Fzaschelki', '/catalog/ruchki', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391104458),
(531, 'http%3A%2F%2Fdverfurnitura.local%2Fcatalog%2Fzaschelki', '/catalog/ruchki', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391104525),
(532, 'http%3A%2F%2Fdverfurnitura.local%2Fcatalog%2Fzaschelki', '/catalog/ruchki', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391104582),
(533, 'прямая ссылка', 'Главная', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391104591),
(534, 'прямая ссылка', 'Главная', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391104602),
(535, 'http%3A%2F%2Fdverfurnitura.local%2F', '/catalog/ruchki', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391104618),
(536, 'http%3A%2F%2Fdverfurnitura.local%2Fcatalog%2Fruchki', '/catalog/petli', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391104635),
(537, 'http%3A%2F%2Fdverfurnitura.local%2Fcatalog%2Fpetli', '/catalog/yaschiki-pochtovye', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391104648),
(538, 'http%3A%2F%2Fdverfurnitura.local%2Fcatalog%2Fpetli', '/catalog/yaschiki-pochtovye', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391104798),
(539, 'http%3A%2F%2Fdverfurnitura.local%2Fcatalog%2Fyaschiki-pochtovye', '/catalog/petli', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391104812),
(540, 'http%3A%2F%2Fdverfurnitura.local%2Fcatalog%2Fpetli', '/catalog/cilindry', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391104814),
(541, 'http%3A%2F%2Fdverfurnitura.local%2Fcatalog%2Fpetli', '/catalog/cilindry', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391104845),
(542, 'http%3A%2F%2Fdverfurnitura.local%2Fcatalog%2Fpetli', '/catalog/cilindry', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391104855),
(543, 'http%3A%2F%2Fdverfurnitura.local%2Fcatalog%2Fpetli', '/catalog/cilindry', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391104975),
(544, 'http%3A%2F%2Fdverfurnitura.local%2Fcatalog%2Fcilindry', '/catalog/ruchki', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391104979),
(545, 'http%3A%2F%2Fdverfurnitura.local%2Fcatalog%2Fruchki', '/catalog/petli', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391104981),
(546, 'http%3A%2F%2Fdverfurnitura.local%2Fcatalog%2Fpetli', '/catalog/zamki', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391104982),
(547, 'http%3A%2F%2Fdverfurnitura.local%2Fcatalog%2Fzamki', '/catalog/zaschelki', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391104984),
(548, 'http%3A%2F%2Fdverfurnitura.local%2Fcatalog%2Fzaschelki', '/catalog/yaschiki-pochtovye', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391104985),
(549, 'http%3A%2F%2Fdverfurnitura.local%2Fcatalog%2Fyaschiki-pochtovye', '/catalog/ogranichiteli-dvernye', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391104987),
(550, 'http%3A%2F%2Fdverfurnitura.local%2Fcatalog%2Fogranichiteli-dvernye', '/catalog/cilindry', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391104989),
(551, 'http%3A%2F%2Fdverfurnitura.local%2Fcatalog%2Fcilindry', '/catalog/stuchalki', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391104990),
(552, 'http%3A%2F%2Fdverfurnitura.local%2Fcatalog%2Fstuchalki', '/catalog/ruchki', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391104991),
(553, 'http%3A%2F%2Fdverfurnitura.local%2Fcatalog%2Fruchki', '/catalog/ruchki/na-rozetke-klassika-i-modern', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391105008),
(554, 'http%3A%2F%2Fdverfurnitura.local%2Fcatalog%2Fstuchalki', '/catalog/ruchki', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391105011),
(555, 'http%3A%2F%2Fdverfurnitura.local%2Fcatalog%2Fstuchalki', '/catalog/ruchki', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391105165),
(556, 'http%3A%2F%2Fdverfurnitura.local%2Fcatalog%2Fruchki', '/catalog/petli', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391105168),
(557, 'http%3A%2F%2Fdverfurnitura.local%2Fcatalog%2Fpetli', '/catalog/zamki', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391105169),
(558, 'http%3A%2F%2Fdverfurnitura.local%2Fcatalog%2Fzamki', '/catalog/yaschiki-pochtovye', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391105171),
(559, 'http%3A%2F%2Fdverfurnitura.local%2Fcatalog%2Fyaschiki-pochtovye', '/catalog/ogranichiteli-dvernye', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391105172),
(560, 'http%3A%2F%2Fdverfurnitura.local%2Fcatalog%2Fogranichiteli-dvernye', '/catalog/cilindry', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391105174),
(561, 'http%3A%2F%2Fdverfurnitura.local%2Fcatalog%2Fcilindry', '/catalog/stuchalki', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391105175),
(562, 'http%3A%2F%2Fdverfurnitura.local%2Fcatalog%2Fstuchalki', '/catalog/ruchki', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391105179),
(563, 'http%3A%2F%2Fdverfurnitura.local%2Fcatalog%2Fstuchalki', '/catalog/ruchki', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391105522),
(564, 'http%3A%2F%2Fdverfurnitura.local%2Fcatalog%2Fruchki', '/catalog/ruchki/na-rozetke-klassika-i-modern', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391106403),
(565, 'http%3A%2F%2Fdverfurnitura.local%2Fcatalog%2Fruchki%2Fna-rozetke-klassika-i-modern', '/brands', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391106407),
(566, 'http%3A%2F%2Fdverfurnitura.local%2Fcatalog%2Fruchki%2Fna-rozetke-klassika-i-modern', '/brands', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391106823),
(567, 'http%3A%2F%2Fdverfurnitura.local%2Fcatalog%2Fruchki%2Fna-rozetke-klassika-i-modern', '/brands', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391106902),
(568, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands', '/brands/testovyy-proizvoditel-1', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391106910),
(569, 'http%3A%2F%2Fdverfurnitura.local%2Fcatalog%2Fruchki%2Fna-rozetke-klassika-i-modern', '/brands', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391106914),
(570, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands', '/brands/testovyy-proizvoditel-2', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391106916),
(571, 'http%3A%2F%2Fdverfurnitura.local%2Fcatalog%2Fruchki%2Fna-rozetke-klassika-i-modern', '/brands', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391106919),
(572, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands', '/brands/testovyy-proizvoditel-1', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391106921),
(573, 'http%3A%2F%2Fdverfurnitura.local%2Fcatalog%2Fruchki%2Fna-rozetke-klassika-i-modern', '/brands', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391106923),
(574, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands', '/brands/testovyy-proizvoditel-2', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391106925),
(575, 'http%3A%2F%2Fdverfurnitura.local%2Fcatalog%2Fruchki%2Fna-rozetke-klassika-i-modern', '/brands', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391106926),
(576, 'http%3A%2F%2Fdverfurnitura.local%2Fcatalog%2Fruchki%2Fna-rozetke-klassika-i-modern', '/brands', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391107008),
(577, 'http%3A%2F%2Fdverfurnitura.local%2Fcatalog%2Fruchki%2Fna-rozetke-klassika-i-modern', '/brands', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391107119),
(578, 'http%3A%2F%2Fdverfurnitura.local%2Fcatalog%2Fruchki%2Fna-rozetke-klassika-i-modern', '/brands', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391107224),
(579, 'http%3A%2F%2Fdverfurnitura.local%2Fcatalog%2Fruchki%2Fna-rozetke-klassika-i-modern', '/brands', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391107244),
(580, 'http%3A%2F%2Fdverfurnitura.local%2Fcatalog%2Fruchki%2Fna-rozetke-klassika-i-modern', '/brands', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391107314),
(581, 'http%3A%2F%2Fdverfurnitura.local%2Fcatalog%2Fruchki%2Fna-rozetke-klassika-i-modern', '/brands', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391107351),
(582, 'http%3A%2F%2Fdverfurnitura.local%2Fcatalog%2Fruchki%2Fna-rozetke-klassika-i-modern', '/brands', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391107397),
(583, 'http%3A%2F%2Fdverfurnitura.local%2Fcatalog%2Fruchki%2Fna-rozetke-klassika-i-modern', '/brands', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391107430),
(584, 'http%3A%2F%2Fdverfurnitura.local%2Fcatalog%2Fruchki%2Fna-rozetke-klassika-i-modern', '/brands', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391107441),
(585, 'http%3A%2F%2Fdverfurnitura.local%2Fcatalog%2Fruchki%2Fna-rozetke-klassika-i-modern', '/brands', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391107469),
(586, 'http%3A%2F%2Fdverfurnitura.local%2Fcatalog%2Fruchki%2Fna-rozetke-klassika-i-modern', '/brands', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391107492),
(587, 'http%3A%2F%2Fdverfurnitura.local%2Fcatalog%2Fruchki%2Fna-rozetke-klassika-i-modern', '/brands', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391107526),
(588, 'http%3A%2F%2Fdverfurnitura.local%2Fcatalog%2Fruchki%2Fna-rozetke-klassika-i-modern', '/brands', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391107550),
(589, 'http%3A%2F%2Fdverfurnitura.local%2Fcatalog%2Fruchki%2Fna-rozetke-klassika-i-modern', '/brands', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391107581),
(590, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands', '/catalog/ruchki', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391107623),
(591, 'http%3A%2F%2Fdverfurnitura.local%2Fcatalog%2Fruchki', '/catalog/ruchki', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391107699),
(592, 'http%3A%2F%2Fdverfurnitura.local%2Fcatalog%2Fruchki', '/catalog/ruchki/na-rozetke-klassika-i-modern', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391107701),
(593, 'http%3A%2F%2Fdverfurnitura.local%2Fcatalog%2Fruchki%2Fna-rozetke-klassika-i-modern', '/catalog/ruchki/na-rozetke-klassika-i-modern', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391107713),
(594, 'http%3A%2F%2Fdverfurnitura.local%2Fcatalog%2Fruchki%2Fna-rozetke-klassika-i-modern', '/catalog/ruchki/na-planke-klassika-i-modern', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391107716),
(595, 'http%3A%2F%2Fdverfurnitura.local%2Fcatalog%2Fruchki%2Fna-planke-klassika-i-modern', '/catalog/ruchki', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391107718),
(596, 'http%3A%2F%2Fdverfurnitura.local%2Fcatalog%2Fruchki', '/catalog/ruchki/na-planke-klassika-i-modern', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391107719),
(597, 'http%3A%2F%2Fdverfurnitura.local%2Fcatalog%2Fruchki%2Fna-planke-klassika-i-modern', '/catalog/ruchki', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391107721),
(598, 'http%3A%2F%2Fdverfurnitura.local%2Fcatalog%2Fruchki', '/catalog/ruchki/skoba-klassika-i-modern', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391107723),
(599, 'http%3A%2F%2Fdverfurnitura.local%2Fcatalog%2Fruchki%2Fna-planke-klassika-i-modern', '/catalog/ruchki', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391107724),
(600, 'http%3A%2F%2Fdverfurnitura.local%2Fcatalog%2Fruchki', '/catalog/ruchki/dlya-razdvizhnyh-dverey', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391107725),
(601, 'http%3A%2F%2Fdverfurnitura.local%2Fcatalog%2Fruchki%2Fna-planke-klassika-i-modern', '/catalog/ruchki', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391107728),
(602, 'http%3A%2F%2Fdverfurnitura.local%2Fcatalog%2Fruchki', '/catalog/ruchki/knob', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391107730),
(603, 'http%3A%2F%2Fdverfurnitura.local%2Fcatalog%2Fruchki%2Fna-planke-klassika-i-modern', '/catalog/ruchki', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391107732),
(604, 'http%3A%2F%2Fdverfurnitura.local%2Fcatalog%2Fruchki', '/brands', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391107734),
(605, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands', '/catalog/ruchki', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391107752),
(606, 'http%3A%2F%2Fdverfurnitura.local%2Fcatalog%2Fruchki', '/brands', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391107766),
(607, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands', '/brands/testovyy-proizvoditel-1', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391107950),
(608, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands', '/brands/testovyy-proizvoditel-1', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391108047),
(609, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands%2Ftestovyy-proizvoditel-1', '/brands', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391108208),
(610, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands%2Ftestovyy-proizvoditel-1', '/brands', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391108229),
(611, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands', 'Главная', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391108239),
(612, 'http%3A%2F%2Fdverfurnitura.local%2F', '/catalog/ruchki', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391108245),
(613, 'http%3A%2F%2Fdverfurnitura.local%2Fcatalog%2Fruchki', '/catalog/ruchki/na-rozetke-klassika-i-modern', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391108251),
(614, 'http%3A%2F%2Fdverfurnitura.local%2Fcatalog%2Fruchki%2Fna-rozetke-klassika-i-modern', '/brands', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391108273),
(615, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands', '/brands/testovyy-proizvoditel-1', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391108277),
(616, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands%2Ftestovyy-proizvoditel-1', '/brands', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391108279),
(617, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands', '/brands/testovyy-proizvoditel-1', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391108303),
(618, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands', '/brands/testovyy-proizvoditel-1', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391108928),
(619, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands', '/brands/testovyy-proizvoditel-1', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391109130),
(620, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands%2Ftestovyy-proizvoditel-1', '/brands', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391109141),
(621, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands', '/brands/testovyy-proizvoditel-2', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391109142),
(622, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands%2Ftestovyy-proizvoditel-2', '/brands', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391109144),
(623, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands', '/brands/testovyy-proizvoditel-1', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391109145),
(624, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands%2Ftestovyy-proizvoditel-1', '/brands', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391109154),
(625, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands', '/brands/testovyy-proizvoditel-1', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391109156),
(626, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands', '/brands/testovyy-proizvoditel-1', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391109220),
(627, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands%2Ftestovyy-proizvoditel-1', '/catalog/ruchki/na-rozetke-klassika-i-modern/testovyy-tovar-1', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391109282),
(628, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands', '/brands/testovyy-proizvoditel-1', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391109284),
(629, 'прямая ссылка', 'Главная', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391176660),
(630, 'http%3A%2F%2Fdverfurnitura.local%2F', '/brands', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391176664),
(631, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands', '/brands/testovyy-proizvoditel-1', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391176668),
(632, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands%2Ftestovyy-proizvoditel-1', 'Главная', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391176689),
(633, 'http%3A%2F%2Fdverfurnitura.local%2F', '/catalog/petli', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391177686),
(634, 'http%3A%2F%2Fdverfurnitura.local%2Fcatalog%2Fpetli', '/catalog/ruchki/knob', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391177789),
(635, 'http%3A%2F%2Fdverfurnitura.local%2Fcatalog%2Fruchki%2Fknob', '/catalog/ruchki', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391177793),
(636, 'http%3A%2F%2Fdverfurnitura.local%2Fcatalog%2Fruchki', '/catalog/ruchki/knob', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391177796),
(637, 'http%3A%2F%2Fdverfurnitura.local%2Fcatalog%2Fruchki%2Fknob', '/brands', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391177805),
(638, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands', '/brands/testovyy-proizvoditel-1', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391177806),
(639, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands%2Ftestovyy-proizvoditel-1', '/catalog/ruchki', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391177832),
(640, 'http%3A%2F%2Fdverfurnitura.local%2Fcatalog%2Fruchki', '/brands', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391178304),
(641, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands', '/brands/salice-paolo', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391178314),
(642, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands%2Fsalice-paolo', '/brands', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391178560),
(643, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands', '/brands/salice-paolo', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391178562),
(644, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands%2Fsalice-paolo', '/brands', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391178709),
(645, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands', '/brands/salice-paolo', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391178721),
(646, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands', '/brands/salice-paolo', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391178904),
(647, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands', '/brands/salice-paolo', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391179025),
(648, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands', '/brands/salice-paolo', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391179207),
(649, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands', '/brands/salice-paolo', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391179289),
(650, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands', '/brands/salice-paolo', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391179525),
(651, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands', '/brands/salice-paolo', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391179674),
(652, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands', '/brands/salice-paolo', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391179694),
(653, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands', '/brands/salice-paolo', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391179738),
(654, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands', '/brands/salice-paolo', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391179743),
(655, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands', '/brands/salice-paolo', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391179744),
(656, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands', '/brands/salice-paolo', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391179796),
(657, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands', '/brands/salice-paolo', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391180023),
(658, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands', '/brands/salice-paolo', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391180127),
(659, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands%2Fsalice-paolo', '/brands', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391180191),
(660, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands', '/brands/testovyy-proizvoditel-2', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391180192),
(661, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands%2Ftestovyy-proizvoditel-2', '/brands', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391180193),
(662, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands', '/brands/salice-paolo', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391180194),
(663, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands%2Fsalice-paolo', '/brands', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391180410),
(664, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands', '/brands/testovyy-proizvoditel-2', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391180412),
(665, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands%2Ftestovyy-proizvoditel-2', '/brands', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391180416),
(666, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands', '/brands/salice-paolo', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391180525),
(667, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands', '/brands/salice-paolo', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391180559),
(668, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands', '/brands/salice-paolo', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391180576),
(669, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands', '/brands/salice-paolo', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391180600),
(670, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands', '/brands/salice-paolo', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391180624),
(671, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands%2Fsalice-paolo', '/catalog/ruchki', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391180645),
(672, 'http%3A%2F%2Fdverfurnitura.local%2Fcatalog%2Fruchki', '/catalog/ruchki/na-rozetke-klassika-i-modern', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391180649),
(673, 'http%3A%2F%2Fdverfurnitura.local%2Fcatalog%2Fruchki%2Fna-rozetke-klassika-i-modern', '/brands', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391180656),
(674, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands', '/brands/salice-paolo', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391180658),
(675, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands%2Fsalice-paolo', '/brands', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391180661),
(676, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands', '/brands/salice-paolo', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391180664),
(677, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands', '/brands/salice-paolo', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391180686),
(678, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands', '/brands/salice-paolo', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391180763);
INSERT INTO `stats` (`id`, `from`, `to`, `ip`, `browser`, `date`) VALUES
(679, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands%2Fsalice-paolo', '/brands', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391180769),
(680, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands', '/brands/testovyy-proizvoditel-2', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391180770),
(681, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands%2Ftestovyy-proizvoditel-2', '/brands', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391180775),
(682, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands', '/brands/salice-paolo', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391180776),
(683, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands%2Fsalice-paolo', '/brands', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391180778),
(684, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands', '/brands/salice-paolo', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391180779),
(685, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands', '/brands/salice-paolo', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391180802),
(686, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands', '/brands/salice-paolo', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391180814),
(687, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands', '/brands/salice-paolo', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391180844),
(688, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands%2Fsalice-paolo', '/brands', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391180848),
(689, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands', '/brands/testovyy-proizvoditel-2', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391180849),
(690, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands%2Ftestovyy-proizvoditel-2', '/brands', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391180855),
(691, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands', '/brands/salice-paolo', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391180856),
(692, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands', '/brands/salice-paolo', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391180881),
(693, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands', '/brands/salice-paolo', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391180920),
(694, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands', '/brands/salice-paolo', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391180956),
(695, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands', '/brands/salice-paolo', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391181134),
(696, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands', '/brands/salice-paolo', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391181167),
(697, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands%2Fsalice-paolo', '/catalog/ruchki/na-rozetke-klassika-i-modern/beirut', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391181170),
(698, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands', '/brands/salice-paolo', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391181176),
(699, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands', '/brands/salice-paolo', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391181216),
(700, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands', '/brands/salice-paolo', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391181351),
(701, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands', '/brands/salice-paolo', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391181385),
(702, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands%2Fsalice-paolo', '/brands', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391181387),
(703, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands', '/brands/testovyy-proizvoditel-2', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391181388),
(704, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands%2Ftestovyy-proizvoditel-2', '/brands', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391181391),
(705, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands', '/brands/salice-paolo', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391181393),
(706, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands%2Fsalice-paolo', '/catalog/ruchki/na-rozetke-klassika-i-modern/beirut', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391181399),
(707, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands', '/brands/salice-paolo', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391181401),
(708, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands%2Fsalice-paolo', '/catalog/ruchki/na-rozetke-klassika-i-modern/dakar', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391181402),
(709, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands', '/brands/salice-paolo', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391181406),
(710, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands', '/brands/salice-paolo', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391181448),
(711, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands%2Fsalice-paolo', '/brands', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391181453),
(712, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands', '/brands/salice-paolo5', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391181454),
(713, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands%2Fsalice-paolo5', '/brands', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391181468),
(714, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands', '/brands/salice-paolo', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391181469),
(715, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands', '/brands/salice-paolo', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391181561),
(716, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands', '/brands/salice-paolo', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391182401),
(717, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands', '/brands/salice-paolo', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391182479),
(718, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands', '/brands/salice-paolo', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391182522),
(719, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands', '/brands/salice-paolo', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391182568),
(720, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands', '/brands/salice-paolo', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391182592),
(721, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands%2Fsalice-paolo', '/catalog/ruchki/na-rozetke-klassika-i-modern/rochefort', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391182626),
(722, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands', '/brands/salice-paolo', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391182630),
(723, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands', '/brands/salice-paolo', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391182692),
(724, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands', '/brands/salice-paolo', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391182706),
(725, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands', '/brands/salice-paolo', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391182734),
(726, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands', '/brands/salice-paolo', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391182760),
(727, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands%2Fsalice-paolo', '/brands', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391182773),
(728, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands', '/brands/testovyy-proizvoditel-2', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391182774),
(729, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands', '/brands/testovyy-proizvoditel-2', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391182815),
(730, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands%2Ftestovyy-proizvoditel-2', '/brands', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391182821),
(731, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands', '/brands/salice-paolo', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391182860),
(732, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands%2Fsalice-paolo', '/brands', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391182861),
(733, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands', '/brands/testovyy-proizvoditel-2', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391182864),
(734, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands%2Ftestovyy-proizvoditel-2', '/brands', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391182866),
(735, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands', '/brands/salice-paolo', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391182868),
(736, 'http%3A%2F%2Fdverfurnitura.local%2Fbrands%2Fsalice-paolo', '/brands', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391182870),
(737, 'прямая ссылка', 'Главная', '127.0.0.1', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391182920);

-- --------------------------------------------------------

--
-- Структура таблицы `stats_uniq`
--

CREATE TABLE IF NOT EXISTS `stats_uniq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `to` varchar(250) NOT NULL,
  `from` varchar(250) NOT NULL,
  `browser` varchar(250) NOT NULL,
  `date` int(11) NOT NULL,
  `ip` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=34 ;

--
-- Дамп данных таблицы `stats_uniq`
--

INSERT INTO `stats_uniq` (`id`, `to`, `from`, `browser`, `date`, `ip`) VALUES
(1, 'Главная', 'прямая ссылка', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/30.0.1599.66 Safari/537.36', 1384000767, '127.0.0.1'),
(2, 'Главная', 'прямая ссылка', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.71 Safari/537.36', 1387898722, '86.57.186.182'),
(3, 'Главная', 'прямая ссылка', 'W3C_Validator/1.767', 1387898725, '128.30.52.70'),
(4, '/brands', 'прямая ссылка', 'W3C_Validator/1.767', 1387898726, '128.30.52.72'),
(5, '/brands/testovyy-proizvoditel', 'прямая ссылка', 'W3C_Validator/1.767', 1387898729, '128.30.52.73'),
(6, 'Главная', 'прямая ссылка', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1387918666, '93.85.167.111'),
(7, 'Главная', 'прямая ссылка', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1387977050, '93.125.14.125'),
(8, 'Главная', 'прямая ссылка', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388041936, '86.57.187.118'),
(9, 'Главная', 'прямая ссылка', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388063678, '195.50.31.219'),
(10, '/catalog/petli', 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388135915, '86.57.191.54'),
(11, '/catalog/ruchki', 'http%3A%2F%2Fdverfurnitura.by%2Fbrands', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388154227, '178.124.105.163'),
(12, 'Главная', 'прямая ссылка', 'Opera/9.80 (Android; Opera Mini/7.0.29530/34.818; U; ru) Presto/2.8.119 Version/11.10', 1388233329, '82.145.209.26'),
(13, 'Главная', 'прямая ссылка', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388234942, '37.215.243.149'),
(14, 'Главная', 'прямая ссылка', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.71 Safari/537.36', 1388393179, '93.85.133.106'),
(15, 'Главная', 'прямая ссылка', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388428360, '86.57.191.214'),
(16, '/catalog/ruchki', 'http%3A%2F%2Fdverfurnitura.by%2Fbrands', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388731869, '86.57.189.134'),
(17, 'Главная', 'прямая ссылка', 'Mozilla/5.0 (iPhone; CPU iPhone OS 6_1_3 like Mac OS X) AppleWebKit/536.26 (KHTML, like Gecko) Version/6.0 Mobile/10B329 Safari/8536.25', 1388769929, '37.17.112.246'),
(18, '/catalog/ruchki', 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fzamki', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1388822915, '86.57.185.6'),
(19, 'Главная', 'прямая ссылка', 'Mozilla/5.0 (X11; Linux x86_64; rv:18.0) Gecko/20100101 Firefox/18.0', 1389326802, '217.69.133.169'),
(20, 'Главная', 'прямая ссылка', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.72 Safari/537.36', 1389360902, '93.84.12.120'),
(21, 'Главная', 'прямая ссылка', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1389364947, '178.124.110.25'),
(22, 'Главная', 'прямая ссылка', 'Mozilla/5.0 (iPhone; CPU iPhone OS 6_1_3 like Mac OS X) AppleWebKit/536.26 (KHTML, like Gecko) Version/6.0 Mobile/10B329 Safari/8536.25', 1389420990, '37.17.115.137'),
(23, 'Главная', 'прямая ссылка', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.72 Safari/537.36', 1389597582, '93.125.116.249'),
(24, 'Главная', 'прямая ссылка', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1389602851, '178.124.110.217'),
(25, 'Главная', 'прямая ссылка', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.72 Safari/537.36', 1389791916, '93.125.62.212'),
(26, 'Главная', 'прямая ссылка', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390376000, '93.125.63.186'),
(27, 'Главная', 'прямая ссылка', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390482211, '46.53.166.164'),
(28, 'Главная', 'http%3A%2F%2Fdverfurnitura.by%2Fcatalog%2Fruchki', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390544076, '178.124.202.144'),
(29, 'Главная', 'прямая ссылка', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390816014, '178.124.202.206'),
(30, 'Главная', 'прямая ссылка', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36', 1390916555, '93.125.15.98'),
(31, 'Главная', 'прямая ссылка', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.102 Safari/537.36', 1391085063, '93.125.62.127'),
(32, 'Главная', 'прямая ссылка', 'Opera/9.80 (Windows NT 6.1; WOW64) Presto/2.12.388 Version/12.16', 1391087902, '178.124.200.30'),
(33, 'Главная', 'прямая ссылка', 'Mozilla/5.0 (X11; Linux i686 (x86_64)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', 1391092091, '178.124.108.41');

-- --------------------------------------------------------

--
-- Структура таблицы `sub_categories`
--

CREATE TABLE IF NOT EXISTS `sub_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `sub_name` varchar(60) DEFAULT NULL,
  `sub_translit` varchar(60) DEFAULT NULL,
  `keywords` varchar(250) NOT NULL,
  `seo_text` text NOT NULL,
  `descr` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `img_url` varchar(200) DEFAULT NULL,
  `img_title` varchar(100) NOT NULL,
  `img_alt` varchar(100) NOT NULL,
  `date` int(11) NOT NULL,
  `status` tinyint(4) DEFAULT '0',
  `sort` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Дамп данных таблицы `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `parent_id`, `sub_name`, `sub_translit`, `keywords`, `seo_text`, `descr`, `title`, `img_url`, `img_title`, `img_alt`, `date`, `status`, `sort`) VALUES
(1, 34, 'Тестовая подкатегория', 'testovaya-podkategoriya', 'Название (title)Тестовая подкатегория', 'Название (title)Тестовая подкатегория', 'Название (title)Тестовая подкатегория', 'Название (title)Тестовая подкатегория', '/content/images/category_images/landing_by_nic_dahlquist-jpg-.jpg', '', '', 1384001049, 0, NULL),
(2, 35, 'На розетке', 'na-rozetke-klassika-i-modern', '', '', '', '', '/content/images/category_images/bez-imeni-3-jpg-.jpg', '', '', 1388044180, 0, NULL),
(3, 35, 'На планке', 'na-planke-klassika-i-modern', '', '', '', '', '/content/images/category_images/bez-imeni-4-jpg-.jpg', '', '', 1388044410, 0, NULL),
(4, 35, 'Скоба', 'skoba-klassika-i-modern', '', '', '', '', '/content/images/category_images/bez-imeni-5-jpg-.jpg', '', '', 1388044419, 0, NULL),
(5, 35, 'Кноб', 'knob-klassika-i-modern', '', '', '', '', '/content/images/category_images/bez-imeni-7-jpg-.jpg', '', '', 1388044429, 3, NULL),
(6, 35, 'Для раздвижных дверей', 'dlya-razdvizhnyh-dverey', '', '', '', '', '/content/images/category_images/bez-imeni-9-jpg-.jpg', '', '', 1388044443, 0, NULL),
(7, 35, 'Кноб', 'knob', '', '', '', '', '/content/images/category_images/bez-imeni-7-jpg-.jpg', '', '', 1388044584, 0, NULL),
(8, 36, 'Универсальные', 'universal-nye', '', '', '', '', NULL, '', '', 1388044678, 0, NULL),
(9, 36, 'Скрытые', 'skrytye', '', '', '', '', NULL, '', '', 1388044687, 0, NULL),
(10, 36, 'Съемные', 's-emnye', '', '', '', '', NULL, '', '', 1388044700, 0, NULL),
(11, 36, 'Ввертные', 'vvertnye', '', '', '', '', NULL, '', '', 1388044708, 0, NULL),
(12, 36, 'Тарцевые', 'tarcevye', '', '', '', '', NULL, '', '', 1388044716, 0, NULL),
(13, 36, 'Барные', 'barnye', '', '', '', '', NULL, '', '', 1388044721, 0, NULL),
(14, 37, 'Врезные', 'vreznye', '', '', '', '', NULL, '', '', 1388044776, 0, NULL),
(15, 37, 'Накладные', 'nakladnye', '', '', '', '', NULL, '', '', 1388044784, 0, NULL),
(16, 37, 'Навесные', 'navesnye', '', '', '', '', NULL, '', '', 1388044791, 0, NULL),
(17, 38, 'Магнитные', 'magnitnye', '', '', '', '', '/content/images/category_images/bez-imeni-12-jpg-.jpg', '', '', 1388044840, 0, NULL),
(18, 38, 'Межкомнатные', 'mezhkomnatnye', '', '', '', '', '/content/images/category_images/bez-imeni-13-jpg-.jpg', '', '', 1388044854, 0, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `sub_details`
--

CREATE TABLE IF NOT EXISTS `sub_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `detail_id` int(11) DEFAULT NULL,
  `key` varchar(65) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `sub_details_val`
--

CREATE TABLE IF NOT EXISTS `sub_details_val` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `sub_detail_id` int(11) NOT NULL,
  `value` varchar(150) NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(254) NOT NULL,
  `username` varchar(32) NOT NULL DEFAULT '',
  `password` varchar(64) NOT NULL,
  `logins` int(10) unsigned NOT NULL DEFAULT '0',
  `last_login` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_username` (`username`),
  UNIQUE KEY `uniq_email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `password`, `logins`, `last_login`) VALUES
(2, 'ilya.baranovskiy@mail.ru', 'baranovskiy', '46dfbfc841ce192dfb485e9faae067ebe36c3ec11fb1a9c08462129732dd5d11', 121, 1391177895),
(3, 'stylish@ceramics.by', 'stylish', '7a940f41a3d173962e56251eeec24f95c25531d44d10728409dd5d0a73d8d58a', 6, 1383728500);

-- --------------------------------------------------------

--
-- Структура таблицы `user_tokens`
--

CREATE TABLE IF NOT EXISTS `user_tokens` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `user_agent` varchar(40) NOT NULL,
  `token` varchar(40) NOT NULL,
  `created` int(10) unsigned NOT NULL,
  `expires` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_token` (`token`),
  KEY `fk_user_id` (`user_id`),
  KEY `expires` (`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `votes_id`
--

CREATE TABLE IF NOT EXISTS `votes_id` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` text NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `votes_users`
--

CREATE TABLE IF NOT EXISTS `votes_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `for` int(11) NOT NULL,
  `ip` varchar(60) NOT NULL,
  `date` int(11) NOT NULL,
  `data` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `vote_item`
--

CREATE TABLE IF NOT EXISTS `vote_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vote_id` int(11) NOT NULL,
  `text` text NOT NULL,
  `value` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD CONSTRAINT `parent_id` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
