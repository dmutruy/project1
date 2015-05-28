-- phpMyAdmin SQL Dump
-- version 4.0.5
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3307
-- Время создания: Фев 27 2015 г., 10:20
-- Версия сервера: 5.5.33-log
-- Версия PHP: 5.4.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `abc`
--
--
-- База данных: `dzesiukevich`
--

-- --------------------------------------------------------

--
-- Структура таблицы `maintexts`
--

CREATE TABLE IF NOT EXISTS `maintexts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` tinytext NOT NULL,
  `body` text NOT NULL,
  `url` tinytext NOT NULL,
  `showhide` enum('show','hide') NOT NULL DEFAULT 'show',
  `putdate` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `maintexts`
--

INSERT INTO `maintexts` (`id`, `name`, `body`, `url`, `showhide`, `putdate`) VALUES
(1, 'Welcome', 'Hi there!', 'index', 'show', '0000-00-00'),
(2, 'asdasd', 'asdasdasdasdasdasdasdasd', 'asdf', 'show', '0000-00-00');

-- --------------------------------------------------------

--
-- Структура таблицы `razdels`
--

CREATE TABLE IF NOT EXISTS `razdels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` tinytext NOT NULL,
  `showhide` enum('show','hide') NOT NULL DEFAULT 'show',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `razdels`
--

INSERT INTO `razdels` (`id`, `title`, `showhide`) VALUES
(1, 'первый', 'show'),
(2, 'второй', 'show');

-- --------------------------------------------------------

--
-- Структура таблицы `tovars`
--

CREATE TABLE IF NOT EXISTS `tovars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `razdel_id` int(11) NOT NULL,
  `name` tinytext NOT NULL,
  `body` text NOT NULL,
  `prise` tinytext NOT NULL,
  `vip` enum('1','0') NOT NULL DEFAULT '0',
  `showhide` enum('show','hide') NOT NULL DEFAULT 'show',
  `putdate` date NOT NULL,
  `putupdate` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `tovars`
--

INSERT INTO `tovars` (`id`, `razdel_id`, `name`, `body`, `prise`, `vip`, `showhide`, `putdate`, `putupdate`) VALUES
(1, 0, 'пылесос', 'описание страницы', '200руб', '0', 'show', '0000-00-00', '0000-00-00'),
(3, 0, 'пылесос', 'описание страницы', '200руб', '0', 'show', '0000-00-00', '0000-00-00');
--
-- База данных: `ivan`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` tinytext NOT NULL,
  `showhide` enum('show','hide') NOT NULL DEFAULT 'show',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `name`, `showhide`) VALUES
(11, 'пицца', 'show'),
(12, 'добавки', 'show'),
(13, 'упаковка', 'show');

-- --------------------------------------------------------

--
-- Структура таблицы `goods`
--

CREATE TABLE IF NOT EXISTS `goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catid` tinytext NOT NULL,
  `name` tinytext NOT NULL,
  `body` tinytext NOT NULL,
  `prise` tinytext NOT NULL,
  `picture` tinytext NOT NULL,
  `showhide` enum('show','hide') NOT NULL DEFAULT 'show',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=27 ;

--
-- Дамп данных таблицы `goods`
--

INSERT INTO `goods` (`id`, `catid`, `name`, `body`, `prise`, `picture`, `showhide`) VALUES
(26, '11', 'elDiablo', 'Вкусная. Непересказать!', '300 руб', 'g1419860843.jpg', 'show');

-- --------------------------------------------------------

--
-- Структура таблицы `maintexts`
--

CREATE TABLE IF NOT EXISTS `maintexts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` tinytext NOT NULL,
  `body` text NOT NULL,
  `url` tinytext NOT NULL,
  `showhide` enum('show','hide') NOT NULL DEFAULT 'show',
  `lang` enum('en','by','ru') NOT NULL DEFAULT 'ru',
  `putdate` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Дамп данных таблицы `maintexts`
--

INSERT INTO `maintexts` (`id`, `name`, `body`, `url`, `showhide`, `lang`, `putdate`) VALUES
(1, 'Добро пожаловать на сайт', '<p class="indent">Большинству языков различие между этими понятиями вообще неизвестно. Б. В. Томашевский называет рассказ специфически русским синонимом международного термина «новелла». Другой представитель школы формализма, Б. М. Эйхенбаум, предлагал разводить эти понятия на том основании, что новелла сюжетна, а рассказ — более психологичен и рефлексивен, ближе к бессюжетному очерку. На остросюжетность новеллы указывал ещё Гёте, считавший её предметом «свершившееся неслыханное событие». При таком толковании новелла и очерк — две противоположные ипостаси рассказа.</p>\r\n		<p class="indent">На примере творчества О. Генри Эйхенбаум выделял следующие черты новеллы в наиболее чистом, «незамутнённом» виде: краткость, острый сюжет, нейтральный стиль изложения, отсутствие психологизма, неожиданная 			развязка. Рассказ, в понимании Эйхенбаума, не отличается от новеллы объёмом, но отличается структурой: персонажам или событиям даются развёрнутые психологические характеристики, на первый план выступает 				изобразительно-словесная фактура.</p>\r\n		<p class="indent">Разграничение новеллы и рассказа, предложенное Эйхенбаумом, получило в советском литературоведении определённую, хотя и не всеобщую поддержку. Авторов рассказов по-прежнему называют новеллистами, а 				«совокупность малых по объёму эпических жанров» — новеллистикой. Различение терминов, неизвестное зарубежному литературоведению, кроме того, теряет смысл применительно к экспериментальной прозе XX века 				(например, к короткой прозе Гертруды Стайн или Сэмюэла Беккета).</p>', 'index', 'hide', 'ru', '2014-12-05'),
(2, '', '<p align="left">Ivan тел. +375 (29) 7551009\r\nг. Минск, ул. Лопатина</p>\r\n\r\n<img src="media/img/map.jpg" width="620" height="380" class="map">', 'about', 'hide', 'ru', '2014-12-05'),
(3, 'Каталог', 'Мы рады вам предложить наборы "Чистый воздух" в упаковках по 1,2 и 5 вздохов!', 'catalog', 'hide', 'ru', '2014-12-05'),
(4, 'услуги', 'ыпфывпфв', 'uslugi', 'hide', 'ru', '2014-12-05'),
(5, 'Полезно знать', '<p align="justify" class="indent">Во́здух — естественная смесь газов (главным образом азота и кислорода — 98-99 % в сумме, а также углекислого газа, воды, водорода и пр.) образующая земную атмосферу. Воздух необходим для нормального существования подавляющего числа наземных живых организмов. Кислород, содержащийся в воздухе, в процессе дыхания поступает в клетки организма и используется в процессе окисления, в результате которого происходит выделение необходимой для жизни энергии (метаболизм, аэробы). В промышленности и в быту кислород воздуха используется для сжигания топлива с целью получения тепла и механической энергии в двигателях внутреннего сгорания. Из воздуха, используя метод сжижения, добывают инертные газы. В соответствии с Федеральным Законом «Об охране атмосферного воздуха» под атмосферным воздухом понимается «жизненно важный компонент окружающей среды, представляющий собой естественную смесь газов атмосферы, находящуюся за пределами жилых, производственных и иных помещений».</p>\r\n<p align="justify" class ="indent">В 1754 году Джозеф Блэк экспериментально доказал, что воздух представляет собой смесь газов, а не однородное вещество.</p>\r\n\r\n<p align="center"><big><strong>Состав воздуха:</strong></big>\r\n<table class="table table-bordered" align="center">\r\n	<tr><th>Вещество</th><th>Обозначение</th><th>По объёму, %</th><th>По массе, %</th>\r\n	<tr><td>Азот</td><td>N<sub>2</sub></td><td>78,084</td><td>75,50</td></tr>\r\n	<tr><td>Кислород</td><td>O<sub>2</sub></td><td>20,9476</td><td>23,15</td></tr>\r\n	<tr><td>Аргон</td><td>Ar</td><td>0,934</td><td>1,292</td></tr>\r\n	<tr><td>Углекислый газ</td><td>CO<sub>2</sub></td><td>0.0314</td><td>0,046</td></tr>\r\n	<tr><td>Неон</td><td>Ne</td><td>0,001818</td><td>0,0014</td></tr>\r\n	<tr><td>Метан</td><td>CH<sub>4</sub></td><td>0,0002</td><td>0,000084</td></tr>\r\n	<tr><td>Гелий</td><td>He</td><td>0,000524</td><td>0,000073</td></tr>\r\n	<tr><td>Криптон</td><td>Kr</td><td>0,000114</td><td>0,003</td></tr>\r\n	<tr><td>Водород</td><td>H<sub>2</sub></td><td>0,00005</td><td>0,00008</td></tr>\r\n	<tr><td>Ксенон</td><td>Xe</td><td>0,0000087</td><td>0,00004</td></tr>\r\n</table>\r\n</p>\r\n<p aling="justify" class="indent">Состав воздуха может меняться: в крупных городах содержание углекислого газа будет выше, чем в лесах; в горах пониженное содержание кислорода, вследствие того, что кислород тяжелее азота, и поэтому его плотность с высотой уменьшается быстрее. В различных частях земли состав воздуха может варьироваться в пределах 1-3 % для каждого газа. </p>\r\n\r\n<p align="justify" class="indent">Воздух всегда содержит пары воды. Так, при температуре 0 °C 1 м³ воздуха может вмещать максимально 5 граммов воды, а при температуре +10 °C — уже 10 граммов.</p>', 'info', 'hide', 'ru', '2014-12-06'),
(6, 'Информация по существующим акциям доступна только зарегистрированным пользователям.', '', 'sale', 'hide', 'ru', '2014-12-06'),
(7, 'Доставка', 'Куръером по миру. <strong>Бесплатно!</strong>', 'delivery', 'show', 'ru', '2014-12-06'),
(8, 'Гарантия', 'И не сомневайтесь!', 'garant', 'show', 'ru', '2014-12-06'),
(9, 'Отзывы', '', 'otziv', 'show', 'ru', '0000-00-00');

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fio` tinytext NOT NULL,
  `phone` tinytext NOT NULL,
  `adress` tinytext NOT NULL,
  `body` tinytext NOT NULL,
  `ip` tinytext NOT NULL,
  `sposob` enum('delivery','mail','card') NOT NULL DEFAULT 'delivery',
  `currency` enum('BYR','USD') NOT NULL DEFAULT 'BYR',
  `currency_value` tinytext NOT NULL,
  `putdate` date NOT NULL,
  `status` enum('new','inway','done') NOT NULL DEFAULT 'new',
  `message` tinytext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id`, `fio`, `phone`, `adress`, `body`, `ip`, `sposob`, `currency`, `currency_value`, `putdate`, `status`, `message`) VALUES
(4, 'жив', '834271239874', 'домой', 'a:2:{i:1;s:0:"";s:9:"PHPSESSID";s:26:"gp3hblka5v9dblpa4p4oqhbq63";}', '127.0.0.1', 'delivery', 'BYR', '0', '2014-12-29', 'new', 'бегом!');

-- --------------------------------------------------------

--
-- Структура таблицы `otzivs`
--

CREATE TABLE IF NOT EXISTS `otzivs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` tinytext NOT NULL,
  `email` tinytext NOT NULL,
  `fio` tinytext NOT NULL,
  `body` text NOT NULL,
  `showhide` enum('show','hide') NOT NULL DEFAULT 'show',
  `putdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `otzivs`
--

INSERT INTO `otzivs` (`id`, `ip`, `email`, `fio`, `body`, `showhide`, `putdate`) VALUES
(3, '127.0.0.1', 'dfghdfg@wsf.ds', 'sdfsd', '<p>\\fds</p>\n', 'show', '2015-01-08 21:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `pictures`
--

CREATE TABLE IF NOT EXISTS `pictures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catid` tinytext NOT NULL,
  `name` tinytext NOT NULL,
  `body` text NOT NULL,
  `picture` tinytext NOT NULL,
  `picturesmall` tinytext NOT NULL,
  `showhide` enum('show','hide') NOT NULL DEFAULT 'show',
  `putdate` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Дамп данных таблицы `pictures`
--

INSERT INTO `pictures` (`id`, `catid`, `name`, `body`, `picture`, `picturesmall`, `showhide`, `putdate`) VALUES
(8, '', '15', '<p>описание</p>\r\n', '14_12_12_06_27_Penguins.jpg', 's_14_12_12_06_27_Penguins.jpg', 'show', '2014-12-12'),
(9, '', '464564', '<p>описание</p>\r\n', '14_12_12_06_27_Koala.jpg', 's_14_12_12_06_27_Koala.jpg', 'show', '2014-12-12');

-- --------------------------------------------------------

--
-- Структура таблицы `system_accounts`
--

CREATE TABLE IF NOT EXISTS `system_accounts` (
  `id_account` int(11) NOT NULL AUTO_INCREMENT,
  `name` tinytext NOT NULL,
  `pass` tinytext NOT NULL,
  PRIMARY KEY (`id_account`)
) ENGINE=MyISAM  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=27 ;

--
-- Дамп данных таблицы `system_accounts`
--

INSERT INTO `system_accounts` (`id_account`, `name`, `pass`) VALUES
(26, 'test', '098f6bcd4621d373cade4e832627b4f6');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` tinytext NOT NULL,
  `password` tinytext NOT NULL,
  `email` tinytext NOT NULL,
  `blockunblock` enum('block','unblock') DEFAULT 'unblock',
  `datereg` date NOT NULL,
  `lastvisit` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `password`, `email`, `blockunblock`, `datereg`, `lastvisit`) VALUES
(1, '', '123', 'something@server.com', NULL, '0000-00-00', '0000-00-00 00:00:00'),
(2, 'ivan', '123', 'tut.by', 'unblock', '2014-12-08', '2014-12-19 16:06:35'),
(3, 'dk', '123', 'something@server.com', 'unblock', '2014-12-08', '2014-12-08 17:30:21'),
(4, 'kfk', '123', 'something@server.com', 'block', '2014-12-08', '2014-12-08 18:08:46');
--
-- База данных: `kohana`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(1024) NOT NULL,
  `showhide` enum('show','hide') NOT NULL DEFAULT 'show',
  `parent_id` int(11) NOT NULL,
  `scope` int(11) NOT NULL,
  `lft` int(11) NOT NULL,
  `rgt` int(11) NOT NULL,
  `lvl` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `title`, `showhide`, `parent_id`, `scope`, `lft`, `rgt`, `lvl`) VALUES
(5, 'test2', 'show', 0, 2, 1, 6, 1),
(6, 'test', 'show', 5, 2, 2, 5, 2),
(7, 'test3', 'show', 6, 2, 3, 4, 3),
(8, 'test4', 'show', 0, 3, 1, 2, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `images`
--

CREATE TABLE IF NOT EXISTS `images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `news_id` int(11) NOT NULL,
  `picture` text NOT NULL,
  `picture_small` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `images`
--

INSERT INTO `images` (`id`, `news_id`, `picture`, `picture_small`) VALUES
(3, 24, '487377033484655331127930636837811415200732.jpg', 'small_487377033484655331127930636837811415200732.jpg'),
(4, 25, '12269950127624060868545341212941861415200780.jpg', 'small_12269950127624060868545341212941861415200780.jpg'),
(5, 25, '84707001916883689678971502070671415200781.jpg', 'small_84707001916883689678971502070671415200781.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `maintexts`
--

CREATE TABLE IF NOT EXISTS `maintexts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` tinytext NOT NULL,
  `body` text NOT NULL,
  `url` tinytext NOT NULL,
  `showhide` enum('show','hide') NOT NULL DEFAULT 'show',
  `lang` enum('ru','en') NOT NULL DEFAULT 'ru',
  `pubdate` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `maintexts`
--

INSERT INTO `maintexts` (`id`, `name`, `body`, `url`, `showhide`, `lang`, `pubdate`) VALUES
(1, 'Добро пожаловать', 'Описание страницы', 'index', 'show', 'ru', '2014-10-24'),
(3, 'Контакты', 'Контакты сайта', 'contact', 'show', 'ru', '2014-10-24');

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(1024) NOT NULL,
  `body` text NOT NULL,
  `picture` text NOT NULL,
  `picturesmall` text NOT NULL,
  `showhide` enum('show','hide') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=27 ;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `name`, `body`, `picture`, `picturesmall`, `showhide`) VALUES
(5, 'Новость 5', '<p>Текст новости 5</p>\n', '', '', 'show'),
(6, 'Новость 6', 'Текст новости 6', '', '', 'show'),
(8, 'Новость 8', 'Текст новости 8', '', '', 'show'),
(9, '9', '999999999', '', '', 'show'),
(10, '10', '100000000000000', '', '', 'show'),
(12, '12', '21222222', '', '', 'show'),
(13, '13', '13333', '', '', 'show'),
(14, '14', '14444444444', '', '', 'show'),
(15, '15', '15555', '', '', 'show'),
(17, '17', '1777777', '', '', 'show'),
(18, '18', '18888888888', '', '', 'show'),
(19, '19', '1999999999', '', '', 'show'),
(20, '20', '20000000000000', '', '', 'show'),
(21, '11111111111', '<p>2222222</p>\n', '', '', 'show'),
(22, '22222222', '<p>2222222222</p>\n', '', '', 'show'),
(23, '3333333', '<p>33333333</p>\n', '', '', 'show'),
(24, '111111111', '<p>1111111</p>\n', '', '', 'show'),
(25, '22222222', '<p>2222222222</p>\n', '', '', 'show'),
(26, '1111', '1111111', '111111', '11111', 'show');

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
(1, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `tovars`
--

CREATE TABLE IF NOT EXISTS `tovars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_categorie` int(11) NOT NULL,
  `name` varchar(1024) NOT NULL,
  `body` text NOT NULL,
  `code` int(11) NOT NULL,
  `showhide` enum('show','hide') NOT NULL DEFAULT 'show',
  `price` int(11) NOT NULL,
  `pubdate` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `tovars`
--

INSERT INTO `tovars` (`id`, `id_categorie`, `name`, `body`, `code`, `showhide`, `price`, `pubdate`) VALUES
(1, 1, 'Тостер', 'asds sa asd asdasd', 0, 'show', 11, '2014-10-27'),
(2, 2, 'Микроволновая печь', 'asds sa asd asdasd', 0, 'show', 11, '2014-10-27'),
(4, 3, 'Телевизор LG', 'asds sa asd asdasd', 0, 'show', 11, '2014-10-27'),
(5, 3, 'Телевизор Samsung', 'asds sa asd asdasd', 0, 'show', 11, '2014-10-27');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Дамп данных таблицы `user_tokens`
--

INSERT INTO `user_tokens` (`id`, `user_id`, `user_agent`, `token`, `created`, `expires`) VALUES
(1, 1, '6b528ddb10877e35c160e560ff9a38d73feef66f', 'c2c1dc0caed957c95ec89a02f05e501d1b0ce39a', 1414588346, 1415797946),
(2, 1, '6b528ddb10877e35c160e560ff9a38d73feef66f', '950dc4c9dd01f1b3adb1f7dde688f04567b9c82c', 1414588504, 1415798104),
(11, 1, '6b528ddb10877e35c160e560ff9a38d73feef66f', 'f4306999a4424430e58ffcf42e5a2756e805407e', 1414597399, 1415806999),
(15, 1, '12831f0d79add8407105fb2657c42b178852f398', 'b15710c672563fec8002bc682d36c0dd1add1cd3', 1415018907, 1416228507);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `password`, `logins`, `last_login`) VALUES
(1, 'qweqweqwe@wddw.ru', 'user', '28c5c0acc10b7f86eeddadbe5b9575face3596d5a8bcef537720c6b4be1309fe', 20, 1415796336);

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `roles_users`
--
ALTER TABLE `roles_users`
  ADD CONSTRAINT `roles_users_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `roles_users_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `user_tokens`
--
ALTER TABLE `user_tokens`
  ADD CONSTRAINT `user_tokens_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
--
-- База данных: `laravel`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(1024) NOT NULL,
  `desc` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `title`, `desc`) VALUES
(5, 'test1', ''),
(6, 'test2', ''),
(7, 'test3', ''),
(9, 'test4', ''),
(11, 'test5', ''),
(17, 'test6', 'test6'),
(18, 'test7', 'test7'),
(19, 'test8', 'test8');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_11_19_140203_create_users', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isAdmin` tinyint(1) NOT NULL,
  `isActivate` tinyint(1) NOT NULL,
  `codeActivate` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`),
  UNIQUE KEY `users_isadmin_unique` (`isAdmin`),
  UNIQUE KEY `users_isactivate_unique` (`isActivate`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `username`, `isAdmin`, `isActivate`, `codeActivate`, `created_at`, `updated_at`, `remember_token`) VALUES
(1, 'qweqweqwe@wddw.ru', '$2y$10$rNkRaAorqGb9biwwjrLwE.rwulgc0AsSmvpLEXxntp1.u8te/7kNW', 'user', 0, 0, '', '2014-11-19 11:41:54', '2014-11-21 11:19:30', 'l45a7b8DcBUxca6S7NmsytmqF7YwArqiGj5pwfUqrEQklQeeg9fwnPsNbjm8');
--
-- База данных: `maintexts`
--

-- --------------------------------------------------------

--
-- Структура таблицы `maintexts`
--

CREATE TABLE IF NOT EXISTS `maintexts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` tinytext CHARACTER SET utf8 NOT NULL,
  `body` text CHARACTER SET utf8 NOT NULL,
  `url` tinytext CHARACTER SET utf8 NOT NULL,
  `lang` enum('ru','en','es') NOT NULL DEFAULT 'ru',
  `showhide` enum('show','hide') CHARACTER SET utf8 NOT NULL DEFAULT 'show',
  `putdate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=12 ;

--
-- Дамп данных таблицы `maintexts`
--

INSERT INTO `maintexts` (`id`, `name`, `body`, `url`, `lang`, `showhide`, `putdate`) VALUES
(1, 'Добро пожаловать', '<p><strong>Вы по-прежнему пьете кофе для итальянских рабочих?</strong></p>\n\n\n<p>Все мы совершаем ошибки. По разным причинам. Не владеем нужным количеством фактов. Следуем без оглядки рекомендациям знакомых. Экономим. Или думаем, что делаем это. Например, когда выбираем марки кофе по их заманчивым названиям. Взять хотя бы Lavazza. Очень броское слово. И в его итальянском происхождении сложно сомневаться. А что, если вас вводят в заблуждение? И самый лучший кофе в мире продается в соседней пачке?</p>\n\n<p><strong>Белорусский рынок молотого напитка  и кофе зерно имеет не одну проблему:</strong></p>\n<ol>\n<li>большое количество подделок («а упаковку и подделать можно»);</li>\n\n<li> нечестная реклама (тот же настоящий кофе Lavazza в Италии пьют скорее рабочие, нежели истинные ценители вкуса);</li>\n\n<li> розничные сети закупают дешевый товар посредственного качества (элитный кофе купить в обычном магазине сложно).</li>\n</ol>\n\n<p>При таком раскладе определить, какой кофе самый лучший непросто.</p>\n\n\n<p><strong>Не читайте дальше, если вы любите Nescafe</strong>\n</p>\n<p>\nРаз уж мы неоднократно упомянули родину Ромео и Джульетты, обсудим итальянский кофе в зернах детальнее. Чтобы не утомлять вас иноземными названиями, вот несколько кратких описаний:\n</p>\n     <p> <em>высокогорная арабика из экологически чистых регионов;\n      <br>лучший кофе в мире для любителей смешивать его с молоком;\n      <br>любимый напиток римской элиты;\n      <br>семь сортов в одной чашке;\n      <br>аристократичный элитный сорт кофе.\n</em>\n</p>\n<p>\n\nВы обязательно добавите к этому краткому списку восторженную реплику. Ведь кофе италия купить – запрос особого взыскательного человека.\n</p>\n<p>\n<strong>Чистосердечное признание</strong>\n</p>\n<p>\nВсе выглядит чересчур идеально? Мы не собираемся усыплять вашу бдительность. Сознаемся, что в данный момент мы продаем элитные сорта кофе чуть старше трех месяцев.\n</p>\n <strong>Однако лучший кофе в мире попадет на ваш стол без изъянов.</strong> Транспортировка и хранение по строгим правилам. Вы ведь знаете, что их нарушение может безвозвратно испортить вкус терпкого напитка? На заметку, открытая пачка пусть и самого лучшего кофе должна быть опустошена за три месяца. Потом вы завариваете лишь остатки былой славы.\n</p>\n<p>\n<strong>«Да кто вы такие, чтобы меня убеждать?»</strong>\n</p>\n<p>\n<u>Давайте снова прибегнем к конкретике.</u>\n</p>\n<p>\nНаш магазин привозит элитный кофе в зернах из Италии. И это эксклюзивные поставки для Беларуси. То, что продаем мы, нельзя найти у розничных ритейлеров. Ведь большие магазины закупают, как правило, более дешевый товар. Но купить элитный кофе крупным оптом, значит продавать Lavazza.\n</p>\n<p>\nМы выбираем лучшие сорта кофе по выгодным ценам. Простой расчет. 1 кг золотистых зерен Roen Extra Bar стоит всего <u>390 тыс. руб.</U> Такое же количество Lavazza, если вы настаиваете, обойдется в среднем в<u> 350 тыс. руб.</U>На эту разницу можно купить разве только Жокей. Но не будем использовать нецензурную лексику в разговоре о лучшем кофе в мире.\n</p>\n\n<p>\nРаз вам известны наши цены, то просто необходимо знать следующее. Закажите элитное кофе и его быстрая доставка будет стоить для вас 0 руб. И вам не придется ждать более суток. Заварите пока чаю – наш курьер уже в пути.\n</p>\n<p>\nВсегда в наличии кофе для кофемашин и варки в турке. Именно этот благоухающий кофе используют профессиональные бариста*. Кстати, в разделе «Посуда» есть на что взглянуть.\n<p>\n*Вы, безусловно, знаете, что бариста – это синоним кофевара, дословный перевод слова с итальянского «человек за барной стойкой».\n</p>\n<p>\nВпрочем, вы всегда можете вернуться в клуб любителей заливать ложку кофейного порошка кипяченой водой. Или добро пожаловать в элиту!\n</p>\n<p>\n\n<strong>P.S. Сделайте себе подарок. Перед вами лучший кофе в зернах. И среди представленных сортов обязательно есть ваш напиток. Просто знайте, что вы достойны большего.</strong>\n</p>\n\n<p>\n<strong>P.P.S. Наши менеджеры любят отвечать на любые кофейные вопросы.</strong>\n\n<p>\nМы выбрали лучший кофе Италии.Мы привезли его специально для ценителей настоящего экспрессо. Эксклюзивные поставки для РБ. Этот кофе является призером многих выставок. Его не купить в обычных магазинах. Его вкус потрясает. Его ценят и пьют в лучших ресторанах Мира. Теперь и  у нас появилась возможность его попробовать!\n</p>\n\n<p><strong>Лучший итальянский кофе по демократичной цене. Свежий итальянский премиум кофе с доставкой по всей Беларуси.</strong></p>', 'index', 'ru', 'show', '0000-00-00 00:00:00'),
(2, 'О компании', '<p><em>Где в Минске и Беларуси купить хорошие кофе и чай? – подобным вопросом задаются практически все ценители этих напитков. Многие ищут специализированные магазины китайского чая или кофейные бутики. Мы предлагаем вам совершать покупки в одном проверенном месте, быстро, а главное – с полной уверенностью в качестве товара.</em></p>\n\n\n<p><strong>Наш магазин предлагает разнообразные сорта кофе и чая.</strong></P>\n\n<p>Многие и многие покупатели предпочитают покупать кофе и чай  на <strong>STARBUZZ.BY</strong>. Потому что <strong>STARBUZZ.BY - самый крупный Интернет магазин чая и кофе </strong> – в нашем ассортименте мировая коллекция кофе и чая. STARBUZZ.BY является  интернет-магазином по продаже широкого ассортимента развесного и пакетированного чая, аксессуаров, инструментов и посуды для его приготовления. Собрав в нашем  магазине самые интересные предложения от чайных и кофейных  компаний: китайский чай, элитный зеленый чай, белый чай, красный чай, пуэр, улуны, кофе арабика, кофе без кофеина, горячий шоколад, какао мы постоянно обновляем и совершенствуем ассортимент, для того, чтобы предложить наиболее популярные и востребованные сорта элитного чая и кофе. Понимая, что чай кофе находятся в одной товарной категории, мы подобрали ассортимент кофе отвечающий  всем критериям качества, т.е. упаковка, соответствие сертификатам и ГОСТам,  качество кофейного зерна и смесей, крупные, известные  лидеры-производители. </p> \n\n<p>Мы постарались кратко, ёмко и доступно изложить информацию о каждом товаре нашего магазина. Менеджеры нашего интернет-магазина чая и кофе с огромным удовольствием поделятся дополнительной информацией и ответят на все возникающие вопросы по способам приготовления, внешнему виду и характеристикам, предлагаемых продуктов. Посмотреть и купить чай или кофе можно в любом количестве: в розницу и оптом, домой и в офис. У нас низкие цены и реальные условия доставки. Наряду с чаем и кофе, мы предлагаем  аксессуары для чаепития, вкусности и подарки для любого случая.</p>\n<p>В нашем Интернет-магазине чая и кофе <strong>STARBUZZ.BY</strong> Вы можете купить чай, кофе в подарок - большой ассортимент подарочных наборов чая и кофе и подарочной упаковки.</p>\n\n<p><strong>STARBUZZ.BY</strong> выполняет заказы на корпоративные подарки.  Оригинальные идеи подарков на любые случаи.  Эксклюзивные подарки для руководителей. Интересные идеи подарков для сотрудников.</p>\n<p>Лучший подарок - это полезный подарок.  Подарите чай и кофе!</p>\n\n<p>Секрет нашей успешной работы прост – мы знаем о чае и кофе все и предлагаем вам присоединиться к миру настоящих ценителей этих, пожалуй, самых главных в нашей жизни напитков.</p>\n<p><strong>Как чашке хорошего кофе важно каждое зернышко, так для хорошего продавца важен каждый Клиент!</strong></p>\n<p><strong>Всегда рады Вас видеть в нашем Интернет-магазине кофе и чая  STARBUZZ.BY</strong></p>\n<p><strong>Желаем процветания и радости!</strong></p>\n\n<p>П.С. Если вдруг мы не смогли ответить на ваш звонок - не отчаивайтесь, просто сделайте ваш заказ через сайт и напишите ваши вопросы и пожелания в примечании к заказу.</p>\nНаш менеджер обязательно с вами свяжется и уточнит детали.</p>\n\n<p>По вопросам доставки, консультаций и выбора кофе и чая обращайтесь к нашим консультантам по телефонам 6 4336 58 84 (велком), 6 58443588 208 (велком), 550 36 234 (МТС)</p>\n\n<p>Владелец магазина  Частное торговое унитарное предприятие "Корпорация Старбаз"</p>\n<p>Свидетельство о регистрации от 02.02.20015 за  № 181 Мингорисполком ЕГР №  1906R858705</p>\n\n<p>Лицензия на розничную торговлю №4444/0469335851  от 27.02.2009, в реестре лицензий Мингорисполкома за № 44</p>\n\nКонтактный телефон ##########################', 'about', 'ru', 'show', '0000-00-00 00:00:00'),
(3, 'Отзывы клиентов', '<hr><p>СУ-34\nприятно когда кофе привозят через час после заказа!\n23.10.2014\n</p>\n</hr>\n<p>\nОтвет:\nМы стараемся для вас :)\n<hr>\n</p>\n<p>\nВалерия\nЗдравствуйте. Хотела бы попробовать у вас кофейный напиток Venda, но увы.... У вас расфасовки по 1 кг. А если мне нужно меньше, то как быть? И так не только с этим напитком. А за конфетки энергетические спасибо. Они работают:-)\n23.10.2014\n</p>\n<p>\nОтвет:\nДоброго, Валерия. У данного продукта расфасовка только по 1 кг. Очень не хотелось бы её потрошить и делить на меньшие порции по понятным причинам. С другой стороны если соберутся желающие и это не исключено.\n<hr>\n</p>\n<p>\nТатьяна\nПривет))))\nТак держать!\nА я вот (как и каждый день) пью Ваш чай, сегодня Пуэр..ммммм\nСпасибо, люблю Ваш магазин!\n23.10.2014\n</p>\n<p>\nОтвет:\nА мы любим Вас :)\n<hr>\n</p>\n<p>\nЮлия\nОтличный сервис!Хорошее отношение к клиенту!Работа без задержек!Недавно сотрудничаем,но уже имеем положительное впечатление!\n02.10.2014\n</p>\n<p>\nОтвет:\nЮля, спасибо за приятные слова! Мы стараемся :)\n<hr>\n</p>\n<p>\nАлександр\nПривет.Скажите, можно ли маленьким оптом у вас купить кофе для личного пользования так сказать?Есть ли при этом скидка и какой минимум?</p>\nОтвет:\nДанные вопросы мы решаем при телефонном разговоре. \n', 'otzivi', 'ru', 'show', '0000-00-00 00:00:00'),
(4, 'Брэнды', '<strong><ul>\r\n<li>Blaser Cafe AG</li>\r\n<li>Brooke Bond</li>\r\n<li>Elektra - итальянские кофемашины</li>\r\n<li>Matador</li>\r\n<li>История чая "Беседа"</li>\r\n<li>Торговая марка Ronnefeldt</li>\r\n<li>ХАУСБРАНДТ (HAUSBRANDT)</li>\r\n</ul>\r\n</strong>', 'brendi', 'ru', 'show', '0000-00-00 00:00:00'),
(6, 'Чай', '<p>\n<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/d/de/Bohea_Tea_tree.jpg/220px-Bohea_Tea_tree.jpg" align="right" hspace="6" vspace="6" WIDTH="150" HEIGHT="200">\n</p>\n\n\n<p>Чай (кит. 茶 — «ча́» на пекинском и гуандунском диалекте, «те̂» на амойском и «тцай-е» на тайваньском) — напиток, получаемый варкой, завариванием и/или настаиванием листа чайного куста, который предварительно подготавливается специальным образом.</p>\n\n<p>Чаем также называется сам лист чайного куста, обработанный и подготовленный для приготовления напитка. Подготовка эта включает предварительную сушку (вяление), скручивание, более или менее длительное ферментативное окисление, окончательную сушку. Прочие операции вводятся в процесс только для производства отдельных видов и сортов чая.</p>\n\n<p>Иногда слово «чай» используют и в качестве названия чайного куста — вида растений рода Камелия семейства Чайные; в ботанической научной литературе для этого вида обычно используется название камелия китайская (Camellia sinensis).</p>\n\n<p>Чаем в широком смысле может именоваться любой напиток, приготовленный путём заваривания предварительно подготовленного растительного материала. В названиях таких напитков к слову «чай», как правило, добавляется пояснение, характеризующее используемое сырьё («травяной чай», «ягодный чай», «фруктовый чай» и так далее).</p>', 'chai', 'ru', 'show', '0000-00-00 00:00:00'),
(7, 'Кофе', '<p>\n<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/4/45/A_small_cup_of_coffee.JPG/200px-A_small_cup_of_coffee.JPG" align="right" hspace="6" vspace="6">\n</p>\n\n<p>Ко́фе — напиток, изготавливаемый из жареных семян (зёрен) нескольких видов растений, относящихся к роду Кофе (Coffea) семейства Мареновые (Rubiaceae).</p>\n\n<p>Насчитывается более 90 видов растений, относящихся к роду кофе (Coffea).</p>\n\n<p>Существует два основных используемых в промышленных масштабах вида кофейных деревьев и, соответственно, зёрен, получаемых из плодов этих деревьев: Coffea arabica L. — арабика и Coffea canephora Pierre ex Froehn., или робуста, которую иногда называют конголезским кофе. На эти два вида приходится по разным оценкам до 98 % производимого кофе. Этот объём делится в соотношении 70 % — арабика, 30 % — робуста. На остальные виды кофе приходится лишь 2 % мирового производства.</p>\n\n<p>Наиболее распространённый сорт кофе, арабика, произрастает на высоте от 900 до 2000 метров над уровнем моря. Зёрна, как правило, имеют продолговатую форму, гладкую поверхность, слегка изогнутую в форме буквы «S» линию, в которой обычно после лёгкой обжарки остаются невыгоревшие частицы кофейной ягоды.</p>\n\n<p>Вид робуста является быстрорастущим и более устойчивым к вредителям, чем арабика, и произрастает примерно от 0 до 600 м над уровнем моря, прежде всего — в тропических районах Африки, Индии и Индонезии. Зёрна имеют округлую форму, цвет — от светло-коричневого до серовато-зелёного.</p>\n\n<p>Робуста обычно считается менее изысканным кофе с точки зрения аромата. В то же время она содержит больше кофеина, а также часто используется в эспрессо-смесях, что позволяет добиваться более качественной кофейной пенки и удешевляет смесь.</p>\n\n<p>Другие сорта, например, либерика и эксцельса, не имеют промышленного значения. Производящийся в Азии (Индонезия, Филиппины, южная Индия) сорт «Копи Лювак» или «Капе Аламид», является самым дорогим кофе (около 750 рублей за чашку), поскольку для правильного приготовления должен пройти пищевую цепочку, включающую желудочно-кишечный тракт мусанга, или азиатской пальмовой циветты (Paradoxurus hermaphroditus) — небольшого зверька семейства виверровых. Без последнего звена вкус и аромат этого кофе весьма посредственные.</p>\n\n<p>Недавно появился и более дешёвый (в 10 раз) аналог Копи Лювак, «Monkey Coffee» (Манки Кофе), с тайваньских плантаций на склонах Формозских гор, с такой же сложной цепочкой обработки сырых зёрен.</p>', 'cofe', 'ru', 'show', '0000-00-00 00:00:00'),
(8, 'Горячий шоколад (какао)', '<p>\n<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/2/2a/Chocolati%C3%A8re_style_empire.jpg/150px-Chocolati%C3%A8re_style_empire.jpg" align="right" hspace="6" vspace="6">\n</p>\n\n\n<p>Какао — напиток, в состав которого обязательно входит какао, а также молоко (или вода) и сахар. Напиток обычно безалкогольный. В современном мире распространены две основных разновидности напитка:</p>\n\n    <p><ol><li>Горячий шоколад готовят из растопленного плиточного шоколада (или шоколадной стружки) исключительно на молоке с добавлением ванили, сахара, корицы и взбивают его до состояния пены.\n</li>\n    <li>Более простой в приготовлении напиток, называемый обычно какао, варят на воде или молоке из порошка какао. Употребляют как горячим, так и холодным. В Италии и Испании предпочитают напиток повышенной густоты (итал. cioccolata densa).</li>\n</ol>\n</p>\n<p>Какао-молоко получают путём растворения порошка какао в коровьем, козьем или ином молоке. Употребляют его обычно охлаждённым. В Мексике популярен горячий шоколад с кукурузной мукой — чампуррадо.\n</p>\n<p>До XIX века жидкий шоколад использовался в медицинских целях и нередко продавался в аптеках. Горячему шоколаду приписывали следующие целебные свойства: лечение депрессий, улучшение самочувствия, быстрое заживление ран[2]. В некоторых странах его относили к афродизиакам[3].\n</p>\n<p>Согласно одному из исследований, холодное какао является самым быстрым восстановителем мышц после спортивных занятий или тяжёлой физической работы, превосходя по этому параметру специальные напитки, предназначенные для спортсменов[4].\n</p>\n<p>Для тех людей, которым противопоказаны возбуждающие вещества (кофеин, теобромин), предназначен кэроб — заменитель какао, получаемый из стручков рожкового дерева. Его аромат заметно слабее, поэтому для приготовления напитка требуется большее количество порошка[1]. Из того же растительного сырья изготавливают твёрдый (плиточный) кэроб-шоколад.</p>', 'shoko', 'ru', 'show', '0000-00-00 00:00:00'),
(9, 'Бальзам', '<p><img src="http://narod-medicina.ru/wp-content/uploads/2009/08/balzam.jpg" align="right" hspace="6" vspace="6" WEIGHT="150" HEIGHT="200"></p>\n\n<p>Бальзам (напиток) — спиртовая настойка различных целебных трав.</p>\n\n<p>В русский язык слово «бальзам» пришло из немецкого нем. Balsam, которое заимствовано из латинского лат. balsamum, в латынь же оно попало из греческого греч. βάλσαμον, а в греческий — из арабского источника.</p>\n\n<p>Является крепким алкогольным напитком (40-45 % об. спирта). Натуральные добавки из трав, кореньев, плодов, различных эфирных масел придают бальзаму своеобразный вкус и аромат.</p>\n\n<em>Бальза́м «Кра́сная Поля́на» — тёмно-коричневый крепкий бальзам (45 градусов) с полным, слегка жгучим, с горчинкой вкусом и сложным, гармоничным, с пряными и цитрусовыми тонами ароматом, родом из Красной Поляны (Сочи, Краснодарский край).\n\nБальзам изготовлен на основе растительного сырья, собранного в горном Причерноморье. Натуральные добавки бальзама — алычовый и яблочный соки, морсы кураги, киви, изюма и мёд придают бальзаму широкую гамму вкусовых оттенков.\n\nРецептура и технология разработаны Всероссийским научно-исследовательским институтом пищевой биотехнологии Российской академии сельскохозяйственных наук.\n\nВ промышленном виде существует с 2003 г. За это время получил множество медалей и дипломов на различных международных конкурсах ликёро-водочной продукции.</em>', 'balz', 'ru', 'show', '2014-11-25 00:00:00'),
(10, 'Сироп', '<p><img src="https://upload.wikimedia.org/wikipedia/commons/1/18/Maple_syrup.jpg" align="right" hspace="6" vspace="6" WEIGHT="150" HEIGHT="200">\n</p>\n\n<br>Сиро́п (фр. sirop, араб. شراب صيدلاني‎‎ (шараб)) — концентрированный сахарный раствор или смесь отдельных сахаров (сахарозы, глюкозы, фруктозы, мальтозы) в воде или в натуральном фруктовом соке. Содержание сахара в сиропе обычно колеблется от 40 до 80 %.\n\n<br>Определение концентрации сиропа в быту\nКлейкая капля\n\n<br>Десертной ложкой зачерпнуть несколько капель, помять между большим и указательным пальцами. Клейкая капля показывает самую малую концентрацию сиропа. Чтобы получить стоит ограничиться растворением сахара в кипяченой воде в соотношении 50:50.\nТонкая нитка\n<br>\nВылить немного сиропа на холодную тарелку, слегка прижать к нему донышко холодной десертной ложки и сразу поднять ложку вверх. Вслед потянется нитка, сравнимая по толщине с ниткой для шитья.\nТолстая нитка\n<br>\nДействовать также как и для пробы на тонкую нитку. Потянется нитка, сравнимая по толщине с проводом компьютерной мыши.\n<br>\nМожно также быстро обдувая, схватить большим и указательным пальцами каплю сиропа и несколько раз быстро раздвинуть пальцы в стороны. Однако, подобный метод хорош для опытных кулинаров, слишком велик риск обжечься.\nМягкий шарик\n<br>\nКапнуть кипящий сироп в холодную воду. После остывания, из капли можно пальцами скатать мягкий шарик.\nТвёрдый шарик\n<br>\nПроба напоминает предыдущую. В холодной воде образуется твёрдый шарик.\nКарамель\n<br>\nСкатать шарик на этой стадии уже невозможно. Твёрдый карамельный комочек ломается в холодной воде. При раскусывании должен не прилипать к зубам, но рассыпаться на мелкие кусочки.\nЖжёнка\n<br>\nПрактически не содержит воды. При нагревании до этой стадии, сироп меняет цвет от жёлтого вначале до тёмно-коричневого в конце, и начинает выделять удушливый дым. Для кондитерских целей жжёнка в чистом виде не используется. Её можно использовать как лекарство против кашля (зачерпнуть ложкой и охладить).\n<br>\nТакже используется для получения в домашних условиях коричневой пищевой краски. Для этого в жжёнку добавляют половину стакана горячей воды и мешают до растворения комков.', 'sirops', 'ru', 'show', '2014-11-25 00:00:00'),
(11, 'Десерты', '<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/%D0%94%D0%B5%D1%81%D0%B5%D1%80%D1%82.jpg/1024px-%D0%94%D0%B5%D1%81%D0%B5%D1%80%D1%82.jpg" align="right" hspace="6" vspace="6" width="150" height="120">\n\n\n<br>Десе́рт (от фр. dessert) — завершающее блюдо стола, предназначенное для получения приятных вкусовых ощущений в конце обеда или ужина, обычно — сладкие деликатесы.\n\n<br>Обычай употреблять после основных блюд сладости широко распространился в Европе только в 19 веке, когда выросло производство сахара. До того привилегия наслаждаться десертами была доступна только богатым людям. На простых столах сладости появлялись только по праздникам — отсюда стремление как можно изящнее украсить десерт. Эта традиция сохранилась до нашего времени, хотя сладости на нашем столе — постоянное явление.\n\n<br>ак правило, является сладким (например, пирожное или мороженое), но бывают и несладкие десерты из фруктов, орехов, сыров, несладких кондитерских изделий. Кроме того, не все сладкие блюда являются десертами, например в китайской кухне имеются сладкие мясные блюда, не являющиеся десертами. В Китае также встречаются конфеты с перцем и имбирём вместо сахара. Коренные американцы до прихода европейцев делали шоколад с перцем и пряностями вместо сахара. Даже в русской кухне встречаются несладкие десерты — например, чёрная икра. Классическим французским десертом считается сыр.\n\n<br>В качестве десерта могут подаваться кондитерские изделия: торты, печенья, вафли, кексы, пироги; различные виды конфет, пастила, блюда из взбитых сливок; сладкие фруктово-ягодные смеси (так называемые фруктовые салаты, иногда с добавлением других ингредиентов, как салат из Сникерса); соки, содовые воды, компоты, кисели; сладкие молочные, шоколадные и фруктово-ягодные муссы, кремы, желе; мороженое и десерты из мороженого; десертом может быть чай, какао, кофе, кофе с мороженым (café glacé); специальные десертные вина — словом, всё то, что может подаваться на «третье».\n\n<br>По температуре подачи десерты делятся на горячие и холодные. Десерты подаются обычно в специальных десертных тарелках. Едят как правило десертной ложкой — промежуточной по размеру между суповой ложкой и чайной. Десертный стол также сервируется десертным ножом и десертной вилкой.', 'deserts', 'ru', 'show', '2014-11-25 00:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `pics`
--

CREATE TABLE IF NOT EXISTS `pics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_id` int(11) NOT NULL,
  `name` tinytext CHARACTER SET utf8 NOT NULL,
  `pictrure` tinytext CHARACTER SET utf8 NOT NULL,
  `showhide` enum('show','hide') CHARACTER SET utf8 NOT NULL DEFAULT 'show',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `pics`
--

INSERT INTO `pics` (`id`, `cat_id`, `name`, `pictrure`, `showhide`) VALUES
(1, 6, 'green', 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/cb/Tea_leaves_steeping_in_a_zhong_%C4%8Daj_05.jpg/220px-Tea_leaves_steeping_in_a_zhong_%C4%8Daj_05.jpg', 'show'),
(3, 6, 'black', 'http://chaepedia.com/uploads/posts/2012-10/1349631453_krasnyy-chay-mozhno-ispolzovat-dlya-pohudeniya.jpg', 'show');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` tinytext NOT NULL,
  `pass` tinytext NOT NULL,
  `email` tinytext NOT NULL,
  `datereg` date NOT NULL,
  `lastvisit` datetime NOT NULL,
  `blockunblock` enum('unblock','block') NOT NULL DEFAULT 'unblock',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `pass`, `email`, `datereg`, `lastvisit`, `blockunblock`) VALUES
(1, 'sirenday', '111', 'qweqweqwe@wddw.ru', '2014-11-27', '2014-11-27 10:46:46', 'unblock');
--
-- База данных: `odezda`
--

-- --------------------------------------------------------

--
-- Структура таблицы `brands`
--

CREATE TABLE IF NOT EXISTS `brands` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `showhide` enum('show','hide') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `brands_showhide_index` (`showhide`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=20 ;

--
-- Дамп данных таблицы `brands`
--

INSERT INTO `brands` (`id`, `name`, `showhide`, `created_at`, `updated_at`) VALUES
(1, 'Леди лайн', 'show', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Мода Юрс', 'show', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Надин Н', 'show', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Панда', 'show', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Твой имидж', 'show', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Фофелюр', 'show', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Эола', 'show', '2014-11-21 22:15:06', '2014-11-21 22:15:06'),
(8, 'Lenta', 'show', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Vladini', 'show', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, '4R (sport)', 'show', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Lakbi', 'show', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Burvin', 'show', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'Favorini', 'show', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'Iva', 'show', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'Parus Jeans', 'show', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'Данаида', 'show', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'Понфира', 'show', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'Милавица', 'show', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'Серж', 'show', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `showhide` enum('show','hide') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `categories_showhide_index` (`showhide`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `name`, `showhide`, `created_at`, `updated_at`) VALUES
(1, 'Блузки, туники ', 'show', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Нижнее белье', 'show', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Брюки, шорты ', 'show', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Джемпера, кардиганы, жакеты ', 'show', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Комбинезоны ', 'show', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Костюмы, комплекты ', 'show', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Платья ', 'show', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Плащи, куртки, пальто', 'show', '2014-11-21 22:07:05', '2014-11-21 22:07:05'),
(9, 'Сарафаны ', 'show', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Юбки', 'show', '2014-11-21 22:04:57', '2014-11-21 22:04:57');

-- --------------------------------------------------------

--
-- Структура таблицы `maintexts`
--

CREATE TABLE IF NOT EXISTS `maintexts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `showhide` enum('show','hide') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `maintexts_showhide_index` (`showhide`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `maintexts`
--

INSERT INTO `maintexts` (`id`, `name`, `body`, `url`, `showhide`, `created_at`, `updated_at`) VALUES
(1, 'Интернет магазин белорусской одежды', '<p style="text-align: justify">В интернет магазине <em>"</em><strong>Белорусский Трикотаж</strong>" &nbsp; Вы можете ознакомиться с самыми актуальными коллекциям белорусских производителей одежды. &nbsp;Широкий ассортимент платьев и&nbsp; женских костюмов приятно Вас удивят, а цены будут радовать глаза. Мы отправляем товар в Россию, Беларусь, Казахстан. Если Вы из другой страны, то на этапа оформления заказа потребуется согласовать стоимость доставки и методы оплаты. Наши менеджеры обработают Ваш заказ и немедленно подберут самую оптимальную для Вас схему.&nbsp;</p>\r\n<h3>Преимущества нашего интернет магазина одежды:</h3>\r\n<ul>\r\n    <li><strong>Низкие цены</strong> на белорусскую одежду, представленную в нашем каталоге.&nbsp;</li>\r\n    <li>Широкий и свежий ассортимент одежды белорусских производителей.</li>\r\n    <li>Низкая стоимость доставки. В пределах Беларуси доставка покупки осуществляется бесплатно. Для жителей России доставка фиксированная. Тем самым Вы платите за доставку только первой купленной вещи, а доставка остальных получается совершенно бесплатно.</li>\r\n    <!--<li>У нас Вы можете купить через <strong>интернет магазин белорусскую одежду</strong> как в розницу, так и оптом. Опт начинается всего от 15 единиц одежды.</li>--> </ul>\r\n    <h2>Как совершить покупку:</h2>\r\n    <p>Внимательно изучите шаги по оформелению заказа на нашем сайте. &nbsp;Покупка <strong>одежды из Белоруссии</strong> у нас осуществ:</p>\r\n    <ul>\r\n        <li>Первым шагом оформляете заказ: ложите понравившиеся модели в корзину, переходите на страницу корзины и заполняете поля. После этого заказ попадает к нам в обработку и мы проверяем наличие на складе.</li>\r\n        <li>После проверки наличия на складе, мы отправляем Вам проверенный заказ и выставляем счет для оплаты. Оплатить необходимо в течении двух дней. Если оплатить не получилось, то необходимо заново проверить наличие на складе.</li>\r\n        <li>После оплаты мы в течении 2 рабочих дней высылаем заказ на указанный Вами адрес &nbsp;тем способом доставки, который был выбран.</li>\r\n    </ul>\r\n    <p>&nbsp;</p>\r\n    <h2><strong>о белорусском трикотаже</strong></h2>\r\n    <p style="text-align: justify">&nbsp;Трикотажные полотна известны людям уже более тысячи лет, со времён Древнего Египта. Сегодня одним из основных производителей и поставщиков трикотажа на европейский рынок является <strong>Белоруссия</strong>.<br>\r\n    <br>\r\n    Способы плетения трикотажа менялись с течением времени, появлялись и развивались новые <strong>швейные фирмы Белоруссии</strong>, и сегодня белорусский трикотаж – это полотно, имеющее воздушную петельную структуру разной плотности и рисунка. Трикотажные изделия удобны и практичны в носке, хорошо растягиваются и садятся по фигуре. Трикотаж одновременно сохраняет тепло и позволяет телу дышать.<br>\r\n    <br>\r\n    &nbsp;&nbsp; Из белорусского трикотажа шьют самую различную одежду: костюмы и платья, брюки и свитера, верхнюю одежду и нижнее бельё, чулочно-носочную продукцию и головные уборы. Отдельное место среди разнообразия такой продукции занимает &nbsp;женский трикотаж.&nbsp;<br>\r\n    <br>\r\n    <strong>Белорусский трикотаж</strong> стал брендом еще в советские времена, и с тех пор не потерял своих позиций на рынке женской одежды всех просторов бывшего СССР. Поэтому любая белорусская фирма, специализирующаяся на производстве одежды (а их в Белоруссии ныне больше тысячи)  давно существующая или вновь созданная, позиционирует себя как <strong>белорусский трикотаж</strong>, и не только позиционирует, но и старается соответствовать высоким критериям этого бренда. И совершенно не случайно.</p>\r\n    <p style="text-align: justify"><br>\r\n    <strong>Белорусская одежда</strong>&nbsp;- это отслеживание новых веяний мировой моды с адаптацией их к нашему потребителю. Задумывались ли вы над тем,  почему зачастую модный импортный костюм, прекрасно пошитый "плохо сидит" на вас? Дело не только в индивидуальных особенностях фигуры, но и в антропологии.  Скорее всего, костюм шили для рынка одной из стран Западной Европы. Между тем у среднестатистической немецкой женщины уже бедра, но шире плечи и длиннее руки, нежели у среднестатистической славянской. У француженок тоже несколько иная конституция. Так что подходит нам далеко не все, что шьют и носят в Европе. Но при этом белорусский трикотаж это современные ткани, модная фурнитура, соответствующая сезону и моде цветовая палитра.</p>\r\n    <p style="text-align: justify"><br>\r\n    <strong>Белорусская одежда </strong>&nbsp;- это поистине высокое качество продукции. Костюм или блузку можно носить долго, стирать, чистить. При этом&nbsp; товарный вид блузы&nbsp; будет сохраняться&nbsp; очень долго время. Пуговицы не отвалятся и швы не расползутся, поскольку  производится белорусский трикотаж из высококачественного сырья, а технология пошива соблюдается на каждом этапе от начала изготовления изделия до его завершения.&nbsp;</p>\r\n    <p style="text-align: justify"><br>\r\n    <strong>Белорусский трикотаж</strong> &nbsp;- это широчайший ассортимент, разнообразие стилей и размеров. Модную и красивую одежду может подобрать для себя и девочка - подросток и женщина старше бальзаковского возраста, студентка и бизнес-леди, хрупкая инженю и женщина с рубенсовскими формами.</p>\r\n    <p style="text-align: justify"><strong>Белорусская одежда</strong> - это приемлемая средневзвешенная цена.  Рынок предлагает нам большое разнообразие одежды различных производителей, от эксклюзивных изделий европейских дизайнеров, до подвального пошива Турции и Китая. Первое большинству покупателей не по карману, второе - слишком уж непритязательно. Белорусский трикотаж разумный компромисс между двумя крайностями, оптимальное соотношение качества и цены.</p>\r\n    <p style="text-align: justify">Если Вы ищите интернет магазин белорусской одежды, то &nbsp;у нас Вы сможете найти широкий ассортимент производителей <strong>одежды из Белоруссии</strong> и <strong>купить</strong> понравившиеся модели.</p>\r\n    ', 'index', 'show', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Контакты', '<p>номера тел:</p>\r\n<p>+(795)05000676</p>\r\n<p>+(375)445555945</p>\r\nпочта: <b>odezda.hm<span>@</span>gmail.com</b>\r\n', 'contact', 'show', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_11_14_211631_create_categories_table', 1),
('2014_11_18_153846_create_users', 2),
('2014_11_19_085937_create_brands', 3),
('2014_11_19_105301_create_products', 3),
('2014_11_21_083306_create_maintexts', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `razmers` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `isAccia` tinyint(4) NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `picture` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `picturesmall` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `showhide` enum('show','hide') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `products_showhide_index` (`showhide`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=97 ;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `name`, `body`, `price`, `razmers`, `isAccia`, `category_id`, `brand_id`, `picture`, `picturesmall`, `showhide`, `created_at`, `updated_at`) VALUES
(19, 'БЛУЗА 21325', '', '', '42,44,46', 0, 1, 11, '14_11_21_08_52.jpg', 's_14_11_21_08_52.jpg', 'show', '2014-11-21 02:52:53', '2014-11-21 02:52:53'),
(20, 'БЛУЗА 21317', '', '', '42,44,46', 0, 1, 11, '14_11_21_08_54.jpg', 's_14_11_21_08_54.jpg', 'show', '2014-11-21 02:54:18', '2014-11-21 02:54:18'),
(22, 'БЛУЗА 21324', '', '', '42,44,46', 0, 1, 11, '14_11_21_10_15.jpg', 's_14_11_21_10_15.jpg', 'show', '2014-11-21 04:15:34', '2014-11-21 04:15:34'),
(23, 'БЛУЗА 21339', '', '', '42,44,46,48', 0, 1, 11, '14_11_21_10_16.jpg', 's_14_11_21_10_16.jpg', 'show', '2014-11-21 04:16:39', '2014-11-21 04:16:39'),
(24, 'БЛУЗА 21340', '', '', '42,44,46', 0, 1, 11, '14_11_21_10_18.jpg', 's_14_11_21_10_18.jpg', 'show', '2014-11-21 04:18:14', '2014-11-21 04:18:14'),
(25, 'В607', '', '', '50,52,54', 0, 3, 6, '14_11_22_03_47.jpg', 's_14_11_22_03_47.jpg', 'show', '2014-11-21 21:47:53', '2014-11-21 21:47:53'),
(26, 'В525', '', '', '42,44,46', 0, 4, 6, '14_11_22_03_50.jpg', 's_14_11_22_03_50.jpg', 'show', '2014-11-21 21:50:08', '2014-11-21 21:50:08'),
(27, 'В522', '', '', '48,50,52', 0, 4, 6, '14_11_22_04_02.jpg', 's_14_11_22_04_02.jpg', 'show', '2014-11-21 22:02:26', '2014-11-21 22:02:26'),
(28, 'В277', '', '', '46,48,50', 0, 6, 6, '14_11_22_04_03.jpg', 's_14_11_22_04_03.jpg', 'show', '2014-11-21 22:03:42', '2014-11-21 22:03:42'),
(29, 'В282', '', '', '58,60,62', 0, 6, 6, '14_11_22_04_05.jpg', 's_14_11_22_04_05.jpg', 'show', '2014-11-21 22:05:11', '2014-11-21 22:05:11'),
(30, 'В288', '', '', '48,50,52', 0, 6, 6, '14_11_22_04_07.jpg', 's_14_11_22_04_07.jpg', 'show', '2014-11-21 22:07:41', '2014-11-21 22:07:41'),
(31, 'B289', '', '', '52,54,56,58,60', 0, 6, 6, '14_11_22_04_09.jpg', 's_14_11_22_04_09.jpg', 'show', '2014-11-21 22:09:14', '2014-11-21 22:09:14'),
(32, 'B290', '', '', '46,48,50', 0, 6, 6, '14_11_22_04_10.jpg', 's_14_11_22_04_10.jpg', 'show', '2014-11-21 22:10:19', '2014-11-21 22:10:19'),
(33, 'B291', '', '', '52,54,56', 0, 6, 6, '14_11_22_04_12.jpg', 's_14_11_22_04_12.jpg', 'show', '2014-11-21 22:12:23', '2014-11-21 22:12:23'),
(34, 'B294', '', '', '42,44,46', 0, 6, 6, '14_11_22_04_13.jpg', 's_14_11_22_04_13.jpg', 'show', '2014-11-21 22:13:58', '2014-11-21 22:13:58'),
(35, 'B295', '', '', '54,56,58', 0, 6, 6, '14_11_22_04_14.jpg', 's_14_11_22_04_14.jpg', 'show', '2014-11-21 22:14:57', '2014-11-21 22:14:57'),
(36, 'B297', '', '', '50,52,54', 0, 6, 6, '14_11_22_04_15.jpg', 's_14_11_22_04_15.jpg', 'show', '2014-11-21 22:15:52', '2014-11-21 22:15:52'),
(37, 'B298', '', '', '44,46,48', 0, 6, 6, '14_11_22_04_16.jpg', 's_14_11_22_04_16.jpg', 'show', '2014-11-21 22:16:52', '2014-11-21 22:16:52'),
(38, 'B299', '', '', '42,44,46', 0, 6, 6, '14_11_22_04_18.jpg', 's_14_11_22_04_18.jpg', 'show', '2014-11-21 22:18:31', '2014-11-21 22:18:31'),
(39, 'B904', '', '', '54,56,58', 0, 6, 6, '14_11_22_04_20.jpg', 's_14_11_22_04_20.jpg', 'show', '2014-11-21 22:20:27', '2014-11-21 22:20:27'),
(40, 'B909', '', '', '46,48,50', 0, 6, 6, '14_11_22_04_21.jpg', 's_14_11_22_04_21.jpg', 'show', '2014-11-21 22:21:45', '2014-11-21 22:21:45'),
(41, 'B250', '', '', '52,54,56', 0, 6, 6, '14_11_22_04_22.jpg', 's_14_11_22_04_22.jpg', 'show', '2014-11-21 22:22:42', '2014-11-21 22:22:42'),
(42, 'B520', '', '', '50,52,54', 0, 8, 19, '14_11_22_04_26.jpg', 's_14_11_22_04_26.jpg', 'show', '2014-11-21 22:26:38', '2014-11-21 22:26:38'),
(43, 'B524', '', '', '52,54,56', 0, 8, 6, '14_11_22_04_27.jpg', 's_14_11_22_04_27.jpg', 'show', '2014-11-21 22:27:34', '2014-11-21 22:27:34'),
(44, 'B843', '', '', '44,46,48', 0, 7, 6, '14_11_22_04_29.jpg', 's_14_11_22_04_29.jpg', 'show', '2014-11-21 22:29:04', '2014-11-21 22:29:04'),
(45, 'B112', '', '', '46,48,50', 0, 7, 6, '14_11_22_04_30.jpg', 's_14_11_22_04_30.jpg', 'show', '2014-11-21 22:30:34', '2014-11-21 22:30:34'),
(46, 'B136', '', '', '48,50,52', 0, 7, 6, '14_11_22_04_31.jpg', 's_14_11_22_04_31.jpg', 'show', '2014-11-21 22:31:29', '2014-11-21 22:31:29'),
(47, 'B168', '', '', '52,54,56', 0, 7, 6, '14_11_22_04_32.jpg', 's_14_11_22_04_32.jpg', 'show', '2014-11-21 22:32:52', '2014-11-21 22:32:52'),
(48, 'B173', '', '', '50,52,54', 0, 7, 6, '14_11_22_04_34.jpg', 's_14_11_22_04_34.jpg', 'show', '2014-11-21 22:34:04', '2014-11-21 22:34:04'),
(49, 'B177', '', '', '52,54,56', 0, 7, 6, '14_11_22_04_35.jpg', 's_14_11_22_04_35.jpg', 'show', '2014-11-21 22:35:53', '2014-11-21 22:35:53'),
(50, 'B193', '', '', '52,54,56', 0, 7, 6, '14_11_22_04_37.jpg', 's_14_11_22_04_37.jpg', 'show', '2014-11-21 22:37:20', '2014-11-21 22:37:20'),
(51, 'B245', '', '', '52,54', 0, 7, 6, '14_11_22_04_38.jpg', 's_14_11_22_04_38.jpg', 'show', '2014-11-21 22:38:22', '2014-11-21 22:38:22'),
(52, 'B526', '', '', '48,50,52', 0, 7, 6, '14_11_22_04_39.jpg', 's_14_11_22_04_39.jpg', 'show', '2014-11-21 22:39:12', '2014-11-21 22:39:12'),
(53, 'B702', '', '', '48,50,52', 0, 7, 6, '14_11_22_04_40.jpg', 's_14_11_22_04_40.jpg', 'show', '2014-11-21 22:40:15', '2014-11-21 22:40:15'),
(56, 'B704', '', '', '48,50,52', 0, 7, 6, '14_11_22_04_43.jpg', 's_14_11_22_04_43.jpg', 'show', '2014-11-21 22:43:27', '2014-11-21 22:43:27'),
(57, 'B706', '', '', '50,52,54', 0, 7, 6, '14_11_22_04_44.jpg', 's_14_11_22_04_44.jpg', 'show', '2014-11-21 22:44:28', '2014-11-21 22:44:28'),
(58, 'B708', '', '', '48,50,52', 0, 7, 6, '14_11_22_04_45.jpg', 's_14_11_22_04_45.jpg', 'show', '2014-11-21 22:45:09', '2014-11-21 22:45:09'),
(60, 'B710', '', '', '52,54,56', 0, 7, 6, '14_11_22_04_46.jpg', 's_14_11_22_04_46.jpg', 'show', '2014-11-21 22:46:23', '2014-11-21 22:46:23'),
(61, 'B715', '', '', '54,56,58', 0, 7, 6, '14_11_22_04_47.jpg', 's_14_11_22_04_47.jpg', 'show', '2014-11-21 22:47:01', '2014-11-21 22:47:01'),
(62, 'B719', '', '', '48,50,52', 0, 7, 6, '14_11_22_04_47.jpg', 's_14_11_22_04_47.jpg', 'show', '2014-11-21 22:47:52', '2014-11-21 22:47:52'),
(63, 'B721', '', '', '50,52,54', 0, 7, 6, '14_11_22_04_48.jpg', 's_14_11_22_04_48.jpg', 'show', '2014-11-21 22:48:28', '2014-11-21 22:48:28'),
(64, 'B722', '', '', '48,50,52', 0, 7, 6, '14_11_22_04_49.jpg', 's_14_11_22_04_49.jpg', 'show', '2014-11-21 22:49:15', '2014-11-21 22:49:15'),
(66, 'B724', '', '', '50,52,54', 0, 7, 6, '14_11_22_04_50.jpg', 's_14_11_22_04_50.jpg', 'show', '2014-11-21 22:50:34', '2014-11-21 22:50:34'),
(67, 'B736', '', '', '50,52,54', 0, 7, 6, '14_11_22_04_51.jpg', 's_14_11_22_04_51.jpg', 'show', '2014-11-21 22:51:31', '2014-11-21 22:51:31'),
(68, 'B742', '', '', '48,50,52', 0, 7, 6, '14_11_22_04_52.jpg', 's_14_11_22_04_52.jpg', 'show', '2014-11-21 22:52:21', '2014-11-21 22:52:21'),
(69, 'B753', '', '', '48,50,52', 0, 7, 6, '14_11_22_04_53.jpg', 's_14_11_22_04_53.jpg', 'show', '2014-11-21 22:53:09', '2014-11-21 22:53:09'),
(71, 'B762', '', '', '50,52,54', 0, 7, 6, '14_11_22_04_54.jpg', 's_14_11_22_04_54.jpg', 'show', '2014-11-21 22:54:39', '2014-11-21 22:54:39'),
(72, 'B763', '', '', '48,50,52', 0, 7, 6, '14_11_22_04_55.jpg', 's_14_11_22_04_55.jpg', 'show', '2014-11-21 22:55:32', '2014-11-21 22:55:32'),
(73, 'B771', '', '', '50,52,54', 0, 7, 6, '14_11_22_04_56.jpg', 's_14_11_22_04_56.jpg', 'show', '2014-11-21 22:56:31', '2014-11-21 22:56:31'),
(74, 'B779', '', '', '48,50,52', 0, 7, 6, '14_11_22_04_57.jpg', 's_14_11_22_04_57.jpg', 'show', '2014-11-21 22:57:10', '2014-11-21 22:57:10'),
(76, 'B782', '', '', '48,50,52', 0, 7, 7, '14_11_22_04_58.jpg', 's_14_11_22_04_58.jpg', 'show', '2014-11-21 22:58:38', '2014-11-21 22:58:38'),
(77, 'B783', '', '', '52,54,56', 0, 7, 6, '14_11_22_04_59.jpg', 's_14_11_22_04_59.jpg', 'show', '2014-11-21 22:59:45', '2014-11-21 22:59:45'),
(78, 'B787', '', '', '50,52,54', 0, 7, 6, '14_11_22_05_00.jpg', 's_14_11_22_05_00.jpg', 'show', '2014-11-21 23:00:27', '2014-11-21 23:00:27'),
(79, 'В789', '', '', '48,50,52', 0, 7, 6, '14_11_22_05_29.jpg', 's_14_11_22_05_29.jpg', 'show', '2014-11-21 23:29:03', '2014-11-21 23:29:03'),
(80, 'БЛУЗА 21344', '', '', '42,44,46', 0, 1, 11, '14_11_22_06_02.jpg', 's_14_11_22_06_02.jpg', 'show', '2014-11-22 00:02:03', '2014-11-22 00:02:03'),
(81, 'БЛУЗА 21385', '', '', '42,44,46', 0, 1, 11, '14_11_22_06_03.jpg', 's_14_11_22_06_03.jpg', 'show', '2014-11-22 00:03:03', '2014-11-22 00:03:03'),
(83, 'БЛУЗА 21433', '', '', '42,44,46', 0, 1, 11, '14_11_22_06_05.jpg', 's_14_11_22_06_05.jpg', 'show', '2014-11-22 00:05:00', '2014-11-22 00:05:00'),
(84, 'БЛУЗА 21533', '', '', '42,44,46', 0, 1, 11, '14_11_22_06_06.jpg', 's_14_11_22_06_06.jpg', 'show', '2014-11-22 00:06:06', '2014-11-22 00:06:06'),
(85, 'БЛУЗА 21536', '', '', '42,44,46,48', 1, 1, 11, '14_11_22_06_07.jpg', 's_14_11_22_06_07.jpg', 'show', '2014-11-23 23:08:54', '2014-11-23 23:08:54'),
(86, '11', '<p>111</p>\r\n', '11', '11', 0, 10, 19, '', '', 'show', '2014-11-23 22:53:39', '2014-11-23 22:53:39'),
(87, 'test', '<p>222</p>\r\n', '11', '11', 0, 10, 19, '', '', 'show', '2014-11-23 22:54:22', '2014-11-23 22:54:22'),
(88, 'try', '<p>rty</p>\r\n', '11', '22', 0, 10, 19, '', '', 'show', '2014-11-23 22:55:13', '2014-11-23 22:55:13'),
(89, 'try', '<p>rty</p>\r\n', '11', '22', 0, 10, 19, '', '', 'show', '2014-11-23 22:59:06', '2014-11-23 22:59:06'),
(90, 'try', '<p>rty</p>\r\n', '11', '22', 0, 10, 19, '', '', 'show', '2014-11-23 22:59:28', '2014-11-23 22:59:28'),
(91, 'try', '<p>rty</p>\r\n', '11', '22', 0, 10, 19, '', '', 'show', '2014-11-23 23:00:38', '2014-11-23 23:00:38'),
(92, 'try', '<p>rty</p>\r\n', '11', '22', 0, 10, 19, '', '', 'show', '2014-11-23 23:07:53', '2014-11-23 23:07:53'),
(93, 'try', '<p>rty</p>\r\n', '11', '22', 0, 10, 19, '', '', 'show', '2014-11-23 23:02:11', '2014-11-23 23:02:11'),
(94, 'try', '<p>rty</p>\r\n', '11', '22', 1, 10, 19, '', '', 'show', '2014-11-23 23:08:11', '2014-11-23 23:08:11'),
(95, '222222', '<p>22222</p>\r\n', '11', '11', 1, 10, 19, '', '', 'show', '2014-11-23 23:14:50', '2014-11-23 23:14:50'),
(96, '333', '<p>33</p>\r\n', '11', '11', 0, 10, 19, '', '', 'show', '2014-11-23 23:16:35', '2014-11-23 23:16:35');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isAdmin` tinyint(1) NOT NULL,
  `isActive` tinyint(1) NOT NULL,
  `activationCode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`),
  KEY `users_isactive_index` (`isActive`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `username`, `isAdmin`, `isActive`, `activationCode`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'mikhalkevich@ya.ru', '$2y$10$AwBHkWBR/oMYzdU/vADQsOG9uDpgqzGz2pqc4Iwu6AUDUyTgISlzy', 'mikhalkevich', 1, 0, '1111111111', 'pRk2xcjcaBpTM8xe2A42trmmfjGpn42tCypI41kH2Fs2MaVgI9vQqbbPMv0B', '2014-11-18 19:44:07', '2014-11-18 22:38:50'),
(3, 'sdfdsf343dd@yandex.ru', '$2y$10$5VVUPoMX4G9OfcqUuKdGUe8/EYyvk1Eoq3XUg53VUeniC/yjsNoF2', 'user', 1, 1, '12345678', NULL, '2014-11-24 10:45:00', '2014-11-24 10:45:00');
--
-- База данных: `test`
--
--
-- База данных: `yii2`
--

-- --------------------------------------------------------

--
-- Структура таблицы `candidats`
--

CREATE TABLE IF NOT EXISTS `candidats` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `picture` tinytext,
  `name` tinytext,
  `about` tinytext,
  `status` enum('show','hide') DEFAULT 'hide',
  `raiting` int(11) NOT NULL,
  `biografy` text,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `candidats`
--

INSERT INTO `candidats` (`id`, `picture`, `name`, `about`, `status`, `raiting`, `biografy`) VALUES
(6, 'luntik.jpg', 'Лунтик', 'Родился на луне. Сразу после рождения упал на землю', 'show', 0, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `votes`
--

CREATE TABLE IF NOT EXISTS `votes` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `candidat_id` int(10) DEFAULT '0',
  `ip` tinytext,
  `protiv_za` enum('protiv','za') DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Дамп данных таблицы `votes`
--

INSERT INTO `votes` (`id`, `candidat_id`, `ip`, `protiv_za`) VALUES
(6, 6, '127.0.5.1', 'za'),
(7, 6, '127.0.4.1', 'protiv'),
(8, 6, '127.0.1.1', 'protiv'),
(9, 6, '127.0.6.1', 'protiv'),
(10, 6, '127.0.2.1', 'protiv'),
(11, 6, '127.0.3.1', 'protiv'),
(12, 6, '127.0.0.1', 'za');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
