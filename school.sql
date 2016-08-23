-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Авг 24 2016 г., 01:10
-- Версия сервера: 5.5.25
-- Версия PHP: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `school`
--

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_assets`
--

CREATE TABLE IF NOT EXISTS `iw0sl_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=202 ;

--
-- Дамп данных таблицы `iw0sl_assets`
--

INSERT INTO `iw0sl_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 0, 377, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":{"6":1},"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(8, 1, 17, 68, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.options":[],"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(9, 1, 69, 70, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 71, 72, 1, 'com_installer', 'com_installer', '{"core.admin":[],"core.manage":{"7":0},"core.delete":{"7":0},"core.edit.state":{"7":0}}'),
(11, 1, 73, 74, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(12, 1, 75, 76, 1, 'com_login', 'com_login', '{}'),
(13, 1, 77, 78, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 79, 80, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 81, 82, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1}}'),
(16, 1, 83, 84, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(17, 1, 85, 86, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 87, 336, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(19, 1, 337, 340, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(20, 1, 341, 342, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1},"core.manage":[],"core.edit":[],"core.edit.state":[]}'),
(21, 1, 343, 344, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1},"core.manage":[]}'),
(22, 1, 345, 346, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(23, 1, 347, 348, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(24, 1, 349, 352, 1, 'com_users', 'com_users', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(26, 1, 353, 354, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 35, 2, 'com_content.category.2', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(30, 19, 338, 339, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(32, 24, 350, 351, 1, 'com_users.category.7', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(33, 1, 355, 356, 1, 'com_finder', 'com_finder', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(34, 1, 357, 358, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{"core.admin":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(35, 1, 359, 360, 1, 'com_tags', 'com_tags', '{"core.admin":[],"core.manage":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(36, 1, 361, 362, 1, 'com_contenthistory', 'com_contenthistory', '{}'),
(37, 1, 363, 364, 1, 'com_ajax', 'com_ajax', '{}'),
(38, 1, 365, 366, 1, 'com_postinstall', 'com_postinstall', '{}'),
(39, 18, 88, 89, 2, 'com_modules.module.1', 'Верхнее меню', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(40, 18, 90, 91, 2, 'com_modules.module.2', 'Login', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(41, 18, 92, 93, 2, 'com_modules.module.3', 'Popular Articles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(42, 18, 94, 95, 2, 'com_modules.module.4', 'Recently Added Articles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(43, 18, 96, 97, 2, 'com_modules.module.8', 'Toolbar', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(44, 18, 98, 99, 2, 'com_modules.module.9', 'Quick Icons', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(45, 18, 100, 101, 2, 'com_modules.module.10', 'Logged-in Users', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(46, 18, 102, 103, 2, 'com_modules.module.12', 'Admin Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(47, 18, 104, 105, 2, 'com_modules.module.13', 'Admin Submenu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(48, 18, 106, 107, 2, 'com_modules.module.14', 'User Status', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(49, 18, 108, 109, 2, 'com_modules.module.15', 'Title', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(50, 18, 110, 111, 2, 'com_modules.module.16', 'Login Form', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(51, 18, 112, 113, 2, 'com_modules.module.17', 'Breadcrumbs', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(52, 18, 114, 115, 2, 'com_modules.module.79', 'Multilanguage status', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(53, 18, 116, 117, 2, 'com_modules.module.86', 'Joomla Version', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(54, 18, 118, 119, 2, 'com_modules.module.87', 'Слоган вверху', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(55, 18, 120, 121, 2, 'com_modules.module.88', 'Версия для слабовидящих', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(56, 18, 122, 123, 2, 'com_modules.module.89', 'Задать вопрос', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(57, 18, 124, 125, 2, 'com_modules.module.90', 'Email вверху', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(58, 18, 126, 127, 2, 'com_modules.module.91', 'Телефон вверху', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(59, 18, 128, 129, 2, 'com_modules.module.92', 'Наши группы вверху на главной', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(60, 18, 130, 131, 2, 'com_modules.module.93', 'Странички педагогов вверху на главной', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(61, 18, 132, 133, 2, 'com_modules.module.94', 'Наши достижения вверху на главной', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(62, 27, 19, 20, 3, 'com_content.article.1', 'Тестовый материал', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(63, 18, 134, 135, 2, 'com_modules.module.95', 'Меню ссылок на главной слева', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(64, 18, 136, 137, 2, 'com_modules.module.96', 'Копирайт в футере', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(65, 18, 138, 139, 2, 'com_modules.module.97', 'Счетчик в футере', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(66, 18, 140, 141, 2, 'com_modules.module.98', 'Адрес в футере', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(67, 18, 142, 143, 2, 'com_modules.module.99', 'Почта в футере', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(68, 18, 144, 145, 2, 'com_modules.module.100', 'Телефон в футере', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(69, 8, 36, 45, 2, 'com_content.category.8', 'Новости', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(70, 69, 37, 38, 3, 'com_content.article.2', 'О нашем учреждении 1', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(71, 69, 39, 40, 3, 'com_content.article.3', 'О нашем учреждении 2', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(72, 69, 41, 42, 3, 'com_content.article.4', 'О нашем учреждении 3', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(73, 69, 43, 44, 3, 'com_content.article.5', 'О нашем учреждении 4', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(74, 18, 146, 147, 2, 'com_modules.module.101', 'Новости', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(75, 18, 148, 149, 2, 'com_modules.module.102', 'Социальные кнопки на главной', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(76, 18, 150, 151, 2, 'com_modules.module.103', 'Меню ссылок внизу на внутренних', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(77, 18, 152, 153, 2, 'com_modules.module.104', 'Новости', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(78, 18, 154, 155, 2, 'com_modules.module.105', 'Социальные кнопки на внутренних', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(79, 18, 156, 157, 2, 'com_modules.module.106', 'Наши группы на внутренних слева', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(80, 18, 158, 159, 2, 'com_modules.module.107', 'Странички педагогов слева на внутренних', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(81, 18, 160, 161, 2, 'com_modules.module.108', 'Наши достижения слева на внутренних', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(82, 18, 162, 163, 2, 'com_modules.module.109', 'Адрес вверху', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(83, 18, 164, 165, 2, 'com_modules.module.110', 'Сайт еще не приготовился', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(84, 18, 166, 167, 2, 'com_modules.module.111', 'Наша группа в контакте', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(85, 18, 168, 169, 2, 'com_modules.module.112', 'Виджет группы вконтакте', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(87, 18, 170, 171, 2, 'com_modules.module.114', 'Адресс вверху', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(88, 18, 172, 173, 2, 'com_modules.module.115', 'Наши плюсы', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(89, 18, 174, 175, 2, 'com_modules.module.116', 'Адрес в футере', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(90, 27, 21, 22, 3, 'com_content.article.6', 'Банкеты', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(91, 27, 23, 24, 3, 'com_content.article.7', 'Фото поселка', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(92, 18, 176, 177, 2, 'com_modules.module.117', 'Бумажное ШОУ. 20 марта 2016', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(101, 18, 178, 179, 2, 'com_modules.module.123', 'Пицца на главной вверху', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(102, 18, 180, 181, 2, 'com_modules.module.124', 'Заголовок на странице Банкеты', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(103, 18, 182, 183, 2, 'com_modules.module.125', 'Текст на странице банкеты', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(104, 27, 25, 26, 3, 'com_content.article.8', 'Страница меню', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(105, 27, 27, 28, 3, 'com_content.article.9', 'Детям', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(106, 18, 184, 185, 2, 'com_modules.module.126', 'Текст на странице Детям', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(107, 18, 186, 187, 2, 'com_modules.module.127', 'Марципания надпись на странице детям', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(108, 27, 29, 30, 3, 'com_content.article.10', 'Доставка', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(109, 18, 188, 189, 2, 'com_modules.module.128', 'Текст на странице доставка', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(110, 18, 190, 191, 2, 'com_modules.module.129', 'Текст на главной', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(111, 27, 31, 32, 3, 'com_content.article.11', 'Контакты', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(112, 18, 192, 193, 2, 'com_modules.module.130', 'Текст для страницы контакты', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(113, 18, 194, 195, 2, 'com_modules.module.131', 'Давай к нам в контакт', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(114, 18, 196, 197, 2, 'com_modules.module.132', 'Ссылки на соц сети и фламп', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(115, 18, 198, 199, 2, 'com_modules.module.133', 'simpleForm2', '{}'),
(116, 18, 200, 201, 2, 'com_modules.module.134', 'Задать умный вопрос', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(117, 18, 202, 203, 2, 'com_modules.module.135', 'Всплывающая форма', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(118, 18, 204, 205, 2, 'com_modules.module.136', 'Карта в контактах', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(119, 18, 206, 207, 2, 'com_modules.module.137', 'Сам модуль вконтакте', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(120, 18, 208, 209, 2, 'com_modules.module.138', 'Гербы вверху', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(121, 18, 210, 211, 2, 'com_modules.module.139', 'Контакты вверху', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(122, 18, 212, 213, 2, 'com_modules.module.140', 'Баннер вверху', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(123, 8, 46, 49, 2, 'com_content.category.10', 'Горячие предложения', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(124, 8, 50, 53, 2, 'com_content.category.11', 'Новости', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(125, 124, 51, 52, 3, 'com_content.article.12', 'Изменения в круизе с 20.06 на т/х «Михаил Кутузов»', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(126, 8, 54, 57, 2, 'com_content.category.12', 'Акции', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(127, 126, 55, 56, 3, 'com_content.article.13', 'Изменения в круизе с 20.06 на т/х «Михаил Кутузов» 2', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(128, 18, 214, 215, 2, 'com_modules.module.141', 'Новости', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(129, 18, 216, 217, 2, 'com_modules.module.142', 'Акции', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(130, 18, 218, 219, 2, 'com_modules.module.143', 'Горячие предложения', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(131, 123, 47, 48, 3, 'com_content.article.14', ' РОССИЯ. СОЧИ Отель: 1*-5* Вылет из Екатеринбурга от 6 - 27 ночей От 18236 руб.', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(132, 18, 220, 221, 2, 'com_modules.module.144', 'Тест горячие', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(133, 18, 222, 223, 2, 'com_modules.module.145', 'Пять причин почему выбирают нас:', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(134, 18, 224, 225, 2, 'com_modules.module.146', 'Наши партнеры', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(135, 18, 226, 227, 2, 'com_modules.module.147', 'Нижнее меню 1', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(136, 18, 228, 229, 2, 'com_modules.module.148', 'Информация', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(137, 18, 230, 231, 2, 'com_modules.module.149', 'Адрес внизу', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(138, 18, 232, 233, 2, 'com_modules.module.150', 'Телефоны внизу', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(139, 18, 234, 235, 2, 'com_modules.module.151', 'Почта внизу', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(140, 18, 236, 237, 2, 'com_modules.module.152', 'Социальные сети внизу', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(141, 18, 238, 239, 2, 'com_modules.module.153', 'Партнеры внизу', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(142, 18, 240, 241, 2, 'com_modules.module.154', 'Контакты вверху', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(143, 18, 242, 243, 2, 'com_modules.module.155', 'Добрый день!', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(144, 18, 244, 245, 2, 'com_modules.module.156', 'Фото дома', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(145, 1, 367, 368, 1, 'com_uniterevolution2', 'com_uniterevolution2', '{"revolution2.slidersetting":{"7":1},"revolution2.slideroperations":{"7":1},"revolution2.slideoperations":{"7":1},"revolution2.editslide":{"7":1} }'),
(146, 18, 246, 247, 2, 'com_modules.module.157', 'План дома', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(147, 18, 248, 249, 2, 'com_modules.module.158', 'Скачать документацию', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(148, 18, 250, 251, 2, 'com_modules.module.159', 'Посёлок', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(149, 18, 252, 253, 2, 'com_modules.module.160', 'Тур по посёлку', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(150, 18, 254, 255, 2, 'com_modules.module.161', 'Фото посёлка', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(151, 18, 256, 257, 2, 'com_modules.module.162', 'Отзывы', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(152, 18, 258, 259, 2, 'com_modules.module.163', 'Карта поселка', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(154, 18, 260, 261, 2, 'com_modules.module.164', 'Контакты', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(155, 18, 262, 263, 2, 'com_modules.module.165', 'Цена вопроса', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(156, 18, 264, 265, 2, 'com_modules.module.166', 'Цена', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(157, 18, 266, 267, 2, 'com_modules.module.167', 'Съездим посмотрим внизу', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(158, 1, 369, 370, 1, 'com_rodnoy_map', 'com_rodnoy_map', '{}'),
(159, 18, 268, 269, 2, 'com_modules.module.168', 'Фото поселка', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(160, 18, 270, 271, 2, 'com_modules.module.169', 'Карта поселка', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(161, 18, 272, 273, 2, 'com_modules.module.170', 'Всплывающая форма', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(162, 1, 371, 372, 1, 'com_virtuemart', 'VIRTUEMART', '{}'),
(163, 1, 373, 374, 1, 'com_tcpdf', 'tcpdf', '{}'),
(164, 1, 375, 376, 1, 'com_virtuemart_allinone', 'VirtueMart_allinone', '{}'),
(165, 18, 274, 275, 2, 'com_modules.module.171', 'VM - Administrator Module', '{}'),
(166, 18, 276, 277, 2, 'com_modules.module.172', 'VM - Currencies Selector', '{}'),
(167, 18, 278, 279, 2, 'com_modules.module.173', 'VM - Featured products', '{}'),
(168, 18, 280, 281, 2, 'com_modules.module.174', 'VM - Search in Shop', '{}'),
(169, 18, 282, 283, 2, 'com_modules.module.175', 'VM - Manufacturer', '{}'),
(170, 18, 284, 285, 2, 'com_modules.module.176', 'VM - Shopping cart', '{}'),
(171, 18, 286, 287, 2, 'com_modules.module.177', 'VM - Category', '{}'),
(172, 18, 288, 289, 2, 'com_modules.module.178', 'Поиск', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(173, 27, 33, 34, 3, 'com_content.article.15', 'Главная', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(174, 18, 290, 291, 2, 'com_modules.module.179', 'Меню вверху кабинет', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(175, 18, 292, 293, 2, 'com_modules.module.180', 'Меню помощь вверху', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(176, 18, 294, 295, 2, 'com_modules.module.181', 'Корзина', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(177, 18, 296, 297, 2, 'com_modules.module.182', 'Верхнее меню 2', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(178, 18, 298, 299, 2, 'com_modules.module.183', 'Телефон вверху', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(179, 18, 300, 301, 2, 'com_modules.module.184', 'Почта вверху', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(180, 18, 302, 303, 2, 'com_modules.module.185', 'Категории вверху на главной', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(181, 18, 304, 305, 2, 'com_modules.module.186', 'Категории вверху на главной', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(182, 18, 306, 307, 2, 'com_modules.module.187', 'Слайдер', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(183, 18, 308, 309, 2, 'com_modules.module.188', 'Попоулярные товары', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(184, 18, 310, 311, 2, 'com_modules.module.189', 'Оборудование для кабинетов', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(185, 18, 312, 313, 2, 'com_modules.module.190', 'Звоните', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(186, 8, 58, 67, 2, 'com_content.category.13', 'Наши проекты', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(187, 186, 59, 60, 3, 'com_content.article.16', 'МОУ 13', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(188, 186, 63, 64, 3, 'com_content.article.17', 'МОУ 14', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(189, 186, 61, 62, 3, 'com_content.article.18', 'МОУ 15', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(190, 186, 65, 66, 3, 'com_content.article.19', 'МОУ 16', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(191, 18, 314, 315, 2, 'com_modules.module.191', 'Наши проекты', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(192, 18, 316, 317, 2, 'com_modules.module.192', 'Ссылка помотреть все проекты', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(193, 18, 318, 319, 2, 'com_modules.module.193', 'Как мы работаем', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(194, 18, 320, 321, 2, 'com_modules.module.194', 'Перейти к каталогу на главной', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(195, 18, 322, 323, 2, 'com_modules.module.195', 'Меню иконок внизу', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(196, 18, 324, 325, 2, 'com_modules.module.196', 'Помещения', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(197, 18, 326, 327, 2, 'com_modules.module.197', 'Учебное заведение:', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(198, 18, 328, 329, 2, 'com_modules.module.198', 'Предмет:', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(199, 18, 330, 331, 2, 'com_modules.module.199', 'Оборудование:', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(200, 18, 332, 333, 2, 'com_modules.module.200', 'Адрес в футере', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(201, 18, 334, 335, 2, 'com_modules.module.201', 'Телефон и почта в футере', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}');

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_associations`
--

CREATE TABLE IF NOT EXISTS `iw0sl_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_banners`
--

CREATE TABLE IF NOT EXISTS `iw0sl_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_banner_clients`
--

CREATE TABLE IF NOT EXISTS `iw0sl_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_banner_tracks`
--

CREATE TABLE IF NOT EXISTS `iw0sl_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_categories`
--

CREATE TABLE IF NOT EXISTS `iw0sl_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Дамп данных таблицы `iw0sl_categories`
--

INSERT INTO `iw0sl_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 23, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '{}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(7, 32, 1, 9, 10, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(8, 69, 1, 11, 12, 1, 'novosti', 'com_content', 'Новости', 'novosti', '', '', -2, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 41, '2016-03-19 15:44:41', 0, '2016-03-19 15:44:41', 0, '*', 1),
(10, 123, 1, 15, 16, 1, 'goryachie-predlozheniya', 'com_content', 'Горячие предложения', 'goryachie-predlozheniya', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 41, '2016-07-31 05:47:33', 0, '2016-07-31 05:47:33', 0, '*', 1),
(11, 124, 1, 17, 18, 1, 'news', 'com_content', 'Новости', 'news', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 41, '2016-07-31 05:47:54', 0, '2016-07-31 05:47:54', 0, '*', 1),
(12, 126, 1, 19, 20, 1, 'aktsii', 'com_content', 'Акции', 'aktsii', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 41, '2016-07-31 05:50:25', 0, '2016-07-31 05:50:25', 0, '*', 1),
(13, 186, 1, 21, 22, 1, 'nashi-proekty', 'com_content', 'Наши проекты', 'nashi-proekty', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 41, '2016-08-23 12:23:33', 0, '2016-08-23 12:23:33', 0, '*', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_contact_details`
--

CREATE TABLE IF NOT EXISTS `iw0sl_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `iw0sl_contact_details`
--

INSERT INTO `iw0sl_contact_details` (`id`, `name`, `alias`, `con_position`, `address`, `suburb`, `state`, `country`, `postcode`, `telephone`, `fax`, `misc`, `image`, `email_to`, `default_con`, `published`, `checked_out`, `checked_out_time`, `ordering`, `params`, `user_id`, `catid`, `access`, `mobile`, `webpage`, `sortname1`, `sortname2`, `sortname3`, `language`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `metakey`, `metadesc`, `metadata`, `featured`, `xreference`, `publish_up`, `publish_down`, `version`, `hits`) VALUES
(1, 'Задать вопрос', 'zadat-vopros', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 0, '0000-00-00 00:00:00', 1, '{"show_contact_category":"","show_contact_list":"","presentation_style":"","show_tags":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","articles_display_num":"","show_profile":"","show_links":"","linka_name":"","linka":false,"linkb_name":"","linkb":false,"linkc_name":"","linkc":false,"linkd_name":"","linkd":false,"linke_name":"","linke":false,"contact_layout":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":""}', 41, 4, 1, '', '', '', '', '', '*', '2016-03-20 13:10:13', 41, '', '2016-03-20 13:10:13', 0, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 17);

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_content`
--

CREATE TABLE IF NOT EXISTS `iw0sl_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Дамп данных таблицы `iw0sl_content`
--

INSERT INTO `iw0sl_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(1, 62, 'Тестовый материал', 'testovyj-material', '<p>МБДОУ № 293 функционирует с 1979 года под руководством всегда идущей по пути инноваций и нововведений, <a href="#">Рвачевой Любови Владимировны</a>. <br>\r\nДошкольное образовательное учреждение №293 по праву считается одним из самых престижных дошкольных учреждений нашего города и является академией становления личности юных воспитанников, с самого раннего детства получающих образование европейского уровня, которые в будущем обязательно станут достойными гражданами обновленной России.</p>\r\n<p>МБДОУ № 293 функционирует с 1979 года под руководством всегда идущей по пути инноваций и нововведений, <a href="#">Рвачевой Любови Владимировны</a>. <br>\r\nДошкольное образовательное учреждение №293 по праву считается одним из самых престижных дошкольных учреждений нашего города и является академией становления личности юных воспитанников, с самого раннего детства получающих образование европейского уровня, которые в будущем обязательно станут достойными гражданами обновленной России.</p>\r\n<p>МБДОУ № 293 функционирует с 1979 года под руководством всегда идущей по пути инноваций и нововведений, <a href="#">Рвачевой Любови Владимировны</a>. <br>\r\nДошкольное образовательное учреждение №293 по праву считается одним из самых престижных дошкольных учреждений нашего города и является академией становления личности юных воспитанников, с самого раннего детства получающих образование европейского уровня, которые в будущем обязательно станут достойными гражданами обновленной России.</p>\r\n<p>МБДОУ № 293 функционирует с 1979 года под руководством всегда идущей по пути инноваций и нововведений, <a href="#">Рвачевой Любови Владимировны</a>. <br>\r\nДошкольное образовательное учреждение №293 по праву считается одним из самых престижных дошкольных учреждений нашего города и является академией становления личности юных воспитанников, с самого раннего детства получающих образование европейского уровня, которые в будущем обязательно станут достойными гражданами обновленной России.</p>\r\n<p>МБДОУ № 293 функционирует с 1979 года под руководством всегда идущей по пути инноваций и нововведений, <a href="#">Рвачевой Любови Владимировны</a>. <br>\r\nДошкольное образовательное учреждение №293 по праву считается одним из самых престижных дошкольных учреждений нашего города и является академией становления личности юных воспитанников, с самого раннего детства получающих образование европейского уровня, которые в будущем обязательно станут достойными гражданами обновленной России.</p>\r\n<p>МБДОУ № 293 функционирует с 1979 года под руководством всегда идущей по пути инноваций и нововведений, <a href="#">Рвачевой Любови Владимировны</a>. <br>\r\nДошкольное образовательное учреждение №293 по праву считается одним из самых престижных дошкольных учреждений нашего города и является академией становления личности юных воспитанников, с самого раннего детства получающих образование европейского уровня, которые в будущем обязательно станут достойными гражданами обновленной России.</p>\r\n<p>МБДОУ № 293 функционирует с 1979 года под руководством всегда идущей по пути инноваций и нововведений, <a href="#">Рвачевой Любови Владимировны</a>. <br>\r\nДошкольное образовательное учреждение №293 по праву считается одним из самых престижных дошкольных учреждений нашего города и является академией становления личности юных воспитанников, с самого раннего детства получающих образование европейского уровня, которые в будущем обязательно станут достойными гражданами обновленной России.</p>', '', -2, 2, '2016-03-19 14:39:51', 41, '', '2016-03-19 14:39:51', 0, 0, '0000-00-00 00:00:00', '2016-03-19 14:39:51', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 1, '*', ''),
(2, 70, 'О нашем учреждении 1', 'o-nashem-uchrezhdenii-1', 'МБДОУ № 293 функционирует с 1979 года под руководством всегда идущей по пути инноваций и нововведений, Рвачевой Любови Владимировны.', ' МБДОУ № 293 функционирует с 1979 года под руководством всегда идущей по пути инноваций и нововведений, Рвачевой Любови Владимировны. МБДОУ № 293 функционирует с 1979 года под руководством всегда идущей по пути инноваций и нововведений, Рвачевой Любови Владимировны. МБДОУ № 293 функционирует с 1979 года под руководством всегда идущей по пути инноваций и нововведений, Рвачевой Любови Владимировны. ', -2, 8, '2016-03-19 15:45:20', 41, '', '2016-03-19 15:45:20', 0, 0, '0000-00-00 00:00:00', '2016-03-19 15:45:20', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 3, '', '', 1, 3, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(3, 71, 'О нашем учреждении 2', 'o-nashem-uchrezhdenii-2', 'МБДОУ № 293 функционирует с 1979 года под руководством всегда идущей по пути инноваций и нововведений, Рвачевой Любови Владимировны. ', 'МБДОУ № 293 функционирует с 1979 года под руководством всегда идущей по пути инноваций и нововведений, Рвачевой Любови Владимировны. МБДОУ № 293 функционирует с 1979 года под руководством всегда идущей по пути инноваций и нововведений, Рвачевой Любови Владимировны. МБДОУ № 293 функционирует с 1979 года под руководством всегда идущей по пути инноваций и нововведений, Рвачевой Любови Владимировны. МБДОУ № 293 функционирует с 1979 года под руководством всегда идущей по пути инноваций и нововведений, Рвачевой Любови Владимировны. ', -2, 8, '2016-03-19 15:45:40', 41, '', '2016-03-19 15:45:40', 0, 0, '0000-00-00 00:00:00', '2016-03-19 15:45:40', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 2, '', '', 1, 4, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(4, 72, 'О нашем учреждении 3', 'o-nashem-uchrezhdenii-3', 'МБДОУ № 293 функционирует с 1979 года под руководством всегда идущей по пути инноваций и нововведений, Рвачевой Любови Владимировны. ', 'МБДОУ № 293 функционирует с 1979 года под руководством всегда идущей по пути инноваций и нововведений, Рвачевой Любови Владимировны. МБДОУ № 293 функционирует с 1979 года под руководством всегда идущей по пути инноваций и нововведений, Рвачевой Любови Владимировны. МБДОУ № 293 функционирует с 1979 года под руководством всегда идущей по пути инноваций и нововведений, Рвачевой Любови Владимировны. МБДОУ № 293 функционирует с 1979 года под руководством всегда идущей по пути инноваций и нововведений, Рвачевой Любови Владимировны. ', -2, 8, '2016-03-19 15:46:01', 41, '', '2016-03-19 15:46:01', 0, 0, '0000-00-00 00:00:00', '2016-03-19 15:46:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(5, 73, 'О нашем учреждении 4', 'o-nashem-uchrezhdenii-4', 'МБДОУ № 293 функционирует с 1979 года под руководством всегда идущей по пути инноваций и нововведений, Рвачевой Любови Владимировны. ', 'МБДОУ № 293 функционирует с 1979 года под руководством всегда идущей по пути инноваций и нововведений, Рвачевой Любови Владимировны. МБДОУ № 293 функционирует с 1979 года под руководством всегда идущей по пути инноваций и нововведений, Рвачевой Любови Владимировны. МБДОУ № 293 функционирует с 1979 года под руководством всегда идущей по пути инноваций и нововведений, Рвачевой Любови Владимировны. МБДОУ № 293 функционирует с 1979 года под руководством всегда идущей по пути инноваций и нововведений, Рвачевой Любови Владимировны. ', -2, 8, '2016-03-19 15:46:18', 41, '', '2016-03-20 13:25:07', 41, 0, '0000-00-00 00:00:00', '2016-03-19 15:46:18', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"1","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, '', '', 1, 2, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(6, 90, 'Банкеты', 'bankety', '', '', -2, 2, '2016-05-16 11:25:30', 41, '', '2016-06-08 05:13:59', 41, 0, '0000-00-00 00:00:00', '2016-05-16 11:25:30', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 14, 5, '', '', 1, 161, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(7, 91, 'Фото поселка', 'glavnaya', '{gallery}photo{/gallery}', '', -2, 2, '2016-05-16 11:33:33', 41, '', '2016-08-15 08:44:51', 41, 0, '0000-00-00 00:00:00', '2016-05-16 11:33:33', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 12, 4, '', '', 1, 890, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(8, 104, 'Страница меню', 'stranitse-menyu', '<h1>Меню блюд</h1>\r\n<a href="images/templ2/menu1.jpg"><img src="images/templ2/menu1.jpg" alt="" /></a>\r\n<p></p>\r\n<a href="images/templ2/menu2.jpg"><img src="images/templ2/menu2.jpg" alt="" /></a>', '', -2, 2, '2016-05-18 04:53:48', 41, '', '2016-05-18 04:59:56', 41, 0, '0000-00-00 00:00:00', '2016-05-18 04:53:48', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 6, 3, '', '', 1, 75, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(9, 105, 'Детям', 'detyam', '<p><img style="display: block; margin-left: auto; margin-right: auto;" src="images/templ2/detmen.jpg" alt="" /></p>', '', -2, 2, '2016-05-18 07:55:13', 41, '', '2016-05-18 08:04:10', 41, 0, '0000-00-00 00:00:00', '2016-05-18 07:55:13', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 2, '', '', 1, 84, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(10, 108, 'Доставка', 'dostavka', '<h1>МЕНЮ БЛЮД ДОСТАВКИ</h1>\r\n<img style="display: block; margin-left: auto; margin-right: auto; margin-bottom:20px;" src="images/templ2/menu_dost1.jpg" alt="" />\r\n<img style="display: block; margin-left: auto; margin-right: auto;" src="images/templ2/menu_dost1.jpg" alt="" />', '', -2, 2, '2016-05-18 08:09:44', 41, '', '2016-05-18 08:19:39', 41, 0, '0000-00-00 00:00:00', '2016-05-18 08:09:44', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 1, '', '', 1, 21, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(11, 111, 'Контакты', 'kontakty', '<h1>О нас</h1>\r\n<p>Пушкин-тур — это online-сервис для покупки авиабилетов в любую точку планеты.</p>\r\n<p>Собственная система поиска и анализа авиабилетов позволяет найти лучший вариант перелета и лучшую цену по любому заданному направлению и дате.</p>\r\n<p>Пушкин-тур работает с системой онлайн бронирования авиабилетов Galileo, благодаря чему сервис имеет доступ к расписанию, ценам и специальным предложениям почти всех авиакомпаний мира. Помимо авиабилетов более 500 российских и зарубежных авиакомпаний, Пушкин-тур предлагает билеты на Аэроэкспресс. При этом покупка и выписка электронных авиабилетов происходит за считанные минуты.</p>\r\n<p>Удобная функция поиска перелетов — составной маршрут – позволяет купить билеты сразу на несколько нужных направлений — частей единого маршрута. Благодаря этой функции, можно купить авиабилеты на комплексный маршрут для путешествия или командировки всего за один поисковой запрос.</p>\r\n<p>Простой интерфейс, низкие цены, высокое качество предоставляемых услуг, отзывчивая служба поддержки — в Пушкин-тур созданы все условия для идеального путешествия.</p>\r\n<h2>Сотрудники</h2>\r\n<div class="staff">\r\n<div class="staf">\r\n<span class="imgs"></span>\r\n<img src="images/1/marina.jpg" alt="">\r\n<p><span>Марина</span> найдет срочный рейс</p>\r\n</div>\r\n<div class="staf">\r\n<span class="imgs"></span>\r\n<img src="images/1/valera.jpg" alt="">\r\n<p><span>Валера</span> найдет срочный рейс</p>\r\n</div>\r\n<div class="staf">\r\n<span class="imgs"></span>\r\n<img src="images/1/denis.jpg" alt="">\r\n<p><span>Денис</span> найдет срочный рейс</p>\r\n</div>\r\n<div class="staf">\r\n<span class="imgs"></span>\r\n<img src="images/1/albert.jpg" alt="">\r\n<p><span>Альберт</span> найдет срочный рейс</p>\r\n</div>\r\n</div>\r\n<h2 class="floatleft">Способы оплаты</h2>\r\n<img src="images/1/money.png" alt="">	\r\n<div class="clear"></div>				\r\n<p><i>Оплачивайте авиабилеты способом, подходящим именно вам. Чтобы купить авиабилеты онлайн, вы можете произвести оплату через терминалы JUST.travel, а также через платежные системы QIWI.Кошелек, WebMoney, Яндекс.Деньги или Монета.Ру. Кроме того, покупку электронного авиабилета через интернет можно осуществить с помощью банковских карт Visa и MasterCard.</i></p>\r\n<div class="contacts">\r\n<h2>Контакты</h2>	\r\n<p>Если у вас есть пожелания по работе нашего сервиса или вы хотите стать партнером терминальной сети Пушкин-тур, напишите нам письмо или позвоните по телефону <br>\r\n+7 495 647-00-92<br>\r\nТелефон<br>\r\n+7 495 647-00-92<br>\r\nВремя работы службы поддержки: <br>\r\n09:00 — 18:00 по московскому времени<br>\r\nЭлектронная почта<br>\r\nmail@push.ru</p>\r\n</div>\r\n<div class="adresses">\r\n<h2>Адреса</h2>\r\n<img src="images/1/cart.jpg" alt="">\r\n</div>', '', -2, 2, '2016-05-18 11:00:16', 41, '', '2016-07-31 07:55:09', 41, 0, '0000-00-00 00:00:00', '2016-05-18 11:00:16', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 0, '', '', 1, 243, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(12, 125, 'Изменения в круизе с 20.06 на т/х «Михаил Кутузов»', 'izmeneniya-v-kruize-s-20-06-na-t-kh-mikhail-kutuzov', 'Текст', '', -2, 11, '2016-07-31 05:49:29', 41, '', '2016-07-31 05:49:29', 0, 0, '0000-00-00 00:00:00', '2016-07-31 05:49:29', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(13, 127, 'Изменения в круизе с 20.06 на т/х «Михаил Кутузов» 2', 'izmeneniya-v-kruize-s-20-06-na-t-kh-mikhail-kutuzov-2', 'Текст 2', '', -2, 12, '2016-07-31 05:50:47', 41, '', '2016-07-31 05:50:47', 0, 0, '0000-00-00 00:00:00', '2016-07-31 05:50:47', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(14, 131, ' РОССИЯ. СОЧИ Отель: 1*-5* Вылет из Екатеринбурга от 6 - 27 ночей От 18236 руб.', 'rossiya-sochi-otel-1-5-vylet-iz-ekaterinburga-ot-6-27-nochej-ot-18236-rub', 'Текст  РОССИЯ. СОЧИ Отель: 1*-5* Вылет из Екатеринбурга от 6 - 27 ночей От 18236 руб.', '', -2, 10, '2016-07-31 06:11:48', 41, '', '2016-07-31 06:13:21', 41, 0, '0000-00-00 00:00:00', '2016-07-31 06:11:48', '0000-00-00 00:00:00', '{"image_intro":"images\\/1\\/hot1.jpg","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"images\\/1\\/hot1.jpg","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"1","link_titles":"1","show_tags":"0","show_intro":"0","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 0, '', '', 1, 2, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(15, 173, 'Главная', 'glavnaya-2', '<div class="bloquot">\r\n<p><b><a href="#">Команда компании «МосПроф»</a> предоставляет учащимся потрясающие возможности для получения знаний. Теперь рабочий инструмент школьника или студента – это не только конспект и учебник, но и современные мультимедиа средства, интересные наглядные материалы и демонстрационные модели, качественное оборудование для учебных кабинетов и мастерских и многое другое.</b></p>\r\n<p>Комплектация государственных учреждений оборудованием и расходными материалами \r\n– основное направление деятельности ГК «МосПроф» на протяжении более чем 8 лет.</p>\r\n</div>', '', 1, 2, '2016-08-23 06:52:23', 41, '', '2016-08-23 07:58:23', 41, 0, '0000-00-00 00:00:00', '2016-08-23 06:52:23', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 1, '', '', 1, 300, '{"robots":"","author":"","rights":"","xreference":""}', 1, '*', ''),
(16, 187, 'МОУ 13', 'mou-13', 'МОУ 13', '', 1, 13, '2016-08-23 12:24:40', 41, '', '2016-08-23 12:24:40', 0, 0, '0000-00-00 00:00:00', '2016-08-23 12:24:40', '0000-00-00 00:00:00', '{"image_intro":"images\\/1\\/project1.png","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"images\\/1\\/project1.png","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 3, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(17, 188, 'МОУ 14', 'mou-14', '', '', 1, 13, '2016-08-23 12:25:21', 41, '', '2016-08-23 12:26:21', 41, 0, '0000-00-00 00:00:00', '2016-08-23 12:25:21', '0000-00-00 00:00:00', '{"image_intro":"images\\/1\\/project1.png","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"images\\/1\\/project1.png","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(18, 189, 'МОУ 15', 'mou-15', '', '', 1, 13, '2016-08-23 12:26:03', 41, '', '2016-08-23 12:26:03', 0, 0, '0000-00-00 00:00:00', '2016-08-23 12:26:03', '0000-00-00 00:00:00', '{"image_intro":"images\\/1\\/project1.png","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"images\\/1\\/project1.png","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 2, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(19, 190, 'МОУ 16', 'mou-16', '', '', 1, 13, '2016-08-23 12:26:57', 41, '', '2016-08-23 12:26:57', 0, 0, '0000-00-00 00:00:00', '2016-08-23 12:26:57', '0000-00-00 00:00:00', '{"image_intro":"images\\/1\\/project1.png","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"images\\/1\\/project1.png","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_contentitem_tag_map`
--

CREATE TABLE IF NOT EXISTS `iw0sl_contentitem_tag_map` (
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `core_content_id` int(10) unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table',
  UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  KEY `idx_tag_type` (`tag_id`,`type_id`),
  KEY `idx_date_id` (`tag_date`,`tag_id`),
  KEY `idx_tag` (`tag_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_core_content_id` (`core_content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Maps items from content tables to tags';

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_content_frontpage`
--

CREATE TABLE IF NOT EXISTS `iw0sl_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `iw0sl_content_frontpage`
--

INSERT INTO `iw0sl_content_frontpage` (`content_id`, `ordering`) VALUES
(1, 2),
(15, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_content_rating`
--

CREATE TABLE IF NOT EXISTS `iw0sl_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_content_types`
--

CREATE TABLE IF NOT EXISTS `iw0sl_content_types` (
  `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_title` varchar(255) NOT NULL DEFAULT '',
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `table` varchar(255) NOT NULL DEFAULT '',
  `rules` text NOT NULL,
  `field_mappings` text NOT NULL,
  `router` varchar(255) NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) DEFAULT NULL COMMENT 'JSON string for com_contenthistory options',
  PRIMARY KEY (`type_id`),
  KEY `idx_alias` (`type_alias`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Дамп данных таблицы `iw0sl_content_types`
--

INSERT INTO `iw0sl_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES
(1, 'Article', 'com_content.article', '{"special":{"dbtable":"#__content","key":"id","type":"Content","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"introtext", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"attribs", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"asset_id"}, "special":{"fulltext":"fulltext"}}', 'ContentHelperRoute::getArticleRoute', '{"formFile":"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml", "hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(2, 'Contact', 'com_contact.contact', '{"special":{"dbtable":"#__contact_details","key":"id","type":"Contact","prefix":"ContactTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"address", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"image", "core_urls":"webpage", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"con_position":"con_position","suburb":"suburb","state":"state","country":"country","postcode":"postcode","telephone":"telephone","fax":"fax","misc":"misc","email_to":"email_to","default_con":"default_con","user_id":"user_id","mobile":"mobile","sortname1":"sortname1","sortname2":"sortname2","sortname3":"sortname3"}}', 'ContactHelperRoute::getContactRoute', '{"formFile":"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml","hideFields":["default_con","checked_out","checked_out_time","version","xreference"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"], "displayLookup":[ {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ] }'),
(3, 'Newsfeed', 'com_newsfeeds.newsfeed', '{"special":{"dbtable":"#__newsfeeds","key":"id","type":"Newsfeed","prefix":"NewsfeedsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"numarticles":"numarticles","cache_time":"cache_time","rtl":"rtl"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{"formFile":"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml","hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(4, 'User', 'com_users.user', '{"special":{"dbtable":"#__users","key":"id","type":"User","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"null","core_alias":"username","core_created_time":"registerdate","core_modified_time":"lastvisitDate","core_body":"null", "core_hits":"null","core_publish_up":"null","core_publish_down":"null","access":"null", "core_params":"params", "core_featured":"null", "core_metadata":"null", "core_language":"null", "core_images":"null", "core_urls":"null", "core_version":"null", "core_ordering":"null", "core_metakey":"null", "core_metadesc":"null", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{}}', 'UsersHelperRoute::getUserRoute', ''),
(5, 'Article Category', 'com_content.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContentHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(6, 'Contact Category', 'com_contact.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContactHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(7, 'Newsfeeds Category', 'com_newsfeeds.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(8, 'Tag', 'com_tags.tag', '{"special":{"dbtable":"#__tags","key":"tag_id","type":"Tag","prefix":"TagsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path"}}', 'TagsHelperRoute::getTagRoute', '{"formFile":"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml", "hideFields":["checked_out","checked_out_time","version", "lft", "rgt", "level", "path", "urls", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(9, 'Banner', 'com_banners.banner', '{"special":{"dbtable":"#__banners","key":"id","type":"Banner","prefix":"BannersTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"null","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"null", "asset_id":"null"}, "special":{"imptotal":"imptotal", "impmade":"impmade", "clicks":"clicks", "clickurl":"clickurl", "custombannercode":"custombannercode", "cid":"cid", "purchase_type":"purchase_type", "track_impressions":"track_impressions", "track_clicks":"track_clicks"}}', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml", "hideFields":["checked_out","checked_out_time","version", "reset"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "imptotal", "impmade", "reset"], "convertToInt":["publish_up", "publish_down", "ordering"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"cid","targetTable":"#__banner_clients","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(10, 'Banners Category', 'com_banners.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(11, 'Banner Client', 'com_banners.client', '{"special":{"dbtable":"#__banner_clients","key":"id","type":"Client","prefix":"BannersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml", "hideFields":["checked_out","checked_out_time"], "ignoreChanges":["checked_out", "checked_out_time"], "convertToInt":[], "displayLookup":[]}'),
(12, 'User Notes', 'com_users.note', '{"special":{"dbtable":"#__user_notes","key":"id","type":"Note","prefix":"UsersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml", "hideFields":["checked_out","checked_out_time", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time"], "convertToInt":["publish_up", "publish_down"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(13, 'User Notes Category', 'com_users.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(15, 'Участок', 'com_rodnoy_map.__rodnoy_map_items9370', '{"special":{"dbtable":"#__rodnoy_map_items","key":"id","type":"Участок","prefix":"Карта родногоTable"}}', '', '', '', '{"formFile":"administrator/components/com_rodnoy_map/models/forms/__rodnoy_map_items9370.xml", "hideFields":["checked_out","checked_out_time","params","language" ,"desc"], "ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"group_id","targetTable":"#__usergroups","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}');

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_core_log_searches`
--

CREATE TABLE IF NOT EXISTS `iw0sl_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_extensions`
--

CREATE TABLE IF NOT EXISTS `iw0sl_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10061 ;

--
-- Дамп данных таблицы `iw0sl_extensions`
--

INSERT INTO `iw0sl_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{"name":"com_mailto","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MAILTO_XML_DESCRIPTION","group":"","filename":"mailto"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{"name":"com_wrapper","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":"","filename":"wrapper"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{"name":"com_admin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_ADMIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{"name":"com_banners","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_BANNERS_XML_DESCRIPTION","group":"","filename":"banners"}', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":"","save_history":"1","history_limit":10}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{"name":"com_cache","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CACHE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{"name":"com_categories","type":"component","creationDate":"December 2007","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{"name":"com_checkin","type":"component","creationDate":"Unknown","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{"name":"com_contact","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '{"show_contact_category":"hide","save_history":"1","history_limit":10,"show_contact_list":"0","presentation_style":"sliders","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_misc":"1","show_image":"1","image":"","allow_vcard":"0","show_articles":"0","show_profile":"0","show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","show_headings":"1","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","allow_vcard_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_category_crumb":"0","metakey":"","metadesc":"","robots":"","author":"","rights":"","xreference":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{"name":"com_cpanel","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CPANEL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{"name":"com_installer","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{"name":"com_languages","type":"component","creationDate":"2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":""}', '{"administrator":"ru-RU","site":"ru-RU"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{"name":"com_login","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{"name":"com_media","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MEDIA_XML_DESCRIPTION","group":"","filename":"media"}', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{"name":"com_menus","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MENUS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{"name":"com_messages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{"name":"com_modules","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MODULES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{"name":"com_newsfeeds","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{"newsfeed_layout":"_:default","save_history":"1","history_limit":5,"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_character_count":"0","feed_display_order":"des","float_first":"right","float_second":"right","show_tags":"1","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"1","maxLevel":"-1","show_empty_categories":"0","show_subcat_desc":"1","show_cat_items":"1","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_items_cat":"1","filter_field":"1","show_pagination_limit":"1","show_headings":"1","show_articles":"0","show_link":"1","show_pagination":"1","show_pagination_results":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{"name":"com_plugins","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '{"name":"com_search","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_SEARCH_XML_DESCRIPTION","group":"","filename":"search"}', '{"enabled":"0","show_date":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{"name":"com_templates","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":""}', '{"template_positions_display":"0","upload_limit":"2","image_formats":"gif,bmp,jpg,jpeg,png","source_formats":"txt,less,ini,xml,js,php,css","font_formats":"woff,ttf,otf","compressed_formats":"zip"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{"article_layout":"_:default","show_title":"0","link_titles":"0","show_intro":"1","info_block_position":"0","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_readmore":"0","show_readmore_title":"0","readmore_limit":"100","show_tags":"0","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"0","urls_position":"0","show_publishing_options":"1","show_article_options":"1","save_history":"1","history_limit":10,"show_urls_images_frontend":"0","show_urls_images_backend":"1","targeta":0,"targetb":0,"targetc":0,"float_intro":"left","float_fulltext":"left","category_layout":"_:blog","show_category_heading_title_text":"1","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"0","show_subcategory_content":"0","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_featured":"show","show_feed_link":"1","feed_summary":"0","feed_show_readmore":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '{"filters":{"1":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"9":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"2":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{"name":"com_redirect","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_USERS_XML_DESCRIPTION","group":"","filename":"users"}', '{"allowUserRegistration":"0","new_usertype":"2","guest_usergroup":"9","sendpassword":"1","useractivation":"1","mail_to_admin":"0","captcha":"","frontend_userparams":"1","site_language":"0","change_login_name":"0","reset_count":"10","reset_time":"1","minimum_length":"4","minimum_integers":"0","minimum_symbols":"0","minimum_uppercase":"0","save_history":"1","history_limit":5,"mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{"name":"com_finder","type":"component","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_FINDER_XML_DESCRIPTION","group":"","filename":"finder"}', '{"show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_advanced":"1","expand_advanced":"0","show_date_filters":"0","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stemmer":"snowball"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{"name":"com_joomlaupdate","type":"component","creationDate":"February 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(29, 'com_tags', 'component', 'com_tags', '', 1, 1, 1, 1, '{"name":"com_tags","type":"component","creationDate":"December 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"COM_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{"tag_layout":"_:default","save_history":"1","history_limit":5,"show_tag_title":"0","tag_list_show_tag_image":"0","tag_list_show_tag_description":"0","tag_list_image":"","show_tag_num_items":"0","tag_list_orderby":"title","tag_list_orderby_direction":"ASC","show_headings":"0","tag_list_show_date":"0","tag_list_show_item_image":"0","tag_list_show_item_description":"0","tag_list_item_maximum_characters":0,"return_any_or_all":"1","include_children":"0","maximum":200,"tag_list_language_filter":"all","tags_layout":"_:default","all_tags_orderby":"title","all_tags_orderby_direction":"ASC","all_tags_show_tag_image":"0","all_tags_show_tag_descripion":"0","all_tags_tag_maximum_characters":20,"all_tags_show_tag_hits":"0","filter_field":"1","show_pagination_limit":"1","show_pagination":"2","show_pagination_results":"1","tag_field_ajax_mode":"1","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(30, 'com_contenthistory', 'component', 'com_contenthistory', '', 1, 1, 1, 0, '{"name":"com_contenthistory","type":"component","creationDate":"May 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_CONTENTHISTORY_XML_DESCRIPTION","group":"","filename":"contenthistory"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(31, 'com_ajax', 'component', 'com_ajax', '', 1, 1, 1, 0, '{"name":"com_ajax","type":"component","creationDate":"August 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_AJAX_XML_DESCRIPTION","group":"","filename":"ajax"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(32, 'com_postinstall', 'component', 'com_postinstall', '', 1, 1, 1, 1, '{"name":"com_postinstall","type":"component","creationDate":"September 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_POSTINSTALL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(101, 'SimplePie', 'library', 'simplepie', '', 0, 1, 1, 1, '{"name":"SimplePie","type":"library","creationDate":"2004","author":"SimplePie","copyright":"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon","authorEmail":"","authorUrl":"http:\\/\\/simplepie.org\\/","version":"1.2","description":"LIB_SIMPLEPIE_XML_DESCRIPTION","group":"","filename":"simplepie"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 'phputf8', 'library', 'phputf8', '', 0, 1, 1, 1, '{"name":"phputf8","type":"library","creationDate":"2006","author":"Harry Fuecks","copyright":"Copyright various authors","authorEmail":"hfuecks@gmail.com","authorUrl":"http:\\/\\/sourceforge.net\\/projects\\/phputf8","version":"0.5","description":"LIB_PHPUTF8_XML_DESCRIPTION","group":"","filename":"phputf8"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 'Joomla! Platform', 'library', 'joomla', '', 0, 1, 1, 1, '{"name":"Joomla! Platform","type":"library","creationDate":"2008","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"13.1","description":"LIB_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{"mediaversion":"2f0caf37edc2115db77580998cddb7af"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(104, 'IDNA Convert', 'library', 'idna_convert', '', 0, 1, 1, 1, '{"name":"IDNA Convert","type":"library","creationDate":"2004","author":"phlyLabs","copyright":"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de","authorEmail":"phlymail@phlylabs.de","authorUrl":"http:\\/\\/phlylabs.de","version":"0.8.0","description":"LIB_IDNA_XML_DESCRIPTION","group":"","filename":"idna_convert"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(105, 'FOF', 'library', 'fof', '', 0, 1, 1, 1, '{"name":"FOF","type":"library","creationDate":"2015-04-22 13:15:32","author":"Nicholas K. Dionysopoulos \\/ Akeeba Ltd","copyright":"(C)2011-2015 Nicholas K. Dionysopoulos","authorEmail":"nicholas@akeebabackup.com","authorUrl":"https:\\/\\/www.akeebabackup.com","version":"2.4.3","description":"LIB_FOF_XML_DESCRIPTION","group":"","filename":"fof"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(106, 'PHPass', 'library', 'phpass', '', 0, 1, 1, 1, '{"name":"PHPass","type":"library","creationDate":"2004-2006","author":"Solar Designer","copyright":"","authorEmail":"solar@openwall.com","authorUrl":"http:\\/\\/www.openwall.com\\/phpass\\/","version":"0.3","description":"LIB_PHPASS_XML_DESCRIPTION","group":"","filename":"phpass"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 0, '{"name":"mod_articles_archive","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION","group":"","filename":"mod_articles_archive"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 0, '{"name":"mod_articles_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_NEWS_XML_DESCRIPTION","group":"","filename":"mod_articles_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{"name":"mod_articles_popular","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_articles_popular"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{"name":"mod_banners","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BANNERS_XML_DESCRIPTION","group":"","filename":"mod_banners"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{"name":"mod_breadcrumbs","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BREADCRUMBS_XML_DESCRIPTION","group":"","filename":"mod_breadcrumbs"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":"","filename":"mod_custom"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":"","filename":"mod_feed"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 0, '{"name":"mod_footer","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FOOTER_XML_DESCRIPTION","group":"","filename":"mod_footer"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":"","filename":"mod_login"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{"name":"mod_menu","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":"","filename":"mod_menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{"name":"mod_articles_news","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_NEWS_XML_DESCRIPTION","group":"","filename":"mod_articles_news"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{"name":"mod_random_image","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RANDOM_IMAGE_XML_DESCRIPTION","group":"","filename":"mod_random_image"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{"name":"mod_related_items","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RELATED_XML_DESCRIPTION","group":"","filename":"mod_related_items"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{"name":"mod_search","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SEARCH_XML_DESCRIPTION","group":"","filename":"mod_search"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{"name":"mod_stats","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":"","filename":"mod_stats"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{"name":"mod_syndicate","type":"module","creationDate":"May 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SYNDICATE_XML_DESCRIPTION","group":"","filename":"mod_syndicate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 0, '{"name":"mod_users_latest","type":"module","creationDate":"December 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_USERS_LATEST_XML_DESCRIPTION","group":"","filename":"mod_users_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{"name":"mod_whosonline","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WHOSONLINE_XML_DESCRIPTION","group":"","filename":"mod_whosonline"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{"name":"mod_wrapper","type":"module","creationDate":"October 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WRAPPER_XML_DESCRIPTION","group":"","filename":"mod_wrapper"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '{"name":"mod_articles_category","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION","group":"","filename":"mod_articles_category"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '{"name":"mod_articles_categories","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":"","filename":"mod_articles_categories"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{"name":"mod_languages","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LANGUAGES_XML_DESCRIPTION","group":"","filename":"mod_languages"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{"name":"mod_finder","type":"module","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FINDER_XML_DESCRIPTION","group":"","filename":"mod_finder"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":"","filename":"mod_custom"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":"","filename":"mod_feed"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{"name":"mod_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_XML_DESCRIPTION","group":"","filename":"mod_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{"name":"mod_logged","type":"module","creationDate":"January 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGGED_XML_DESCRIPTION","group":"","filename":"mod_logged"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"March 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":"","filename":"mod_login"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{"name":"mod_menu","type":"module","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":"","filename":"mod_menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{"name":"mod_popular","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_popular"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{"name":"mod_quickicon","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_QUICKICON_XML_DESCRIPTION","group":"","filename":"mod_quickicon"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{"name":"mod_status","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATUS_XML_DESCRIPTION","group":"","filename":"mod_status"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{"name":"mod_submenu","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SUBMENU_XML_DESCRIPTION","group":"","filename":"mod_submenu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{"name":"mod_title","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TITLE_XML_DESCRIPTION","group":"","filename":"mod_title"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{"name":"mod_toolbar","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TOOLBAR_XML_DESCRIPTION","group":"","filename":"mod_toolbar"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{"name":"mod_multilangstatus","type":"module","creationDate":"September 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MULTILANGSTATUS_XML_DESCRIPTION","group":"","filename":"mod_multilangstatus"}', '{"cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{"name":"mod_version","type":"module","creationDate":"January 2012","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_VERSION_XML_DESCRIPTION","group":"","filename":"mod_version"}', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(315, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 1, 1, 0, '{"name":"mod_stats_admin","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":"","filename":"mod_stats_admin"}', '{"serverinfo":"0","siteinfo":"0","counter":"0","increase":"0","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(316, 'mod_tags_popular', 'module', 'mod_tags_popular', '', 0, 1, 1, 0, '{"name":"mod_tags_popular","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_tags_popular"}', '{"maximum":"5","timeframe":"alltime","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(317, 'mod_tags_similar', 'module', 'mod_tags_similar', '', 0, 1, 1, 0, '{"name":"mod_tags_similar","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_SIMILAR_XML_DESCRIPTION","group":"","filename":"mod_tags_similar"}', '{"maximum":"5","matchtype":"any","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_gmail","type":"plugin","creationDate":"February 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_GMAIL_XML_DESCRIPTION","group":"","filename":"gmail"}', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{"name":"plg_authentication_joomla","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_ldap","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LDAP_XML_DESCRIPTION","group":"","filename":"ldap"}', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(403, 'plg_content_contact', 'plugin', 'contact', 'content', 0, 1, 1, 0, '{"name":"plg_content_contact","type":"plugin","creationDate":"January 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.2","description":"PLG_CONTENT_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(404, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{"name":"plg_content_emailcloak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION","group":"","filename":"emailcloak"}', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":"","filename":"loadmodule"}', '{"style":"xhtml"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagebreak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":"","filename":"pagebreak"}', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagenavigation","type":"plugin","creationDate":"January 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":"","filename":"pagenavigation"}', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 0, '{"name":"plg_content_vote","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_VOTE_XML_DESCRIPTION","group":"","filename":"vote"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"Copyright (C) 2014 by Marijn Haverbeke <marijnh@gmail.com> and others","authorEmail":"marijnh@gmail.com","authorUrl":"http:\\/\\/codemirror.net\\/","version":"5.6","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":"","filename":"codemirror"}', '{"lineNumbers":"1","lineWrapping":"1","matchTags":"1","matchBrackets":"1","marker-gutter":"1","autoCloseTags":"1","autoCloseBrackets":"1","autoFocus":"1","theme":"default","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_none","type":"plugin","creationDate":"September 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_NONE_XML_DESCRIPTION","group":"","filename":"none"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '{"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2014","author":"Moxiecode Systems AB","copyright":"Moxiecode Systems AB","authorEmail":"N\\/A","authorUrl":"tinymce.moxiecode.com","version":"4.1.7","description":"PLG_TINY_XML_DESCRIPTION","group":"","filename":"tinymce"}', '{"mode":"1","skin":"0","mobile":"0","entity_encoding":"raw","lang_mode":"1","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","invalid_elements":"script,applet,iframe","extended_elements":"","html_height":"550","html_width":"750","resizing":"1","element_path":"1","fonts":"1","paste":"1","searchreplace":"1","insertdate":"1","colors":"1","table":"1","smilies":"1","hr":"1","link":"1","media":"1","print":"1","directionality":"1","fullscreen":"1","alignment":"1","visualchars":"1","visualblocks":"1","nonbreaking":"1","template":"1","blockquote":"1","wordcount":"1","advlist":"1","autosave":"1","contextmenu":"1","inlinepopups":"1","custom_plugin":"","custom_button":""}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_article","type":"plugin","creationDate":"October 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":"","filename":"article"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_image","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":"","filename":"image"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":"","filename":"pagebreak"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_READMORE_XML_DESCRIPTION","group":"","filename":"readmore"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0);
INSERT INTO `iw0sl_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(417, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{"name":"plg_search_categories","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION","group":"","filename":"categories"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{"name":"plg_search_contacts","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTACTS_XML_DESCRIPTION","group":"","filename":"contacts"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{"name":"plg_search_content","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{"name":"plg_search_newsfeeds","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{"name":"plg_system_languagefilter","type":"plugin","creationDate":"July 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION","group":"","filename":"languagefilter"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 0, 1, 0, '{"name":"plg_system_p3p","type":"plugin","creationDate":"September 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_P3P_XML_DESCRIPTION","group":"","filename":"p3p"}', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{"name":"plg_system_cache","type":"plugin","creationDate":"February 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CACHE_XML_DESCRIPTION","group":"","filename":"cache"}', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{"name":"plg_system_debug","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_DEBUG_XML_DESCRIPTION","group":"","filename":"debug"}', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{"name":"plg_system_log","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOG_XML_DESCRIPTION","group":"","filename":"log"}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 0, 1, 1, '{"name":"plg_system_redirect","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION","group":"","filename":"redirect"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(428, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{"name":"plg_system_remember","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REMEMBER_XML_DESCRIPTION","group":"","filename":"remember"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{"name":"plg_system_sef","type":"plugin","creationDate":"December 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEF_XML_DESCRIPTION","group":"","filename":"sef"}', '', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{"name":"plg_system_logout","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION","group":"","filename":"logout"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(431, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '{"name":"plg_user_contactcreator","type":"plugin","creationDate":"August 2009","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTACTCREATOR_XML_DESCRIPTION","group":"","filename":"contactcreator"}', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{"name":"plg_user_joomla","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{"autoregister":"1","mail_to_user":"1","forceLogout":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 0, '{"name":"plg_user_profile","type":"plugin","creationDate":"January 2008","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_PROFILE_XML_DESCRIPTION","group":"","filename":"profile"}', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{"name":"plg_extension_joomla","type":"plugin","creationDate":"May 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{"name":"plg_content_joomla","type":"plugin","creationDate":"November 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{"name":"plg_system_languagecode","type":"plugin","creationDate":"November 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION","group":"","filename":"languagecode"}', '', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_joomlaupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION","group":"","filename":"joomlaupdate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_extensionupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION","group":"","filename":"extensionupdate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 0, 1, 0, '{"name":"plg_captcha_recaptcha","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.0","description":"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION","group":"","filename":"recaptcha"}', '{"public_key":"","private_key":"","theme":"clean"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{"name":"plg_system_highlight","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION","group":"","filename":"highlight"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{"name":"plg_content_finder","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_FINDER_XML_DESCRIPTION","group":"","filename":"finder"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_categories","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CATEGORIES_XML_DESCRIPTION","group":"","filename":"categories"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_contacts","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTACTS_XML_DESCRIPTION","group":"","filename":"contacts"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_content","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_newsfeeds","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(447, 'plg_finder_tags', 'plugin', 'tags', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_tags","type":"plugin","creationDate":"February 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(448, 'plg_twofactorauth_totp', 'plugin', 'totp', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_totp","type":"plugin","creationDate":"August 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION","group":"","filename":"totp"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(449, 'plg_authentication_cookie', 'plugin', 'cookie', 'authentication', 0, 1, 1, 0, '{"name":"plg_authentication_cookie","type":"plugin","creationDate":"July 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_COOKIE_XML_DESCRIPTION","group":"","filename":"cookie"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(450, 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_yubikey","type":"plugin","creationDate":"September 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION","group":"","filename":"yubikey"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(451, 'plg_search_tags', 'plugin', 'tags', 'search', 0, 1, 1, 0, '{"name":"plg_search_tags","type":"plugin","creationDate":"March 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{"search_limit":"50","show_tagged_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(503, 'beez3', 'template', 'beez3', '', 0, 1, 1, 0, '{"name":"beez3","type":"template","creationDate":"25 November 2009","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"3.1.0","description":"TPL_BEEZ3_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{"name":"hathor","type":"template","creationDate":"May 2010","author":"Andrea Tarr","copyright":"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.","authorEmail":"hathor@tarrconsulting.com","authorUrl":"http:\\/\\/www.tarrconsulting.com","version":"3.0.0","description":"TPL_HATHOR_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(506, 'protostar', 'template', 'protostar', '', 0, 1, 1, 0, '{"name":"protostar","type":"template","creationDate":"4\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_PROTOSTAR_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(507, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '{"name":"isis","type":"template","creationDate":"3\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_ISIS_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"templateColor":"","logoFile":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 'English (en-GB)', 'language', 'en-GB', '', 0, 1, 1, 1, '{"name":"English (en-GB)","type":"language","creationDate":"2013-03-07","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.3","description":"en-GB site language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 'English (en-GB)', 'language', 'en-GB', '', 1, 1, 1, 1, '{"name":"English (en-GB)","type":"language","creationDate":"2013-03-07","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.3","description":"en-GB administrator language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{"name":"files_joomla","type":"file","creationDate":"December 2015","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.8","description":"FILES_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10000, 'Russian', 'language', 'ru-RU', '', 0, 1, 0, 0, '{"name":"Russian","type":"language","creationDate":"2015-05-29","author":"Russian Translation Team","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved","authorEmail":"smart@joomlaportal.ru","authorUrl":"www.joomlaportal.ru","version":"3.4.1.3","description":"Russian language pack (site) for Joomla! 3.4.1","group":"","filename":"install"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10001, 'Russian', 'language', 'ru-RU', '', 1, 1, 0, 0, '{"name":"Russian","type":"language","creationDate":"2015-05-29","author":"Russian Translation Team","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved","authorEmail":"smart@joomlaportal.ru","authorUrl":"www.joomlaportal.ru","version":"3.4.1.3","description":"Russian language pack (administrator) for Joomla! 3.4.1","group":"","filename":"install"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10002, 'Russian Language Pack', 'package', 'pkg_ru-RU', '', 0, 1, 1, 0, '{"name":"Russian Language Pack","type":"package","creationDate":"Unknown","author":"Unknown","copyright":"","authorEmail":"","authorUrl":"","version":"3.4.1.3","description":"Joomla 3.4 Russian Language Package","group":"","filename":"pkg_ru-RU"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10004, 'Marcipan', 'template', 'marcipan', '', 0, 1, 1, 0, '{"name":"Marcipan","type":"template","creationDate":"15 august 2015","author":"Igor Lkeshev","copyright":"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.","authorEmail":"ikles.ru@ya.ru","authorUrl":"http:\\/\\/ikles.ru","version":"3.1.0","description":"Description","group":"","filename":"templateDetails"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10006, 'Marcipan-2', 'template', 'marcipan-2', '', 0, 1, 1, 0, '{"name":"Marcipan-2","type":"template","creationDate":"15 august 2015","author":"Igor Lkeshev","copyright":"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.","authorEmail":"ikles.ru@ya.ru","authorUrl":"http:\\/\\/ikles.ru","version":"3.1.0","description":"Description","group":"","filename":"templateDetails"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10007, 'plg_installer_webinstaller', 'plugin', 'webinstaller', 'installer', 0, 1, 1, 0, '{"name":"plg_installer_webinstaller","type":"plugin","creationDate":"18 December 2013","author":"Joomla! Project","copyright":"Copyright (C) 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.0.5","description":"PLG_INSTALLER_WEBINSTALLER_XML_DESCRIPTION","group":"","filename":"webinstaller"}', '{"tab_position":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10008, 'Simple Image Gallery (by JoomlaWorks)', 'plugin', 'jw_sig', 'content', 0, 1, 1, 0, '{"name":"Simple Image Gallery (by JoomlaWorks)","type":"plugin","creationDate":"May 14th, 2014","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"3.0.1","description":"JW_PLG_SIG_XML_DESC","group":"","filename":"jw_sig"}', '{"galleries_rootfolder":"images","jQueryHandling":"1.8.3","thb_width":"550","thb_height":"385","jpg_quality":"80","cache_expire_time":"1440","memoryLimit":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10015, 'simpleForm2', 'module', 'mod_simpleform2', '', 0, 1, 0, 0, '{"name":"simpleForm2","type":"module","creationDate":"Jan 2010","author":"ZyX","copyright":"Copyright 2010 Micriucov Oleg (ZyX) www.allForJoomla.ru. All rights reserved!","authorEmail":"info@litecms.ru","authorUrl":"allForJoomla.ru","version":"1.0.39","description":"<img align=\\"absmiddle\\" src=''http:\\/\\/img.allforjoomla.ru\\/mod_simpleForm2_j3.png'' \\/> Simple form module","group":"","filename":"mod_simpleform2"}', '{"cache":"0","moduleclass_sfx":"","domainKey":"","sfMailReply":"","sfMailTo":"admin@yoursite.com","sfMailSubj":"--== SimpleForm2 e-mail ==--","userCheckFunc":"","userResultFunc":"","simpleCode":"<style type=\\"text\\/css\\">form.simpleForm label{display:block;}form.simpleForm label span{color:#ff0000;}form.simpleForm input.inputtext{width:215px;}form.simpleForm textarea.inputtext{width:215px;height:100px;}form.simpleForm textarea.inputtext_small{width:215px;height:50px;}<\\/style><p>{element label=\\"\\u0412\\u0430\\u0448\\u0435 \\u0438\\u043c\\u044f\\" type=\\"text\\" class=\\"inputtext\\"    required=\\"required\\" error=\\"\\u0412\\u0432\\u0435\\u0434\\u0438\\u0442\\u0435 \\u0432\\u0430\\u0448\\u0435 \\u0438\\u043c\\u044f\\"  \\/}<\\/p><p>{element label=\\"\\u0412\\u0430\\u0448\\u0435 \\u0441\\u043e\\u043e\\u0431\\u0449\\u0435\\u043d\\u0438\\u0435\\" type=\\"textarea\\" class=\\"inputtext\\"    required=\\"required\\" error=\\"\\u0412\\u0432\\u0435\\u0434\\u0438\\u0442\\u0435 \\u0432\\u0430\\u0448\\u0435 \\u0441\\u043e\\u043e\\u0431\\u0449\\u0435\\u043d\\u0438\\u0435\\"  \\/}<\\/p>{element type=\\"captcha\\" class=\\"inputtext\\" width=\\"220\\" height=\\"50\\" label=\\"\\u041f\\u0440\\u043e\\u0432\\u0435\\u0440\\u043e\\u0447\\u043d\\u044b\\u0439 \\u043a\\u043e\\u0434\\" \\/}<p>{element  type=\\"submit\\"   value=\\"\\u041e\\u0442\\u043f\\u0440\\u0430\\u0432\\u0438\\u0442\\u044c\\"  \\/}<\\/p>","inclJquery":"1","jqueryNoConflict":"0","loadScriptsMode":"body"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10016, 'Pushkin', 'template', 'pushkin', '', 0, 1, 1, 0, '{"name":"Pushkin","type":"template","creationDate":"15 august 2015","author":"Igor Lkeshev","copyright":"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.","authorEmail":"ikles.ru@ya.ru","authorUrl":"http:\\/\\/ikles.ru","version":"3.1.0","description":"Description","group":"","filename":"templateDetails"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10017, 'Rodnoy', 'template', 'rodnoy', '', 0, 1, 1, 0, '{"name":"Rodnoy","type":"template","creationDate":"15 august 2015","author":"Igor Lkeshev","copyright":"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.","authorEmail":"ikles.ru@ya.ru","authorUrl":"http:\\/\\/ikles.ru","version":"3.1.0","description":"Description","group":"","filename":"templateDetails"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10018, 'com_uniterevolution2', 'component', 'com_uniterevolution2', '', 1, 1, 0, 0, '{"name":"com_uniterevolution2","type":"component","creationDate":"August 2012","author":"Unite CMS","copyright":"Copyright (C) 2012 UniteCMS.net, All rights reserved.","authorEmail":"support@unitecms.net","authorUrl":"http:\\/\\/www.unitecms.net","version":"4.3.8 b5","description":"\\n\\t\\tRevolution Slider extension and module installation success!\\n\\t","group":"","filename":"manifest"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10019, 'Unite Revolution Slider 2', 'module', 'mod_unite_revolution2', '', 0, 1, 0, 0, '{"name":"Unite Revolution Slider 2","type":"module","creationDate":"October 2012","author":"Unite CMS","copyright":"Copyright (C) 2012 UniteCMS.net, All rights reserved.","authorEmail":"support@unitecms.net","authorUrl":"http:\\/\\/unitecms.net","version":"4.3.8 b5","description":"\\n\\t\\t\\t<div style=\\"font-weight:normal;\\">\\n\\t\\t\\t<p><strong>Unite Revolution Slider (new edition)<\\/strong> module. Put the slider on any page. All the slider configuration located in Component.<\\/p>\\n\\t\\t\\t<p>\\n\\t\\t\\t\\tFor support please turn to <a href=\\"http:\\/\\/unitecms.net\\/joomla-extensions\\/unite-revolution-slider-responsive\\" target=\\"_blank\\">Unite Revolution Slider Page<\\/a>\\n\\t\\t\\t<\\/p>\\n\\t\\t\\t<small style=\\"float:right\\">ver. 4.3.8 b5<\\/small>\\n\\t\\t\\t<\\/div>\\n     \\n\\t ","group":"","filename":"mod_unite_revolution2"}', '{"include_jquery":"true","js_load_type":"head","no_conflict_mode":"false","cache":"1","cache_time":"900","cachemode":"itemid"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10021, 'Regular Labs Library', 'library', 'regularlabs', '', 0, 1, 1, 0, '{"name":"Regular Labs Library","type":"library","creationDate":"July 2016","author":"Regular Labs (Peter van Westen)","copyright":"Copyright \\u00a9 2016 Regular Labs - All Rights Reserved","authorEmail":"info@regularlabs.com","authorUrl":"https:\\/\\/www.regularlabs.com","version":"16.7.10746","description":"","group":"","filename":"regularlabs"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10022, 'plg_system_regularlabs', 'plugin', 'regularlabs', 'system', 0, 1, 1, 0, '{"name":"plg_system_regularlabs","type":"plugin","creationDate":"July 2016","author":"Regular Labs (Peter van Westen)","copyright":"Copyright \\u00a9 2016 Regular Labs - All Rights Reserved","authorEmail":"info@regularlabs.com","authorUrl":"https:\\/\\/www.regularlabs.com","version":"16.7.10746","description":"PLG_SYSTEM_REGULARLABS_DESC","group":"","filename":"regularlabs"}', '{"combine_admin_menu":"0","max_list_count":"2500"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10023, 'plg_editors-xtd_sourcerer', 'plugin', 'sourcerer', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_sourcerer","type":"plugin","creationDate":"July 2016","author":"Regular Labs (Peter van Westen)","copyright":"Copyright \\u00a9 2016 Regular Labs - All Rights Reserved","authorEmail":"info@regularlabs.com","authorUrl":"https:\\/\\/www.regularlabs.com","version":"6.1.3","description":"PLG_EDITORS-XTD_SOURCERER_DESC","group":"","filename":"sourcerer"}', '[]', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10024, 'plg_system_sourcerer', 'plugin', 'sourcerer', 'system', 0, 1, 1, 0, '{"name":"plg_system_sourcerer","type":"plugin","creationDate":"July 2016","author":"Regular Labs (Peter van Westen)","copyright":"Copyright \\u00a9 2016 Regular Labs - All Rights Reserved","authorEmail":"info@regularlabs.com","authorUrl":"https:\\/\\/www.regularlabs.com","version":"6.1.3","description":"PLG_SYSTEM_SOURCERER_DESC","group":"","filename":"sourcerer"}', '{"syntax_word":"source","tag_characters":"{.}","trim":"0","remove_from_search":"0","include_path":"\\/","enable_css":"1","enable_js":"1","enable_php":"1","forbidden_php":"dl, escapeshellarg, escapeshellcmd, exec, passthru, popen, proc_close, proc_open, shell_exec, symlink, system","forbidden_tags":"","@notice_articles_security_level":"RL_ONLY_AVAILABLE_IN_PRO","@notice_articles_enable_css":"RL_ONLY_AVAILABLE_IN_PRO","@notice_articles_enable_js":"RL_ONLY_AVAILABLE_IN_PRO","@notice_articles_enable_php":"RL_ONLY_AVAILABLE_IN_PRO","@notice_components_enable_css":"RL_ONLY_AVAILABLE_IN_PRO","@notice_components_enable_js":"RL_ONLY_AVAILABLE_IN_PRO","@notice_components_enable_php":"RL_ONLY_AVAILABLE_IN_PRO","@wizard":"0","@noticeother_enable_css":"RL_ONLY_AVAILABLE_IN_PRO","@notice_other_enable_js":"RL_ONLY_AVAILABLE_IN_PRO","@notice_other_enable_php":"RL_ONLY_AVAILABLE_IN_PRO","button_text":"Code","enable_frontend":"1","addsourcetags":"1","@notice_use_example_code":"RL_ONLY_AVAILABLE_IN_PRO"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10026, 'com_rodnoy_map', 'component', 'com_rodnoy_map', '', 1, 1, 0, 0, '{"name":"com_rodnoy_map","type":"component","creationDate":"2016-08-14","author":"Pti_the_Leader","copyright":"2016 Pti_the_Leader","authorEmail":"ptipti@ptipti.ru","authorUrl":"http:\\/\\/ptipti.ru","version":"CVS: 1.0","description":"\\u0418\\u043d\\u0442\\u0435\\u0440\\u0430\\u043a\\u0442\\u0438\\u0432\\u043d\\u0430\\u044f \\u043a\\u0430\\u0440\\u0442\\u0430 \\u043f\\u043e\\u0441\\u0451\\u043b\\u043a\\u0430 \\u0420\\u043e\\u0434\\u043d\\u043e\\u0439","group":"","filename":"rodnoy_map"}', '{"save_history":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10027, 'School', 'template', 'school', '', 0, 1, 1, 0, '{"name":"School","type":"template","creationDate":"15 august 2015","author":"Igor Lkeshev","copyright":"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.","authorEmail":"ikles.ru@ya.ru","authorUrl":"http:\\/\\/ikles.ru","version":"3.1.0","description":"Description","group":"","filename":"templateDetails"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10028, 'VIRTUEMART', 'component', 'com_virtuemart', '', 1, 1, 0, 0, '{"name":"VIRTUEMART","type":"component","creationDate":"March 11 2016","author":"The VirtueMart Development Team","copyright":"Copyright (C) 2004-2015 Virtuemart Team. All rights reserved.","authorEmail":"max|at|virtuemart.net","authorUrl":"http:\\/\\/www.virtuemart.net","version":"3.0.14","description":"","group":"","filename":"virtuemart"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10029, 'tcpdf', 'component', 'com_tcpdf', '', 1, 1, 0, 0, '{"name":"tcpdf","type":"component","creationDate":"February 2015","author":"Nicola Asuni, The VirtueMart Development Team","copyright":"Copyright (c) 2001-2013 Nicola Asuni - Tecnick.com LTD - Tutti i diritti riservati - All Rights Reserved. 2015 Virtuemart Team. All rights reserved.","authorEmail":"","authorUrl":"http:\\/\\/www.virtuemart.net","version":"1.0.0","description":"TCPDF 6.0.096 by Nicola Asuni. Joomla Installer by the VirtueMart Team","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10030, 'VirtueMart_allinone', 'component', 'com_virtuemart_allinone', '', 1, 1, 0, 0, '{"name":"VirtueMart_allinone","type":"component","creationDate":"March 11 2016","author":"The VirtueMart Development Team","copyright":"Copyright (C) 2004-2015 Virtuemart Team. All rights reserved.","authorEmail":"","authorUrl":"http:\\/\\/www.virtuemart.net","version":"3.0.14","description":"","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10031, 'VM Payment - Standard', 'plugin', 'standard', 'vmpayment', 0, 1, 1, 0, '{"name":"Standard","type":"plugin","creationDate":"March 11 2016","author":"The VirtueMart Development Team","copyright":"Copyright (C) 2004-2016 Virtuemart Team. All rights reserved.","authorEmail":"","authorUrl":"http:\\/\\/www.virtuemart.net","version":"3.0.14","description":"Standard payment plugin","group":"","filename":"standard"}', '', '', '', 0, '0000-00-00 00:00:00', 20, 0),
(10032, 'VM Payment - Klarna', 'plugin', 'klarna', 'vmpayment', 0, 0, 1, 0, '{"name":"Klarna","type":"plugin","creationDate":"March 11 2016","author":"The VirtueMart Development Team","copyright":"Copyright (C) 2004-2016 Virtuemart Team. All rights reserved.","authorEmail":"","authorUrl":"http:\\/\\/www.virtuemart.net","version":"3.0.14","description":"Klarna VirtueMart Payment Plugin","group":"","filename":"klarna"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(10033, 'VM Payment - KlarnaCheckout', 'plugin', 'klarnacheckout', 'vmpayment', 0, 0, 1, 0, '{"name":"Klarna Checkout","type":"plugin","creationDate":"March 11 2016","author":"The VirtueMart Development Team","copyright":"Copyright (C) 2004-2016 Virtuemart Team. All rights reserved.","authorEmail":"","authorUrl":"http:\\/\\/www.virtuemart.net","version":"3.0.14","description":"","group":"","filename":"klarnacheckout"}', '', '', '', 0, '0000-00-00 00:00:00', 20, 0),
(10034, 'VM Payment - Sofort Banking/Überweisung', 'plugin', 'sofort', 'vmpayment', 0, 0, 1, 0, '{"name":"Sofort","type":"plugin","creationDate":"March 11 2016","author":"The VirtueMart Development Team","copyright":"Copyright (C) 2004-2016 Virtuemart Team. All rights reserved.","authorEmail":"","authorUrl":"http:\\/\\/www.virtuemart.net","version":"3.0.14","description":"<a href=\\"http:\\/www.sofort.com\\" target=\\"_blank\\">Sofort<\\/a> is a popular\\n\\tpayment provider and available in many countries. \\n    ","group":"","filename":"sofort"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(10035, 'VM Payment - PayPal', 'plugin', 'paypal', 'vmpayment', 0, 0, 1, 0, '{"name":"PayPal","type":"plugin","creationDate":"March 11 2016","author":"VirtueMart Development Team","copyright":"Copyright (C) 2004-2016 Virtuemart Team. All rights reserved.","authorEmail":"","authorUrl":"http:\\/\\/www.virtuemart.net","version":"3.0.14","description":"PayPal","group":"","filename":"paypal"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10036, 'VM Payment - Heidelpay', 'plugin', 'heidelpay', 'vmpayment', 0, 0, 1, 0, '{"name":"Heidelpay","type":"plugin","creationDate":"12-Sep-2012","author":"Heidelberger Payment GmbH","copyright":"Copyright Heidelberger Payment GmbH","authorEmail":"info@heidelpay.de","authorUrl":"http:\\/\\/www.heidelpay.de","version":"3.0.14","description":"\\n        <h2>Virtuemart Plugin von:<\\/h2><p><a href=\\"http:\\/\\/www.Heidelpay.de\\" target=\\"_blank\\"><img src=\\"http:\\/\\/www.heidelpay.de\\/gfx\\/logo.gif\\" style=\\"margin-right:20px;\\"\\/><\\/a><\\/p> ","group":"","filename":"heidelpay"}', '', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(10037, 'VM Payment - Paybox', 'plugin', 'paybox', 'vmpayment', 0, 0, 1, 0, '{"name":"VM Payment - Paybox","type":"plugin","creationDate":"March 11 2016","author":"The VirtueMart Development Team","copyright":"Copyright (C) 2004-2016 Virtuemart Team. All rights reserved.","authorEmail":"","authorUrl":"http:\\/\\/www.virtuemart.net","version":"3.0.14","description":"<a href=\\"http:\\/\\/paybox.com\\" target=\\"_blank\\">Paybox<\\/a> \\n    ","group":"","filename":"paybox"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(10038, 'VM Payment - 2Checkout', 'plugin', 'tco', 'vmpayment', 0, 0, 1, 0, '{"name":"2Checkout","type":"plugin","creationDate":"October 2015","author":"Craig Christenson","copyright":"Copyright (C) 2004-2015 Virtuemart Team. All rights reserved.","authorEmail":"","authorUrl":"http:\\/\\/www.2checkout.com","version":"0.1","description":"<a href=\\"https:\\/\\/www.2checkout.com\\/referral?r=virtuemart\\" target=\\"_blank\\">2Checkout<\\/a> is a popular payment provider and available in many countries. \\n    ","group":"","filename":"tco"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(10039, 'VM Payment - Pay with Amazon', 'plugin', 'amazon', 'vmpayment', 0, 0, 1, 0, '{"name":"AMAZON","type":"plugin","creationDate":"March 11 2016","author":"The VirtueMart Development Team","copyright":"Copyright (C) 2004-2016 Virtuemart Team. All rights reserved.","authorEmail":"","authorUrl":"http:\\/\\/www.virtuemart.net","version":"3.0.14","description":"AMAZON payment plugin","group":"","filename":"amazon"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(10040, 'System - Pay with Amazon', 'plugin', 'amazon', 'system', 0, 0, 1, 0, '{"name":"AMAZON","type":"plugin","creationDate":"March 11 2016","author":"The VirtueMart Development Team","copyright":"Copyright (C) 2004-2016 Virtuemart Team. All rights reserved.","authorEmail":"","authorUrl":"http:\\/\\/www.virtuemart.net","version":"3.0.14","description":"AMAZON payment SYSTEM plugin","group":"","filename":"amazon"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(10041, 'VM Payment - Realex HPP & API', 'plugin', 'realex_hpp_api', 'vmpayment', 0, 0, 1, 0, '{"name":"realex_hpp_api","type":"plugin","creationDate":"March 11 2016","author":"The VirtueMart Development Team","copyright":"Copyright (C) 2004-2016 Virtuemart Team. All rights reserved.","authorEmail":"","authorUrl":"http:\\/\\/www.virtuemart.net","version":"3.0.14","description":"Realex HPP and API","group":"","filename":"realex_hpp_api"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(10042, 'VM UserField - Realex HPP & API', 'plugin', 'realex_hpp_api', 'vmuserfield', 0, 0, 1, 0, '{"name":"Realex_hpp_api","type":"plugin","creationDate":"March 11 2016","author":"The VirtueMart Development Team","copyright":"Copyright (C) 2004-2016 Virtuemart Team. All rights reserved.","authorEmail":"","authorUrl":"http:\\/\\/www.virtuemart.net","version":"3.0.14","description":"Card storage plugin for Realex","group":"","filename":"realex_hpp_api"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(10043, 'VM Payment - Skrill', 'plugin', 'skrill', 'vmpayment', 0, 0, 1, 0, '{"name":"Skrill","type":"plugin","creationDate":"March 11 2016","author":"Skrill Holdings Limited","copyright":"Copyright (C) 2004-2016 Virtuemart Team. All rights reserved.","authorEmail":"","authorUrl":"http:\\/\\/www.skrill.com","version":"3.0.14","description":"<a href=\\"http:\\/\\/www.skrill.com\\" target=\\"_blank\\">skrill<\\/a> is a popular\\n\\tpayment provider authorised by the Financial Services Authority of the United Kingdom (FSA). \\n    ","group":"","filename":"skrill"}', '', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(10044, 'VM Payment - Authorize.net', 'plugin', 'authorizenet', 'vmpayment', 0, 0, 1, 0, '{"name":"Authorize.net AIM","type":"plugin","creationDate":"March 11 2016","author":"The VirtueMart Development Team","copyright":"Copyright (C) 2004-2016 Virtuemart Team. All rights reserved.","authorEmail":"","authorUrl":"http:\\/\\/www.virtuemart.net","version":"3.0.14","description":"Authorize.net AIM","group":"","filename":"authorizenet"}', '', '', '', 0, '0000-00-00 00:00:00', 20, 0),
(10045, 'VM Payment - Sofort iDeal', 'plugin', 'sofort_ideal', 'vmpayment', 0, 0, 1, 0, '{"name":"Sofort Ideal","type":"plugin","creationDate":"March 11 2016","author":"The VirtueMart Development Team","copyright":"Copyright (C) 2004-2016 Virtuemart Team. All rights reserved.","authorEmail":"","authorUrl":"http:\\/\\/www.virtuemart.net","version":"3.0.14","description":"<a href=\\"http:\\/www.sofort.com\\" target=\\"_blank\\">Sofort<\\/a> is a popular\\n\\tpayment provider and available in many countries. \\n    ","group":"","filename":"sofort"}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(10046, 'VM Payment - Klikandpay', 'plugin', 'klikandpay', 'vmpayment', 0, 0, 1, 0, '{"name":"VM Payment - klikandpay","type":"plugin","creationDate":"March 11 2016","author":"The VirtueMart Development Team","copyright":"Copyright (C) 2004-2016 Virtuemart Team. All rights reserved.","authorEmail":"","authorUrl":"http:\\/\\/www.virtuemart.net","version":"Beta1","description":"<a href=\\"http:\\/\\/klikandpay.com\\" target=\\"_blank\\">klikandpay<\\/a> \\n    ","group":"","filename":"klikandpay"}', '', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(10047, 'VM Shipment - By weight, ZIP and countries', 'plugin', 'weight_countries', 'vmshipment', 0, 1, 1, 0, '{"name":"By weight, ZIP and countries","type":"plugin","creationDate":"March 11 2016","author":"The VirtueMart Development Team","copyright":"Copyright (C) 2004-2016 Virtuemart Team. All rights reserved.","authorEmail":"","authorUrl":"http:\\/\\/www.virtuemart.net","version":"3.0.14","description":"VMSHIPMENT_WEIGHT_COUNTRIES_PLUGIN_DESC","group":"","filename":"weight_countries"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10048, 'VM Custom - Customer text input', 'plugin', 'textinput', 'vmcustom', 0, 1, 1, 0, '{"name":"VMCustom - textinput","type":"plugin","creationDate":"March 11 2016","author":"The VirtueMart Development Team","copyright":"Copyright (C) 2004-2014 Virtuemart Team. All rights reserved.","authorEmail":"","authorUrl":"http:\\/\\/www.virtuemart.net","version":"3.0.14","description":"text input plugin for product","group":"","filename":"textinput"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10049, 'VM Custom - Product specification', 'plugin', 'specification', 'vmcustom', 0, 1, 1, 0, '{"name":"plgvm_specification","type":"plugin","creationDate":"March 11 2016","author":"The VirtueMart Development Team","copyright":"Copyright (C) 2004-2014 Virtuemart Team. All rights reserved.","authorEmail":"","authorUrl":"http:\\/\\/www.virtuemart.net","version":"3.0.14","description":"VMCustom - specification; text input plugin for product","group":"","filename":"specification"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10050, 'VM Calculation - Avalara Tax', 'plugin', 'avalara', 'vmcalculation', 0, 0, 1, 0, '{"name":"VM - Calculation Avalara Tax","type":"plugin","creationDate":"March 11 2016","author":"Max Milbers","copyright":"Copyright (C) 2013 iStraxx UG (haftungsbeschr\\u00e4nkt). All rights reserved","authorEmail":"","authorUrl":"http:\\/\\/virtuemart.net","version":"3.0.14","description":"VM - Calculation Avalara Tax; On demand tax calculation for whole U.S.A.","group":"","filename":"avalara"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10051, 'VirtueMart Product', 'plugin', 'virtuemart', 'search', 0, 0, 1, 0, '{"name":"Search - VirtueMart","type":"plugin","creationDate":"March 11 2016","author":"The VirtueMart Development Team","copyright":"Copyright (C) 2004-2016 Virtuemart Team. All rights reserved.","authorEmail":"","authorUrl":"http:\\/\\/www.virtuemart.net","version":"3.0.14","description":"PLG_SEARCH_VIRTUEMART_XML_DESCRIPTION","group":"","filename":"virtuemart"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10052, 'mod_vmmenu', 'module', 'mod_vmmenu', '', 1, 1, 3, 0, '{"name":"VirtueMart Administrator Menu","type":"module","creationDate":"March 11 2016","author":"The VirtueMart Development Team","copyright":"Copyright (C) 2004-2013 Virtuemart Team. All rights reserved.","authorEmail":"max|at|virtuemart.net","authorUrl":"http:\\/\\/www.virtuemart.net","version":"3.0.14","description":"MOD_VMMENU_XML_DESCRIPTION","group":"","filename":"mod_vmmenu"}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(10053, 'mod_virtuemart_currencies', 'module', 'mod_virtuemart_currencies', '', 0, 1, 1, 0, '{"name":"mod_virtuemart_currencies","type":"module","creationDate":"March 11 2016","author":"The VirtueMart Development Team","copyright":"Copyright (C) 2004-2016 Virtuemart Team. All rights reserved.","authorEmail":"","authorUrl":"http:\\/\\/www.virtuemart.net","version":"3.0.14","description":"MOD_VIRTUEMART_CURRENCIES_DESC","group":"","filename":"mod_virtuemart_currencies"}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(10054, 'mod_virtuemart_product', 'module', 'mod_virtuemart_product', '', 0, 1, 1, 0, '{"name":"mod_virtuemart_product","type":"module","creationDate":"March 11 2016","author":"The VirtueMart Development Team","copyright":"Copyright (C) 2004-2016 Virtuemart Team. All rights reserved.","authorEmail":"","authorUrl":"http:\\/\\/www.virtuemart.net","version":"3.0.14","description":"MOD_VIRTUEMART_PRODUCT_DESC","group":"","filename":"mod_virtuemart_product"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(10055, 'mod_virtuemart_search', 'module', 'mod_virtuemart_search', '', 0, 1, 1, 0, '{"name":"mod_virtuemart_search","type":"module","creationDate":"March 11 2016","author":"The VirtueMart Development Team","copyright":"Copyright (C) 2004-2016 Virtuemart Team. All rights reserved.","authorEmail":"","authorUrl":"http:\\/\\/www.virtuemart.net","version":"3.0.14","description":"MOD_VIRTUEMART_SEARCH_DESC","group":"","filename":"mod_virtuemart_search"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(10056, 'mod_virtuemart_manufacturer', 'module', 'mod_virtuemart_manufacturer', '', 0, 1, 1, 0, '{"name":"mod_virtuemart_manufacturer","type":"module","creationDate":"March 11 2016","author":"The VirtueMart Development Team","copyright":"Copyright (C) 2004-2016 Virtuemart Team. All rights reserved.","authorEmail":"","authorUrl":"http:\\/\\/www.virtuemart.net","version":"3.0.14","description":"MOD_VIRTUEMART_MANUFACTURER_DESC","group":"","filename":"mod_virtuemart_manufacturer"}', '', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(10057, 'mod_virtuemart_cart', 'module', 'mod_virtuemart_cart', '', 0, 1, 1, 0, '{"name":"mod_virtuemart_cart","type":"module","creationDate":"March 11 2016","author":"The VirtueMart Development Team","copyright":"Copyright (C) 2004-2016 Virtuemart Team. All rights reserved.","authorEmail":"","authorUrl":"http:\\/\\/www.virtuemart.net","version":"3.0.14","description":"MOD_VIRTUEMART_CART_DESC","group":"","filename":"mod_virtuemart_cart"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10058, 'mod_virtuemart_category', 'module', 'mod_virtuemart_category', '', 0, 1, 1, 0, '{"name":"mod_virtuemart_category","type":"module","creationDate":"March 11 2016","author":"The VirtueMart Development Team","copyright":"Copyright (C) 2004-2016 Virtuemart Team. All rights reserved.","authorEmail":"","authorUrl":"http:\\/\\/www.virtuemart.net","version":"3.0.14","description":"MOD_VIRTUEMART_CATEGORY_DESC","group":"","filename":"mod_virtuemart_category"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(10059, 'com_virtuemart - ru-RU', 'file', 'com_virtuemart-ru-RU', '', 0, 1, 0, 0, '{"name":"com_virtuemart - ru-RU","type":"file","creationDate":"09.08.2016","author":"VirtueMart language team","copyright":"\\u00a9 2008-2016 - compojoom-com. All rights reserved!","authorEmail":"max@virtuemart.net","authorUrl":"https:\\/\\/virtuemart.net","version":"2016-08-09-08-13-07","description":"\\n        This package was auto generated with CTransifex(https:\\/\\/compojoom.com). We''ve grabbed the latest language files for our extension from transifex.com.\\n        Special thanks to OpenTranslators (http:\\/\\/opentranslators.org) for helping us with this translation!\\n    ","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10060, 'VirtueMart_Plugins_Language_Pack - ru-RU', 'file', 'VirtueMart_Plugins_Language_Pack-ru-RU', '', 0, 1, 0, 0, '{"name":"VirtueMart_Plugins_Language_Pack - ru-RU","type":"file","creationDate":"09.08.2016","author":"VirtueMart language team","copyright":"\\u00a9 2008-2016 - compojoom-com. All rights reserved!","authorEmail":"max@virtuemart.net","authorUrl":"https:\\/\\/virtuemart.net","version":"2016-08-09-06-49-18","description":"\\n        This package was auto generated with CTransifex(https:\\/\\/compojoom.com). We''ve grabbed the latest language files for our extension from transifex.com.\\n        Special thanks to our translation team at (https:\\/\\/www.transifex.com\\/projects\\/p\\/virtuemart\\/) for helping with this VirtueMart translation!\\n    ","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_finder_filters`
--

CREATE TABLE IF NOT EXISTS `iw0sl_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_finder_links`
--

CREATE TABLE IF NOT EXISTS `iw0sl_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_finder_links_terms0`
--

CREATE TABLE IF NOT EXISTS `iw0sl_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_finder_links_terms1`
--

CREATE TABLE IF NOT EXISTS `iw0sl_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_finder_links_terms2`
--

CREATE TABLE IF NOT EXISTS `iw0sl_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_finder_links_terms3`
--

CREATE TABLE IF NOT EXISTS `iw0sl_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_finder_links_terms4`
--

CREATE TABLE IF NOT EXISTS `iw0sl_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_finder_links_terms5`
--

CREATE TABLE IF NOT EXISTS `iw0sl_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_finder_links_terms6`
--

CREATE TABLE IF NOT EXISTS `iw0sl_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_finder_links_terms7`
--

CREATE TABLE IF NOT EXISTS `iw0sl_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_finder_links_terms8`
--

CREATE TABLE IF NOT EXISTS `iw0sl_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_finder_links_terms9`
--

CREATE TABLE IF NOT EXISTS `iw0sl_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_finder_links_termsa`
--

CREATE TABLE IF NOT EXISTS `iw0sl_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_finder_links_termsb`
--

CREATE TABLE IF NOT EXISTS `iw0sl_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_finder_links_termsc`
--

CREATE TABLE IF NOT EXISTS `iw0sl_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_finder_links_termsd`
--

CREATE TABLE IF NOT EXISTS `iw0sl_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_finder_links_termse`
--

CREATE TABLE IF NOT EXISTS `iw0sl_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_finder_links_termsf`
--

CREATE TABLE IF NOT EXISTS `iw0sl_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_finder_taxonomy`
--

CREATE TABLE IF NOT EXISTS `iw0sl_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `iw0sl_finder_taxonomy`
--

INSERT INTO `iw0sl_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_finder_taxonomy_map`
--

CREATE TABLE IF NOT EXISTS `iw0sl_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_finder_terms`
--

CREATE TABLE IF NOT EXISTS `iw0sl_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_finder_terms_common`
--

CREATE TABLE IF NOT EXISTS `iw0sl_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `iw0sl_finder_terms_common`
--

INSERT INTO `iw0sl_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('ani', 'en'),
('any', 'en'),
('are', 'en'),
('aren''t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn''t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('noth', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('onli', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('veri', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('whi', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_finder_tokens`
--

CREATE TABLE IF NOT EXISTS `iw0sl_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT '',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_finder_tokens_aggregate`
--

CREATE TABLE IF NOT EXISTS `iw0sl_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  `language` char(3) NOT NULL DEFAULT '',
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_finder_types`
--

CREATE TABLE IF NOT EXISTS `iw0sl_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_languages`
--

CREATE TABLE IF NOT EXISTS `iw0sl_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_image` (`image`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `iw0sl_languages`
--

INSERT INTO `iw0sl_languages` (`lang_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en', '', '', '', '', 1, 1, 1),
(2, 'ru-RU', 'Russian', 'Русский', 'ru', 'ru', '', '', '', '', 1, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_menu`
--

CREATE TABLE IF NOT EXISTS `iw0sl_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_path` (`path`(255)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=204 ;

--
-- Дамп данных таблицы `iw0sl_menu`
--

INSERT INTO `iw0sl_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 207, 0, '*', 0),
(2, 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 0, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
(3, 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
(4, 'menu', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 0, 2, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
(5, 'menu', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
(6, 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
(7, 'menu', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 0, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 29, 34, 0, '*', 1),
(8, 'menu', 'com_contact', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 0, 7, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 30, 31, 0, '*', 1),
(9, 'menu', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 0, 7, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 32, 33, 0, '*', 1),
(10, 'menu', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 0, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 35, 40, 0, '*', 1),
(11, 'menu', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 36, 37, 0, '*', 1),
(12, 'menu', 'com_messages_read', 'Read Private Message', '', 'Messaging/Read Private Message', 'index.php?option=com_messages', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-read', 0, '', 38, 39, 0, '*', 1),
(13, 'menu', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 41, 46, 0, '*', 1),
(14, 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 13, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 42, 43, 0, '*', 1),
(15, 'menu', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 0, 13, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 44, 45, 0, '*', 1),
(16, 'menu', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 0, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 47, 48, 0, '*', 1),
(17, 'menu', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 0, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 49, 50, 0, '*', 1),
(18, 'menu', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 0, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 51, 52, 0, '*', 1),
(19, 'menu', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 1, 1, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 53, 54, 0, '*', 1),
(20, 'main', 'com_tags', 'Tags', '', 'Tags', 'index.php?option=com_tags', 'component', 0, 1, 1, 29, 0, '0000-00-00 00:00:00', 0, 1, 'class:tags', 0, '', 55, 56, 0, '', 1),
(21, 'main', 'com_postinstall', 'Post-installation messages', '', 'Post-installation messages', 'index.php?option=com_postinstall', 'component', 0, 1, 1, 32, 0, '0000-00-00 00:00:00', 0, 1, 'class:postinstall', 0, '', 57, 58, 0, '*', 1),
(101, 'mainmenu', 'О нас', 'home', '', 'home', 'index.php?option=com_content&view=featured', 'component', -2, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"1","num_intro_articles":"3","num_columns":"3","num_links":"0","multi_column_order":"1","orderby_pri":"","orderby_sec":"front","order_date":"","show_pagination":"2","show_pagination_results":"1","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","show_feed_link":"1","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"0","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 21, 22, 0, '*', 0),
(102, 'mainmenu', 'Сведения об образовательной организации ', 'svedeniya-ob-obrazovatelnoj-organizatsii', '', 'svedeniya-ob-obrazovatelnoj-organizatsii', 'index.php?option=com_content&view=featured', 'component', -2, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 23, 28, 0, '*', 0),
(103, 'mainmenu', 'История', 'istoriya', '', 'istoriya', 'index.php?option=com_content&view=featured', 'component', -2, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 59, 60, 0, '*', 0),
(104, 'mainmenu', 'Галерея', 'galereya', '', 'galereya', 'index.php?option=com_content&view=featured', 'component', -2, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 61, 62, 0, '*', 0),
(105, 'mainmenu', 'Новости', 'novosti', '', 'novosti', 'index.php?option=com_content&view=category&layout=blog&id=8', 'component', -2, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"layout_type":"blog","show_category_heading_title_text":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","show_cat_tags":"","page_subheading":"","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_featured":"","show_title":"","link_titles":"1","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 63, 64, 0, '*', 0),
(106, 'mainmenu', 'Контакты', 'kontakty', '', 'kontakty', 'index.php?option=com_contact&view=contact&id=1', 'component', -2, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"presentation_style":"","show_contact_category":"","show_contact_list":"","show_tags":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","articles_display_num":"","show_links":"","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 65, 66, 0, '*', 0),
(116, 'mainmenu', 'Основные сведения', 'osnovnye-svedeniya', '', 'svedeniya-ob-obrazovatelnoj-organizatsii/osnovnye-svedeniya', 'index.php?option=com_content&view=featured', 'component', -2, 102, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 24, 25, 0, '*', 0),
(117, 'mainmenu', 'Материально-техническое обеспечение и оснащенность образовательного процесса', '2016-03-20-10-32-18', '', 'svedeniya-ob-obrazovatelnoj-organizatsii/2016-03-20-10-32-18', '', 'url', -2, 102, 2, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 26, 27, 0, '*', 0),
(120, 'mainmenu', 'Меню', 'menyu', '', 'menyu', 'index.php?option=com_content&view=article&id=8', 'component', -2, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 13, 14, 0, '*', 0),
(121, 'mainmenu', 'Банкеты', 'bankety', '', 'bankety', 'index.php?option=com_content&view=article&id=6', 'component', -2, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"0","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"0","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 15, 16, 0, '*', 0),
(122, 'mainmenu', 'Детям', 'detyam', '', 'detyam', 'index.php?option=com_content&view=article&id=9', 'component', -2, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 17, 18, 0, '*', 0),
(123, 'mainmenu', 'Доставка', 'dostavka', '', 'dostavka', 'index.php?option=com_content&view=article&id=10', 'component', -2, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 19, 20, 0, '*', 0),
(124, 'mainmenu', 'О нас', '2016-04-19-14-20-01', '', '2016-04-19-14-20-01', '#', 'url', -2, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 67, 68, 0, '*', 0),
(125, 'mainmenu', 'Главная', 'glavnaya', '', 'glavnaya', 'index.php?option=com_content&view=article&id=7', 'component', -2, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"0","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 11, 12, 0, '*', 0),
(130, 'mainmenu', 'Контакты', 'kontakty2', '', 'kontakty2', 'index.php?option=com_content&view=article&id=11', 'component', -2, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 69, 70, 0, '*', 0),
(134, 'menu1', 'Главная', 'main2', '', 'main2', 'index.php?option=com_content&view=article&id=15', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 71, 72, 1, '*', 0),
(135, 'mainmenu', 'Информация о доме', '2016-08-15-05-02-48', '', '2016-08-15-05-02-48', '#info-house', 'url', -2, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 73, 74, 0, '*', 0),
(136, 'mainmenu', 'Фото дома', '2016-08-15-05-43-33', '', '2016-08-15-05-43-33', '#photo-house', 'url', -2, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 75, 76, 0, '*', 0),
(137, 'mainmenu', 'Планировка', '2016-08-15-05-44-09', '', '2016-08-15-05-44-09', '#plan-house', 'url', -2, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 77, 78, 0, '*', 0),
(138, 'mainmenu', 'Посёлок «Родной»', '2016-08-15-05-44-56', '', '2016-08-15-05-44-56', '#posel-house', 'url', -2, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 79, 80, 0, '*', 0),
(139, 'mainmenu', 'Тур', '2016-08-15-05-45-54', '', '2016-08-15-05-45-54', '#tur', 'url', -2, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 81, 82, 0, '*', 0),
(140, 'mainmenu', 'Фото посёлка', '2016-08-15-05-46-25', '', '2016-08-15-05-46-25', '#photo-posel', 'url', -2, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 83, 84, 0, '*', 0),
(141, 'mainmenu', 'Отзывы', '2016-08-15-05-47-05', '', '2016-08-15-05-47-05', '#reviews', 'url', -2, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 85, 86, 0, '*', 0),
(142, 'mainmenu', 'Карта', '2016-08-15-05-47-26', '', '2016-08-15-05-47-26', '#cart', 'url', -2, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 87, 88, 0, '*', 0),
(143, 'mainmenu', 'Контакты', '2016-08-15-05-47-54', '', '2016-08-15-05-47-54', '#contacts', 'url', -2, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 89, 90, 0, '*', 0),
(144, 'main', 'COM_UNITEREVOLUTION2', 'com-uniterevolution2', '', 'com-uniterevolution2', 'index.php?option=com_uniterevolution2', 'component', 0, 1, 1, 10018, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_uniterevolution2/images/icon-16-revolution.png', 0, '{}', 91, 92, 0, '', 1),
(147, 'main', 'COM_RODNOY_MAP', 'com-rodnoy-map', '', 'com-rodnoy-map', 'index.php?option=com_rodnoy_map', 'component', 0, 1, 1, 10026, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_rodnoy_map/images/s_com_rodnoy_map.png', 0, '{}', 93, 96, 0, '', 1),
(148, 'main', 'COM_RODNOY_MAP_TITLE___RODNOY_MAP_ITEMS9370S', 'com-rodnoy-map-title-rodnoy-map-items9370s', '', 'com-rodnoy-map/com-rodnoy-map-title-rodnoy-map-items9370s', 'index.php?option=com_rodnoy_map&view=__rodnoy_map_items9370s', 'component', 0, 147, 2, 10026, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_rodnoy_map/images/s___rodnoy_map_items9370s.png', 0, '{}', 94, 95, 0, '', 1),
(149, 'menu1', 'Карта поселка', 'karta-poselka', '', 'karta-poselka', 'index.php?option=com_rodnoy_map&view=map&controller=config.display.templates', 'component', -2, 1, 1, 10026, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 97, 98, 0, '*', 0),
(150, 'main', 'COM_VIRTUEMART', 'com-virtuemart', '', 'com-virtuemart', 'index.php?option=com_virtuemart', 'component', 0, 1, 1, 10028, 0, '0000-00-00 00:00:00', 0, 1, '../components/com_virtuemart/assets/images/vmgeneral/menu_icon.png', 0, '{}', 99, 124, 0, '', 1),
(151, 'main', 'COM_VIRTUEMART_CONTROL_PANEL', 'com-virtuemart-control-panel', '', 'com-virtuemart/com-virtuemart-control-panel', 'index.php?option=com_virtuemart&view=virtuemart', 'component', 0, 150, 2, 10028, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_virtuemart/assets/images/icon_16/menu-icon16-report.png', 0, '{}', 100, 101, 0, '', 1),
(152, 'main', 'COM_VIRTUEMART_MENU_CATEGORIES', 'com-virtuemart-menu-categories', '', 'com-virtuemart/com-virtuemart-menu-categories', 'index.php?option=com_virtuemart&view=category', 'component', 0, 150, 2, 10028, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_virtuemart/assets/images/icon_16/menu-icon16-categories.png', 0, '{}', 102, 103, 0, '', 1),
(153, 'main', 'COM_VIRTUEMART_MENU_PRODUCTS', 'com-virtuemart-menu-products', '', 'com-virtuemart/com-virtuemart-menu-products', 'index.php?option=com_virtuemart&view=product', 'component', 0, 150, 2, 10028, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_virtuemart/assets/images/icon_16/menu-icon16-products.png', 0, '{}', 104, 105, 0, '', 1),
(154, 'main', 'COM_VIRTUEMART_MENU_ORDERS', 'com-virtuemart-menu-orders', '', 'com-virtuemart/com-virtuemart-menu-orders', 'index.php?option=com_virtuemart&view=orders', 'component', 0, 150, 2, 10028, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_virtuemart/assets/images/icon_16/menu-icon16-orders.png', 0, '{}', 106, 107, 0, '', 1),
(155, 'main', 'COM_VIRTUEMART_MENU_REPORT', 'com-virtuemart-menu-report', '', 'com-virtuemart/com-virtuemart-menu-report', 'index.php?option=com_virtuemart&view=report', 'component', 0, 150, 2, 10028, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_virtuemart/assets/images/icon_16/menu-icon16-report.png', 0, '{}', 108, 109, 0, '', 1),
(156, 'main', 'COM_VIRTUEMART_MENU_USERS', 'com-virtuemart-menu-users', '', 'com-virtuemart/com-virtuemart-menu-users', 'index.php?option=com_virtuemart&view=user', 'component', 0, 150, 2, 10028, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_virtuemart/assets/images/icon_16/menu-icon16-shoppers.png', 0, '{}', 110, 111, 0, '', 1),
(157, 'main', 'COM_VIRTUEMART_MENU_MANUFACTURERS', 'com-virtuemart-menu-manufacturers', '', 'com-virtuemart/com-virtuemart-menu-manufacturers', 'index.php?option=com_virtuemart&view=manufacturer', 'component', 0, 150, 2, 10028, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_virtuemart/assets/images/icon_16/menu-icon16-manufacturers.png', 0, '{}', 112, 113, 0, '', 1),
(158, 'main', 'COM_VIRTUEMART_MENU_STORE', 'com-virtuemart-menu-store', '', 'com-virtuemart/com-virtuemart-menu-store', 'index.php?option=com_virtuemart&view=user&task=editshop', 'component', 0, 150, 2, 10028, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_virtuemart/assets/images/icon_16/menu-icon16-shop.png', 0, '{}', 114, 115, 0, '', 1),
(159, 'main', 'COM_VIRTUEMART_MENU_MEDIAFILES', 'com-virtuemart-menu-mediafiles', '', 'com-virtuemart/com-virtuemart-menu-mediafiles', 'index.php?option=com_virtuemart&view=media', 'component', 0, 150, 2, 10028, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_virtuemart/assets/images/icon_16/menu-icon16-media.png', 0, '{}', 116, 117, 0, '', 1),
(160, 'main', 'COM_VIRTUEMART_MENU_SHIPMENTMETHODS', 'com-virtuemart-menu-shipmentmethods', '', 'com-virtuemart/com-virtuemart-menu-shipmentmethods', 'index.php?option=com_virtuemart&view=shipmentmethod', 'component', 0, 150, 2, 10028, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_virtuemart/assets/images/icon_16/menu-icon16-shipmentmethods.png', 0, '{}', 118, 119, 0, '', 1),
(161, 'main', 'COM_VIRTUEMART_MENU_PAYMENTMETHODS', 'com-virtuemart-menu-paymentmethods', '', 'com-virtuemart/com-virtuemart-menu-paymentmethods', 'index.php?option=com_virtuemart&view=paymentmethod', 'component', 0, 150, 2, 10028, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_virtuemart/assets/images/icon_16/menu-icon16-paymentmethods.png', 0, '{}', 120, 121, 0, '', 1),
(162, 'main', 'COM_VIRTUEMART_MENU_CONFIGURATION', 'com-virtuemart-menu-configuration', '', 'com-virtuemart/com-virtuemart-menu-configuration', 'index.php?option=com_virtuemart&view=config', 'component', 0, 150, 2, 10028, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_virtuemart/assets/images/icon_16/menu-icon16-config.png', 0, '{}', 122, 123, 0, '', 1),
(163, 'main', 'TCPDF', 'tcpdf', '', 'tcpdf', 'index.php?option=com_tcpdf', 'component', 0, 1, 1, 10029, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 125, 126, 0, '', 1),
(164, 'main', 'VirtueMart AIO', 'virtuemart-aio', '', 'virtuemart-aio', 'index.php?option=com_virtuemart_allinone', 'component', 0, 1, 1, 10030, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 127, 128, 0, '', 1),
(165, 'menu2', 'Кабинет', 'kabinet', '', 'kabinet', 'index.php?option=com_virtuemart&view=orders&layout=list', 'component', 1, 1, 1, 10028, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 129, 130, 0, '*', 0),
(166, 'menu2', 'Корзина', 'korzina', '', 'korzina', 'index.php?option=com_virtuemart&view=cart', 'component', -2, 1, 1, 10028, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 131, 132, 0, '*', 0),
(167, 'menu3', 'Помощь', 'pomoshch', '', 'pomoshch', 'index.php?option=com_virtuemart&view=orders&layout=list', 'component', 1, 1, 1, 10028, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 133, 134, 0, '*', 0),
(168, 'mainmenu', 'Каталог', 'katalog', '', 'katalog', 'index.php?option=com_virtuemart&view=virtuemart&productsublayout=0', 'component', 1, 1, 1, 10028, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 135, 136, 0, '*', 0),
(169, 'mainmenu', 'Доставка и оплата', 'dostavka-i-oplata', '', 'dostavka-i-oplata', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 137, 138, 0, '*', 0),
(170, 'mainmenu', 'Контакты', 'contacts', '', 'contacts', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 139, 140, 0, '*', 0),
(171, 'menu4', 'О компании', 'o-kompanii', '', 'o-kompanii', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 141, 142, 0, '*', 0),
(172, 'menu4', 'Сертификаты', 'sertifikaty', '', 'sertifikaty', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 143, 144, 0, '*', 0),
(173, 'menu4', 'Публикации', 'publikatsii', '', 'publikatsii', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 145, 146, 0, '*', 0),
(174, 'menu4', 'Отзывы', 'otzyvy', '', 'otzyvy', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 147, 148, 0, '*', 0),
(175, 'menu5', 'Мебель', 'mebel', '', 'mebel', 'index.php?option=com_virtuemart&view=category&virtuemart_category_id=1&virtuemart_manufacturer_id=0&categorylayout=0&showcategory=1&showproducts=1&productsublayout=0', 'component', 1, 1, 1, 10028, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"images\\/1\\/stol.png","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 149, 150, 0, '*', 0),
(176, 'menu5', 'Оборудование', 'oborudovanie', '', 'oborudovanie', 'index.php?option=com_virtuemart&view=category&virtuemart_category_id=2&virtuemart_manufacturer_id=0&categorylayout=0&showcategory=1&showproducts=1&productsublayout=0', 'component', 1, 1, 1, 10028, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"images\\/1\\/komp.png","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 151, 152, 0, '*', 0),
(177, 'menu5', 'Учебные материалы и пособия', 'uchebnye-materialy-i-posobiya', '', 'uchebnye-materialy-i-posobiya', 'index.php?option=com_virtuemart&view=category&virtuemart_category_id=3&virtuemart_manufacturer_id=0&categorylayout=0&showcategory=1&showproducts=1&productsublayout=0', 'component', 1, 1, 1, 10028, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"images\\/1\\/books.png","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 153, 154, 0, '*', 0),
(178, 'menu5', 'Канцелярия', 'kantselyariya', '', 'kantselyariya', 'index.php?option=com_virtuemart&view=category&virtuemart_category_id=4&virtuemart_manufacturer_id=0&categorylayout=0&showcategory=1&showproducts=1&productsublayout=0', 'component', 1, 1, 1, 10028, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"images\\/1\\/pencil.png","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 155, 156, 0, '*', 0),
(179, 'menu6', 'Русский язык и литература', 'russkij-yazyk-i-literatura', '', 'russkij-yazyk-i-literatura', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"images\\/1\\/rus.png","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 157, 158, 0, '*', 0),
(180, 'menu6', 'Математика', 'matematika', '', 'matematika', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"images\\/1\\/mat.png","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 159, 160, 0, '*', 0),
(181, 'menu6', 'История', 'histor2', '', 'histor2', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"images\\/1\\/hist.png","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 161, 162, 0, '*', 0),
(182, 'menu6', 'Информатика', 'informatika', '', 'informatika', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"images\\/1\\/inform.png","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 163, 164, 0, '*', 0),
(183, 'menu6', 'ИЗО и черчение', 'izo-i-cherchenie', '', 'izo-i-cherchenie', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"images\\/1\\/izo.png","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 165, 166, 0, '*', 0),
(184, 'menu6', 'Геграфия', 'gegrafiya', '', 'gegrafiya', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"images\\/1\\/geo.png","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 167, 168, 0, '*', 0),
(185, 'menu6', 'ОБЖ', 'obzh', '', 'obzh', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"images\\/1\\/obz.png","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 169, 170, 0, '*', 0),
(186, 'menu6', 'Иностранный язык', 'inostrannyj-yazyk', '', 'inostrannyj-yazyk', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"images\\/1\\/inyaz.png","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 171, 172, 0, '*', 0);
INSERT INTO `iw0sl_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(187, 'menu6', 'Химия', 'khimiya', '', 'khimiya', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"images\\/1\\/him.png","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 173, 174, 0, '*', 0),
(188, 'menu6', 'Биология', 'biologiya', '', 'biologiya', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"images\\/1\\/bio.png","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 175, 176, 0, '*', 0),
(189, 'menu6', 'Физкультура', 'fizkultura', '', 'fizkultura', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"images\\/1\\/fizkult.png","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 177, 178, 0, '*', 0),
(190, 'menu6', 'Музыка', 'muzyka', '', 'muzyka', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"images\\/1\\/muz.png","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 179, 180, 0, '*', 0),
(191, 'menu6', 'Физика', 'fizika', '', 'fizika', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"images\\/1\\/fizik.png","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 181, 182, 0, '*', 0),
(192, 'menu6', 'Экология', 'ekologiya', '', 'ekologiya', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"images\\/1\\/eco.png","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 183, 184, 0, '*', 0),
(193, 'menu7', 'Доставка по всей России', 'dostavka-po-vsej-rossii', '', 'dostavka-po-vsej-rossii', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"images\\/1\\/rocket.png","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 185, 186, 0, '*', 0),
(194, 'menu7', 'Наличный и безналичный рассчет', 'nalichnyj-i-beznalichnyj-rasschet', '', 'nalichnyj-i-beznalichnyj-rasschet', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"images\\/1\\/online.png","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 187, 188, 0, '*', 0),
(195, 'menu7', 'Чистый документооборот', 'chistyj-dokumentooborot', '', 'chistyj-dokumentooborot', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"images\\/1\\/case.png","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 189, 190, 0, '*', 0),
(196, 'menu8', 'Кабинет', 'cab2', '', 'cab2', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 191, 192, 0, '*', 0),
(197, 'menu8', 'Актовый зал', 'aktovyj-zal', '', 'aktovyj-zal', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 193, 194, 0, '*', 0),
(198, 'menu9', 'Детский сад', 'detskij-sad', '', 'detskij-sad', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 195, 196, 0, '*', 0),
(199, 'menu9', 'Начальная школа', 'nachalnaya-shkola', '', 'nachalnaya-shkola', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 197, 198, 0, '*', 0),
(200, 'menu10', 'Русский язык и литература', 'rus2', '', 'rus2', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 199, 200, 0, '*', 0),
(201, 'menu10', 'Физика', 'fizik2', '', 'fizik2', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 201, 202, 0, '*', 0),
(202, 'menu11', 'Мебель ученическая', 'mebel-uchenicheskaya', '', 'mebel-uchenicheskaya', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 203, 204, 0, '*', 0),
(203, 'menu11', 'Многофункциональный комплекс преподавателя', 'mnogofunktsionalnyj-kompleks-prepodavatelya', '', 'mnogofunktsionalnyj-kompleks-prepodavatelya', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 205, 206, 0, '*', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_menu_types`
--

CREATE TABLE IF NOT EXISTS `iw0sl_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Дамп данных таблицы `iw0sl_menu_types`
--

INSERT INTO `iw0sl_menu_types` (`id`, `menutype`, `title`, `description`) VALUES
(1, 'mainmenu', 'Main Menu', 'The main menu for the site'),
(4, 'menu1', 'Скрытое меню', ''),
(5, 'menu2', 'Кабинет', ''),
(6, 'menu3', 'Помощь', ''),
(7, 'menu4', 'Главное меню 2', ''),
(8, 'menu5', 'Категории вверху на главной', ''),
(9, 'menu6', 'Оборудование для кабинетов', ''),
(10, 'menu7', 'Меню иконок внизу', ''),
(11, 'menu8', 'Помещения:', ''),
(12, 'menu9', 'Учебное заведение:', ''),
(13, 'menu10', 'Предмет:', ''),
(14, 'menu11', 'Оборудование:', '');

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_messages`
--

CREATE TABLE IF NOT EXISTS `iw0sl_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_messages_cfg`
--

CREATE TABLE IF NOT EXISTS `iw0sl_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_modules`
--

CREATE TABLE IF NOT EXISTS `iw0sl_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=202 ;

--
-- Дамп данных таблицы `iw0sl_modules`
--

INSERT INTO `iw0sl_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 39, 'Верхнее меню', '', '', 1, 'col-mnu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 0, '{"menutype":"mainmenu","base":"","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(2, 40, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 41, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(4, 42, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(8, 43, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 44, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 45, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(12, 46, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*'),
(13, 47, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 48, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 49, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 50, 'Login Form', '', '', 7, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_login', 1, 1, '{"greeting":"1","name":"0"}', 0, '*'),
(17, 51, 'Breadcrumbs', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_breadcrumbs', 1, 1, '{"moduleclass_sfx":"","showHome":"1","homeText":"","showComponent":"1","separator":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(79, 52, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(86, 53, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(87, 54, 'Слоган вверху', '', 'Муниципальное бюджетное дошкольное образовательное <br>\r\nучреждение города Ростова-на-Дону\r\n<div class="yellow">«Детский сад <span>№</span>293»</div>\r\n', 1, 'slogan', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"_slogan","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(88, 55, 'Версия для слабовидящих', '', '<a href="#">Версия для слабовидящих</a>', 1, 'see', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"_see","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(89, 56, 'Задать вопрос', '', '<a href="/zadat-vopros">Задать вопрос</a>', 1, 'quest', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"_quest","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(90, 57, 'Email вверху', '', '<span>E-mail</span> ds293@mail.ru', 1, 'mail', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"_mail","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(91, 58, 'Телефон вверху', '', '<span>Контактный телефон</span>\r\n<div class="phone"><span>(863)</span>222-04-97</div>\r\n', 1, 'top_phone', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"_top_phone","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(92, 59, 'Наши группы вверху на главной', '', '<a href="#">Наши группы</a>', 1, 'our_groups', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"_our_groups","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(93, 60, 'Странички педагогов вверху на главной', '', '<a href="#">Странички педагогов</a>', 1, 'teacers_page', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"_teacers_page","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(94, 61, 'Наши достижения вверху на главной', '', '<a href="#">Наши достижения</a>', 1, 'dostig', 41, '2016-03-20 12:46:59', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"_dostig","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(96, 64, 'Копирайт в футере', '', '2016 © Все права защищены', 1, 'copy', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"_copy","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(97, 65, 'Счетчик в футере', '', '<img src="images/counter.png" alt="" />', 1, 'counter', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"_counter","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(98, 66, 'Адрес в футере', '', '<span>Адрес</span>\r\n<div>344091г. Ростов-на-Дону,\r\nпр. Коммунистический 37/2</div>', 1, 'footer_adress', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"_footer_adress","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(99, 67, 'Почта в футере', '', '<span>e-mail</span>\r\n<div>ds293@mail.ru</div>\r\n', 0, 'footer_mail', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"_footer_mail","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(100, 68, 'Телефон в футере', '', '<span>тел./факс</span>\r\n<div class="code"><span>(863)</span>222-04-97</div>', 1, 'footer_phone', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"_footer_phone","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(101, 74, 'Новости', '', '', 1, 'module_news', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_articles_category', 1, 1, '{"mode":"normal","show_on_article_page":"1","count":"3","show_front":"show","category_filtering_type":"1","catid":["8"],"show_child_category_articles":"0","levels":"1","author_filtering_type":"1","created_by":[""],"author_alias_filtering_type":"1","created_by_alias":[""],"excluded_articles":"","date_filtering":"off","date_field":"a.created","start_date_range":"","end_date_range":"","relative_date":"30","article_ordering":"publish_up","article_ordering_direction":"ASC","article_grouping":"none","article_grouping_direction":"ksort","month_year_format":"F Y","link_titles":"1","show_date":"1","show_date_field":"created","show_date_format":"d M Y","show_category":"0","show_hits":"0","show_author":"0","show_introtext":"1","introtext_limit":"200","show_readmore":"0","show_readmore_title":"1","readmore_limit":"15","layout":"_:default","moduleclass_sfx":"_module_news","owncache":"1","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h2","header_class":"","style":"0"}', 0, '*'),
(102, 75, 'Социальные кнопки на главной', '', '<a href="#"><img src="images/insta.png" alt=""></a>\r\n<a href="#"><img src="images/youtube.png" alt=""></a>\r\n<a href="#"><img src="images/fb.png" alt=""></a>\r\n<a href="#"><img src="images/twit.png" alt=""></a>\r\n<a href="#"><img src="images/vk.png" alt=""></a>', 1, 'social_buttons', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"_social_buttons","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(104, 77, 'Новости', '', '', 5, 'left_menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_articles_category', 1, 1, '{"mode":"normal","show_on_article_page":"1","count":"2","show_front":"show","category_filtering_type":"1","catid":["8"],"show_child_category_articles":"0","levels":"1","author_filtering_type":"1","created_by":[""],"author_alias_filtering_type":"1","created_by_alias":[""],"excluded_articles":"","date_filtering":"off","date_field":"a.created","start_date_range":"","end_date_range":"","relative_date":"30","article_ordering":"a.title","article_ordering_direction":"ASC","article_grouping":"none","article_grouping_direction":"ksort","month_year_format":"F Y","link_titles":"1","show_date":"1","show_date_field":"created","show_date_format":"d M Y","show_category":"0","show_hits":"0","show_author":"0","show_introtext":"1","introtext_limit":"200","show_readmore":"0","show_readmore_title":"1","readmore_limit":"15","layout":"_:default","moduleclass_sfx":"_module_news module_news_left","owncache":"1","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h2","header_class":"","style":"0"}', 0, '*'),
(105, 78, 'Социальные кнопки на внутренних', '', '<a href="#"><img src="images/insta.png" alt=""></a>\r\n<a href="#"><img src="images/youtube.png" alt=""></a>\r\n<a href="#"><img src="images/fb.png" alt=""></a>\r\n<a href="#"><img src="images/twit.png" alt=""></a>\r\n<a href="#"><img src="images/vk.png" alt=""></a>', 1, 'social_buttons', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"_social_buttons sb_center","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(106, 79, 'Наши группы на внутренних слева', '', '<a href="#">Наши группы</a>', 1, 'left_menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"_our_groups our_group_left","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(107, 80, 'Странички педагогов слева на внутренних', '', '<a href="#">Странички педагогов</a>', 2, 'left_menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"_teacers_page teacers_page_left","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(108, 81, 'Наши достижения слева на внутренних', '', '<a href="#">Наши достижения</a>', 3, 'left_menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"_dostig dostig_left","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(109, 82, 'Адрес вверху', '', '<p>Новосибирск, Дуси Ковальчук, 238, тел. 209-209-4</p>\r\n', 0, 'adress', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"_adress","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(110, 83, 'Сайт еще не приготовился', '', '<p>Сайт еще не приготовился! <br>все ждем! слюнки текут! :)</p>', 0, 'prepay', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"_prepay","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(111, 84, 'Наша группа в контакте', '', '<p>наша группа в Контакте</p><a href="http://vk.com/marcipan.cafe">vk.com/marcipan.cafe</a>', 1, 'our_croup', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"_our_croup","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(112, 85, 'Виджет группы вконтакте', '', '<script type="text/javascript" src="//vk.com/js/api/openapi.js?116"></script>\r\n<!-- VK Widget -->\r\n<div id="vk_groups"></div>\r\n<script type="text/javascript">\r\nVK.Widgets.Group("vk_groups", {mode: 0, width: "700", height: "300", color1: ''FFFFFF'', color2: ''2B587A'', color3: ''5B7FA6''}, 76829938);\r\n</script>', 0, 'vk_module', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"_vk_module","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(114, 87, 'Адресс вверху', '', '<img src="images/templ2/top_adress.png" alt="" />', 0, 'top__adress', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"_top__adress","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(115, 88, 'Наши плюсы', '', '<p>Мы не сеть кафе, работаем не формально. У нас можно душевно посидеть с компанией или семьей. Гордимся своей пиццей, пивом, которое варят наши друзья пововары только из чешских ингредиентов. Продаем картины со стен.</p>', 1, 'component__module', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"_component__module","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h2","header_class":"","style":"0"}', 0, '*'),
(116, 89, 'Адрес в футере', '', 'Кафе “Марципан”. Новосибирск. Дуси Ковальчук 238,<br>\r\nтел. 209-209-4  marcipan-cafe@mail.ru', 0, 'footer-adress', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"_footer-adress","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(117, 92, 'Бумажное ШОУ. 20 марта 2016', '', '{gallery}myphotos{/gallery}', 1, 'component__gallery', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(123, 101, 'Пицца на главной вверху', '', '<img src="images/templ2/pizza_bg.jpg" alt="" />', 1, 'header', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"_header","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(124, 102, 'Заголовок на странице Банкеты', '', '<h1>Банкеты</h1>', 1, 'upper_carousel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"_upper_carousel","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(125, 103, 'Текст на странице банкеты', '', '<p>2 зала на 35 и 25 человека.</br>\r\nОтдельный вход в Банкетный зал.</br>\r\nМожно свой алкоголь.</br>\r\nНет ограничений по времени.</br>\r\nПрограммы и ведущие на выбор.</p>\r\n<h2>Условия бронирования</h2>\r\n<p>По телефону достаточно озвучить дату. Мы резервируем время. Банкет считается забронорованным после 50% оплаты. Выlаем чек. Окончательная оплата после банкета.</p>\r\n<a class="bron order clickMe" href="#win2"></a>\r\n<h2>Банкетное меню</h2>\r\n<p><img style="display: block; margin-left: auto; margin-right: auto; margin-bottom:10px" src="images/templ2/menu11.jpg" alt="" />\r\n<img style="display: block; margin-left: auto; margin-right: auto;" src="images/templ2/menu11.jpg" alt="" /></p>', 9, 'component__module', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"_component__module","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(126, 106, 'Текст на странице Детям', '', '<h2>СТРАНА МАРЦИПАНИЯ</h2>\r\n<p>Проводим детские празднки от 290 руб. <br /> Форматы:<br /> - Мастер-класс по пицце<br /> - Банкет и дискотека с ведущим аниматором.<br /> - Выпускной бал.<br /> - Шоу с банкетом.<br /> - Квест шоу с банкетом</p>\r\n\r\n<p>Дополнительно.<br /> - Батут.<br /> - Художник Шаржист.<br /> - Фотосессия с Миньонами</p>\r\n<h2>Условия бронирования</h2>\r\n<p>По телефону достаточно озвучить дату. <br /> Мы резервируем время. <br /> Банкет считается забронорованным после 50% оплаты. Выжаем чек.<br /> Окончательная оплата после банкета.</p>\r\n<a class="bron order clickMe" href="#win2"></a>\r\n<h2>Детское меню</h2>', 8, 'component__module', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"_component__module","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(127, 107, 'Марципания надпись на странице детям', '', '<img style="display: block; margin-left: auto; margin-right: auto;" src="images/templ2/marc.png" alt="" />', 1, 'upper_carousel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"_marcipaniya","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(128, 109, 'Текст на странице доставка', '', '<h2>ДОСТАВКА</h2>\r\n<p>Условия доставки<br /> Условия доставки <br /> Условия доставки Условия доставки <br /> Условия доставки Условия доставки </p>\r\n<img style="display: block; margin-left: auto; margin-right: auto;" src="images/templ2/dost_tel.png" alt="" />', 7, 'component__module', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"_component__module mbn","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(129, 110, 'Текст на главной', '', '<h2>Наши плюсы</h2>\r\n<p>Мы не сеть кафе, работаем не формально.\r\nУ нас можно душевно посидеть с компанией или семьей. Гордимся своей пиццей, пивом, которое варят наши друзья пововары только из чешских ингредиентов. Продаем картины со стен.</p>\r\n', 6, 'component__module', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"_component__module","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(130, 112, 'Текст для страницы контакты', '', '<h2 >Звони, не бойся</h2>\r\n<p>Наш телефон: 209-209-4. Пиши: marcipan-cafe@mail.ru\r\nМы работаем:  <br>\r\nпонедельник-четверг с 10-21  <br>\r\nпятница-суббота 10-23 <br>\r\nвосресенье 12-21 <br>\r\n</p>\r\n<h2 >Как нас найти</h2>\r\n<p>Дуси Ковальчук 238, 1 этаж. (Нарымский квартал). \r\n15 минут пешком от метро Заельцовская в сторону Зоопарка. Вход сразу за остановкой Плановая (в сторону пл.Калинина).</p>\r\n\r\n\r\n', 2, 'component__module', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"_component__module","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(131, 113, 'Давай к нам в контакт', '', '<h2>Давай к нам в Контакт!</h2>\r\n<p>Самые актуальные новости про акции, розыгрыши, призы, мероприятия можно получать в нашей группе ВКонтакте... осталось только присоедениться к нам. Вперед!</p>\r\n', 4, 'component__module', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"_component__module","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(132, 114, 'Ссылки на соц сети и фламп', '', '  <table>\r\n    <tbody><tr>\r\n<td><a class="vk" href="#"><img alt="" src="images/templ2/vk_but.png"></a></td>\r\n<td><a class="insta" href="#"><img alt="" src="images/templ2/insta_but.jpg"></a></td>\r\n<td><a class="flamp" href="#"><img alt="" src="images/templ2/flamp_but.jpg"></a></td>\r\n    </tr></tbody>\r\n  </table>   ', 10, 'component__module', 41, '2016-06-08 06:25:07', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"_component__module vk_insta_flamp","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(133, 115, 'simpleForm2', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_simpleform2', 1, 1, '', 0, '*'),
(134, 116, 'Задать умный вопрос', '', '', 1, 'under_component', 41, '2016-06-08 07:52:50', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_simpleform2', 1, 1, '{"cache":"0","moduleclass_sfx":"_a form2","domainKey":"","sfMailReply":"","sfMailTo":"membship@ya.ru","sfMailSubj":"Письмо с сайта Марципан-Кафе","userCheckFunc":"","userResultFunc":"","simpleCode":"{form}\\r\\n<div class=\\"mbf10\\"><span class=\\"name\\"><\\/span>{element required=\\"required\\" error=\\"Введите Ваше имя\\" type=\\"text\\" class=\\"name_form\\"  \\/}<\\/div>\\r\\n<div class=\\"mbf10\\"><span class=\\"mail_phone\\"><\\/span>{element required=\\"required\\" error=\\"Введите Ваш телефон или электронную почту\\" type=\\"text\\" class=\\"phone_form\\" \\/}<\\/div>\\r\\n{element type=\\"textarea\\" required=\\"required\\" error=\\"Введите сообщение\\" class=\\"mess\\" \\/}\\r\\n{element type=\\"captcha\\" error=\\"Введите цифры с картики\\" class=\\"captch\\" width=\\"220\\" height=\\"50\\" placeholder=\\"ввести цифры с картинки\\" \\/}\\r\\n{element class=\\"button\\"  type=\\"submit\\"  \\/}\\r\\n{\\/form}","okText":"<div class=\\"cl\\">Ваше сообщение отправлено!<br>\\r\\nМы свяжемся с Вами и ответим!\\r\\n<\\/div>","inclJquery":"0","jqueryNoConflict":"0","loadScriptsMode":"body","module_tag":"div","bootstrap_size":"0","header_tag":"h2","header_class":"","style":"0"}', 0, '*'),
(135, 117, 'Всплывающая форма', '', '', 1, 'footer-adress', 41, '2016-06-08 08:50:05', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_simpleform2', 1, 0, '{"cache":"0","moduleclass_sfx":"_popup form2","domainKey":"","sfMailReply":"","sfMailTo":"membship@ya.rum","sfMailSubj":"Письмо с сайта Марципан-Кафе","userCheckFunc":"","userResultFunc":"","simpleCode":"<a href=\\"#x\\" class=\\"overlay\\" id=\\"win2\\"><\\/a>\\r\\n<div class=\\"popup\\">\\r\\n{form}\\r\\n<div class=\\"mbf10\\"><span class=\\"name\\"><\\/span>{element required=\\"required\\" error=\\"Введите Ваше имя\\" type=\\"text\\" class=\\"name_form\\"  \\/}<\\/div>\\r\\n<div class=\\"mbf10\\"><span class=\\"mail_phone\\"><\\/span>{element required=\\"required\\" error=\\"Введите Ваш телефон или электронную почту\\" type=\\"text\\" class=\\"phone_form\\" \\/}<\\/div>\\r\\n{element type=\\"textarea\\" required=\\"required\\" error=\\"Введите сообщение\\" class=\\"mess\\" \\/}\\r\\n{element type=\\"captcha\\" error=\\"Введите цифры с картики\\" class=\\"captch\\" width=\\"220\\" height=\\"50\\" placeholder=\\"ввести цифры с картинки\\" \\/}\\r\\n{element class=\\"button\\"  type=\\"submit\\"  \\/}\\r\\n{\\/form}\\r\\n<\\/div>","okText":"<div class=\\"cl\\">Ваше сообщение отправлено!<br>\\r\\nМы свяжемся с Вами и ответим!\\r\\n<\\/div>","inclJquery":"0","jqueryNoConflict":"0","loadScriptsMode":"head","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(136, 118, 'Карта в контактах', '', '<script type="text/javascript" charset="utf-8" async src="https://api-maps.yandex.ru/services/constructor/1.0/js/?sid=ahF34X4AmFF6IxXSopuMTpQLKviugVXx&width=1045&height=400&lang=ru_RU&sourceType=constructor&scroll=true"></script>', 3, 'component__module', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"_880","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(137, 119, 'Сам модуль вконтакте', '', '<script type="text/javascript" src="//vk.com/js/api/openapi.js?121"></script>\r\n<!-- VK Widget -->\r\n<div id="vk_groups"></div>\r\n<script type="text/javascript">\r\nVK.Widgets.Group("vk_groups", {mode: 0, width: "910", height: "400", color1: ''EDEBD9'', color2: ''451709'', color3: ''8D2D2D''}, 76829938);\r\n</script>', 5, 'component__module', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"_880","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(138, 120, 'Гербы вверху', '', '<img src="images/1/herb1.png" alt="" />\r\n<img src="images/1/herb2.png" alt="" />', 1, 'herbs', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":" herbs","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(139, 121, 'Контакты вверху', '', '							<div class="top_phone">\r\n								Свяжитесь с нами <br>\r\n								<span>8 800 2000 600</span>\r\n							</div>\r\n							<div class="top_mail"><a href="mailto:info@remontroom24.ru">info@remontroom24.ru</a></div>', 1, 'top_contacts', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":" top_contacts","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(140, 122, 'Баннер вверху', '', '<img src="images/1/slide1.jpg" alt="" />\r\n	<div class="slider-text">\r\n					<a href="#">Экскурсии\r\n						по Питеру!</a>\r\n					</div>', 1, 'slider', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":" slider","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(141, 128, 'Новости', '', '', 1, 'news', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_articles_category', 1, 1, '{"mode":"normal","show_on_article_page":"1","count":"6","show_front":"show","category_filtering_type":"1","catid":["11"],"show_child_category_articles":"0","levels":"1","author_filtering_type":"1","created_by":[""],"author_alias_filtering_type":"1","created_by_alias":[""],"excluded_articles":"","date_filtering":"off","date_field":"a.created","start_date_range":"","end_date_range":"","relative_date":"30","article_ordering":"a.title","article_ordering_direction":"ASC","article_grouping":"none","article_grouping_direction":"ksort","month_year_format":"F Y","link_titles":"1","show_date":"1","show_date_field":"publish_up","show_date_format":"d.m.Y","show_category":"0","show_hits":"0","show_author":"0","show_introtext":"0","introtext_limit":"100","show_readmore":"0","show_readmore_title":"0","readmore_limit":"15","layout":"_:default","moduleclass_sfx":" news","owncache":"1","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h2","header_class":"","style":"0"}', 0, '*'),
(142, 129, 'Акции', '', '', 1, 'news', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_articles_category', 1, 1, '{"mode":"normal","show_on_article_page":"1","count":"6","show_front":"show","category_filtering_type":"1","catid":["12"],"show_child_category_articles":"0","levels":"1","author_filtering_type":"1","created_by":[""],"author_alias_filtering_type":"1","created_by_alias":[""],"excluded_articles":"","date_filtering":"off","date_field":"a.created","start_date_range":"","end_date_range":"","relative_date":"30","article_ordering":"a.title","article_ordering_direction":"ASC","article_grouping":"none","article_grouping_direction":"ksort","month_year_format":"F Y","link_titles":"1","show_date":"1","show_date_field":"publish_up","show_date_format":"d.m.Y","show_category":"0","show_hits":"0","show_author":"0","show_introtext":"0","introtext_limit":"100","show_readmore":"0","show_readmore_title":"0","readmore_limit":"15","layout":"_:default","moduleclass_sfx":" news promo","owncache":"1","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h2","header_class":"","style":"0"}', 0, '*'),
(143, 130, 'Горячие предложения', '', '', 1, 'hot', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_articles_news', 1, 1, '{"catid":["10"],"image":"1","item_title":"1","link_titles":"1","item_heading":"h5","showLastSeparator":"0","readmore":"0","count":"4","ordering":"a.publish_up","direction":"1","layout":"_:default","moduleclass_sfx":" hot","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h2","header_class":"","style":"0"}', 0, '*'),
(144, 132, 'Тест горячие', '', '', 1, 'hot', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_articles_popular', 1, 1, '{"catid":["10"],"count":"4","show_front":"1","date_filtering":"off","date_field":"a.created","start_date_range":"","end_date_range":"","relative_date":"30","layout":"_:default","moduleclass_sfx":" news","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(145, 133, 'Пять причин почему выбирают нас:', '', '<ul>\r\n							<li>Мы делаем вашу жизнь ярче и интереснее уже более 20 лет. С 1993 года официальный туроператор.</li>\r\n							<li>Реагируем на любые запросы в течение 10 минут в рабочее время компании.</li>\r\n							<li>Офисы в Екатеринбурге и Санкт-Петербурге.</li>\r\n							<li>Консультации бесплатно для всех!</li>\r\n							<li>Подарки и скидки всем – мы ценим и любим своих клиентов.</li>\r\n						</ul>	', 1, 'module', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":" module w_1200","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h1","header_class":"","style":"0"}', 0, '*'),
(146, 134, 'Наши партнеры', '', '<img src="images/1/NASA_logo.png" alt="" /><img src="images/1/Starbucks.png" alt="" /><img src="images/1/rostelecom.png" alt="" />', 1, 'module_partners', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":" module_partners w_1200","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(149, 137, 'Адрес внизу', '', '<span>Пушкин тур</span>\r\n						Россия, 620000, Екатеринбург <br>\r\n						ул.  Ленина, 5', 1, 'bot-adress', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":" bot-adress","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(150, 138, 'Телефоны внизу', '', '<p>телефоны: <span>8 800 2000 600</span> </p>\r\n						<div>+7 (343) 323 34 54</div>', 1, 'bot-phones', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":" bot-phones","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(151, 139, 'Почта внизу', '', '<a href="mailto:mail@pushkin.ru">Email: mail@pushkin.ru</a>', 1, 'bot-mail', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":" bot-mail","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(152, 140, 'Социальные сети внизу', '', '<img src="images/1/social.png" alt="" />', 1, 'bot-social', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":" bot-social","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(153, 141, 'Партнеры внизу', '', '<img src="images/1/NASA_logo.png" alt="" /><img src="images/1/Starbucks.png" alt="" /><img src="images/1/rostelecom.png" alt="" />', 1, 'bot-partners', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":" bot-partners module_partners","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(154, 142, 'Контакты вверху', '', '<p>Контактная информация</p>\r\n<p><span>+7-912-625-60-46</span>\r\n<a href="#" class="go-look"></a>\r\n</p>', 1, 'top-contacts', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"top-contacts","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(155, 143, 'Добрый день!', '', '<p>Мы построили новый домик в загородном посёлке «Родной» и представляем его Вашему вниманию! Дом блочно-кирпичный, тёплый и основательный из оцилиндрованного бревна. Дом просторный, двухэтажный, более 130 м2. Гараж само собой.  На первом этаже просторный холл, столовая зона и гостинная (переход в гараж обязательно и пара технических помещений). На втором три спальни и просторная комната отдыха. Всё как у людей: 3 ванных комнаты, четыре гардероба.  В общем дом получился отличный как для семьянина, так и для ищущего покоя одиночки. Вокруг дома лес, прекрасный вид. Про пение птиц, чистый воздух и говорить не будем, и так всё понятно! Свой дом, это отличная возможность начать независимую и здоровую жизнь в дали суеты и городской пыли. Жизнь в посёлке «Родной» размерена и спокойна. Здесь можно начать всё с начала.</p>', 1, 'good-day', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"w_1057 good-day","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(156, 144, 'Фото дома', '', '', 1, 'slider', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_unite_revolution2', 1, 1, '{"sliderid":"1","include_jquery":"true","js_load_type":"head","no_conflict_mode":"false","moduleclass_sfx":"w_1057 slider","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(157, 146, 'План дома', '', '<table>\r\n<tr>\r\n<td><img src="images/1/plan1.jpg" alt="" /></td>\r\n<td><img src="images/1/plan2.jpg" alt="" /></td>\r\n</tr>\r\n<tr>\r\n<td>Первый этаж</td>\r\n<td>Второй этаж</td>\r\n</tr>\r\n</table>', 1, 'plan', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"w_1057 plan","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(158, 147, 'Скачать документацию', '', '<p><span>Скачайте полную техническую документацию:</span> <a href="#" class="pdf-down"></a></p>', 1, 'down-doc', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"w_1024 down-doc","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(159, 148, 'Посёлок', '', '<p>Загородный поселок Родной расположен в одном из самых экологически чистых районов Свердловской области . Он со всех сторон окружен лесом смешанных пород. Настоящий, живой лес начинается у Вашего дома. Рядом есть природный водоем – небольшая река Утка, а в самом поселке планируется строительство бассейна с благоустроенной зоной отдыха. В нашем поселке работает круглосуточная охрана, проложены дороги, проведено электричество. Поселок разрабатывается не так давно. На участках первой очереди идет активное строительство.В продажу предлагаются земельные участки от 15 соток и строительство домов по договорам подряда. Кроме того, мы строим все необходимые дачные сооружения: бани, беседки, веранды, гаражи. Проекты домов могут быть предложены покупателями либо выбраны из тех, что разработанных специально для нашего поселка. Помогаем с ландшафтным дизайном и обустройством территории.</p>', 1, 'poselok', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"w_1057 poselok","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(160, 149, 'Тур по посёлку', '', '             <object width="100%" height="100%">\r\n                <embed src="modules/mod_tur/16.06.2016.swf" width="100%" height="100%" allowFullScreen="true"></embed>\r\n              </object>', 1, 'tur', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"w_1057 tur","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(161, 150, 'Фото посёлка', '', '{gallery}photo{/gallery}', 1, 'foto-poselka', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"w_1057 foto-poselka","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*');
INSERT INTO `iw0sl_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(162, 151, 'Отзывы', '', '<div class="reviews-cantainer">\r\n<div class="review">\r\n<div class="review-text"><p>Мне здесь безумно спокойно! Природа лечит после долгого трудового дня в городе. Спокойные соседи, чистый воздух и свой собственный дом - что еще надо для спокойной, счастливой жизни. </p></div>\r\n<div class="reviewer">\r\n<p><img src="images/1/reviewer1.png" alt=""> <span>Светлана, хозяйка 65 участка</span></p>\r\n</div>\r\n</div>\r\n<div class="review">\r\n<div class="review-text"><p>Мне здесь безумно спокойно! Природа лечит после долгого трудового дня в городе. Спокойные соседи, чистый воздух и свой собственный дом - что еще надо для спокойной, счастливой жизни. </p></div>\r\n<div class="reviewer">\r\n<p><img src="images/1/reviewer1.png" alt=""> <span>Светлана, хозяйка 65 участка</span></p>\r\n</div>\r\n</div>\r\n<div class="review">\r\n<div class="review-text"><p>Мне здесь безумно спокойно! Природа лечит после долгого трудового дня в городе. Спокойные соседи, чистый воздух и свой собственный дом - что еще надо для спокойной, счастливой жизни. </p></div>\r\n<div class="reviewer">\r\n<p><img src="images/1/reviewer1.png" alt=""> <span>Светлана, хозяйка 65 участка</span></p>\r\n</div>\r\n</div>\r\n<div class="review">\r\n<div class="review-text"><p>Мне здесь безумно спокойно! Природа лечит после долгого трудового дня в городе. Спокойные соседи, чистый воздух и свой собственный дом - что еще надо для спокойной, счастливой жизни. </p></div>\r\n<div class="reviewer">\r\n<p><img src="images/1/reviewer1.png" alt=""> <span>Светлана, хозяйка 65 участка</span></p>\r\n</div>\r\n</div>\r\n</div>\r\n', 1, 'reviews', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"w_1057 reviews","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(163, 152, 'Карта поселка', '', '<a href="/karta-poselka"><img src="images/1/carta-poselka.jpg" alt="" /></a>', 1, 'karta-poselka', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"w_1057 karta-poselka","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(164, 154, 'Контакты', '', '<script type="text/javascript" charset="utf-8" async src="https://api-maps.yandex.ru/services/constructor/1.0/js/?sid=YUQsOdvhwKmBftz_aj6Nz2Axewm5XD7d&amp;width=1200&amp;height=368&amp;lang=ru_RU&amp;sourceType=constructor&amp;scroll=true"></script>\r\n<div class="contacts-text">\r\n<p>Новомосковский (Пермский тракт), поворот от поста ГАИ на Дружинино, по главной, через Лазоревый, ориентир - указатели на загородный поселок Родной. </p>\r\n</div>\r\n<div class="contacts-adress">\r\n<p><img src="images/1/logo2.png" alt=""><a href="http://poselok-rodnoi.ru">www.poselok-rodnoi.ru</a> <br>\r\nЕкатеринбург, УЛ. ХОХРЯКОВА 104. ОФИС 805<br>\r\nКонтактная информация: +7-912-625-60-46</p>\r\n</div>\r\n', 1, 'kontakty', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"w_1057 kontakty","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(165, 155, 'Цена вопроса', '', '<table>\r\n<tr>\r\n<td>1 <span>гараж</span></td>\r\n<td>2 <span>этажа</span></td>\r\n<td>7 <span>комнат</span></td>\r\n<td>10 <span>соток земли</span></td>\r\n<td>20 <span>минут до города</span></td>\r\n<td>+100 <span>процентов к счастью</span></td>\r\n</tr>\r\n</table>', 1, 'quest-price', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"w_1057 quest-price","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(166, 156, 'Цена', '', '<p>4.599.000 <span>g</span></p>', 1, 'price', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"price w_1024","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(167, 157, 'Съездим посмотрим внизу', '', '<p>При покупке дома, мы можем предложить 50 % скидки на соседние участки земли, для расширения ваших владений. Также если вы становитесь жителем нашего посёлка, вы получаете много дополнительных приемуществ, о которых я расскажу Вам при встрече! 				</p>\r\n<a href="#" class="go-look2"></a>', 1, 'dotted', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"w_1057 dotted","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(168, 159, 'Фото поселка', '', 'Код галереи в странице "Главная"', 1, 'foto-poselka', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"w_1057 foto-poselka foto-poselka2","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(169, 160, 'Карта поселка', '', '', 1, 'foto-poselka', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"w_1057 dnone","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(170, 161, 'Всплывающая форма', '', '', 1, 'form', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_simpleform2', 1, 0, '{"cache":"0","moduleclass_sfx":"vsp-form","domainKey":"","sfMailReply":"","sfMailTo":"membship@ya.ru","sfMailSubj":"Сообщение с сайта \\"Родной\\"","userCheckFunc":"","userResultFunc":"","simpleCode":"<p>{element type=\\"text\\" placeholder=\\"Ваше имя\\" class=\\"inputtext\\" required=\\"required\\" error=\\"Введите ваше имя\\"  \\/}<\\/p>\\r\\n<p>{element type=\\"text\\" placeholder=\\"Телефон или email\\" class=\\"inputtext\\" required=\\"required\\" error=\\"Введите ваш телефон или email\\"  \\/}<\\/p>\\r\\n<p>{element  type=\\"submit\\"   value=\\"Отправить\\"  \\/}<\\/p>","okText":"Спасибо! Мы свяжемся с вами как можно скорее.","inclJquery":"1","jqueryNoConflict":"0","loadScriptsMode":"body","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(171, 165, 'VM - Administrator Module', '', '', 5, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_vmmenu', 3, 1, '', 1, '*'),
(172, 166, 'VM - Currencies Selector', '', '', 5, 'position-4', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_virtuemart_currencies', 1, 1, '', 0, '*'),
(173, 167, 'VM - Featured products', '', '', 3, 'position-4', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_virtuemart_product', 1, 1, '', 0, '*'),
(174, 168, 'VM - Search in Shop', '', '', 2, 'position-4', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_virtuemart_search', 1, 1, '', 0, '*'),
(175, 169, 'VM - Manufacturer', '', '', 8, 'position-4', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_virtuemart_manufacturer', 1, 1, '', 0, '*'),
(176, 170, 'VM - Shopping cart', '', '', 0, 'position-4', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_virtuemart_cart', 1, 1, '', 0, '*'),
(177, 171, 'VM - Category', '', '', 4, 'position-4', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_virtuemart_category', 1, 1, '', 0, '*'),
(178, 172, 'Поиск', '', '', 1, 'top-search', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_virtuemart_search', 1, 0, '{"width":"20","text":"Ищете что-то конкретное?","filter_category":"0","button":"1","button_pos":"right","imagebutton":"0","button_text":" ","set_itemid":"","layout":"_:default","moduleclass_sfx":"top-search","cache":"1","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(179, 174, 'Меню вверху кабинет', '', '', 1, 'cab', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 0, '{"menutype":"menu2","base":"","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"cab","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(180, 175, 'Меню помощь вверху', '', '', 1, 'help-link', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 0, '{"menutype":"menu3","base":"","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"help-link","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(181, 176, 'Корзина', '', '', 1, 'cart-link', 41, '2016-08-23 07:11:26', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_virtuemart_cart', 1, 0, '{"moduleid_sfx":"","moduleclass_sfx":"cart-link","show_price":"1","show_product_list":"1","layout":"_:default","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(182, 177, 'Верхнее меню 2', '', '', 1, 'col-mnu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 0, '{"menutype":"menu4","base":"","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(183, 178, 'Телефон вверху', '', '+7 9 22222 0889', 1, 'top-phone', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"top-phone","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(184, 179, 'Почта вверху', '', '<a href="mailto:info@aoosk.ru">info@aoosk.ru</a>', 1, 'top-mail', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"top-mail","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(185, 180, 'Категории вверху на главной', '', '', 1, 'oborud', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_virtuemart_category', 1, 0, '{"Parent_Category_id":"0","level":"2","layout":"_:all","cache":"1","moduleclass_sfx":"","class_sfx":"","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(186, 181, 'Категории вверху на главной', '', '', 1, 'oborud', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 0, '{"menutype":"menu5","base":"","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"oborud","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(187, 182, 'Слайдер', '', '', 1, 'slider', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_unite_revolution2', 1, 0, '{"sliderid":"2","include_jquery":"true","js_load_type":"head","no_conflict_mode":"false","moduleclass_sfx":"slider","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(188, 183, 'Попоулярные товары', '', '', 1, 'col-pop', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_virtuemart_product', 1, 1, '{"layout":"default","product_group":"random","max_items":"100","products_per_row":"4","display_style":"div","show_price":"1","show_addtocart":"1","headerText":"","footerText":"","filter_category":"0","virtuemart_category_id":"0","vmcache":"1","vmcachetime":"300","cache":"1","moduleclass_sfx":"","class_sfx":"","module_tag":"div","bootstrap_size":"0","header_tag":"h2","header_class":"","style":"0"}', 0, '*'),
(189, 184, 'Оборудование для кабинетов', '', '', 1, 'obords', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"menu6","base":"","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"obords","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h2","header_class":"","style":"0"}', 0, '*'),
(190, 185, 'Звоните', '', '<div class="w1024">\r\n<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 col-free-phone nopadding-l"><p>8-(800)-2000-600</p></div>\r\n<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 col-free-text nopadding-r"><p>Есть вопросы? Звоните! \r\n<br><span>(звонок по России бесплатный)</span></p></div>\r\n</div>', 1, 'free-call', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"free-call","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(191, 191, 'Наши проекты', '', '', 1, 'col-projects', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_news', 1, 1, '{"catid":["13"],"image":"1","item_title":"1","link_titles":"1","item_heading":"h5","showLastSeparator":"0","readmore":"0","count":"8","ordering":"a.publish_up","direction":"1","layout":"_:default","moduleclass_sfx":"w1024 white-col col-projects","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h2","header_class":"","style":"0"}', 0, '*'),
(192, 192, 'Ссылка помотреть все проекты', '', '<a href="#" class="view-all-reviews">Посмотреть все проекты</a>																		', 1, 'wrap-all', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"w1024 white-col wrap-all","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(193, 193, 'Как мы работаем', '', '<table>\r\n						<tr>\r\n							<td>Сопровождение и помощь учреждению в участии в торгах и написании технического задания</td>\r\n							<td>Формироуем 3 коммерческих предложений от разных компаний (по 44 фз)</td>\r\n							<td>Составляем договор </td>\r\n							<td>формируем заказ</td>\r\n							<td>Доставляем заказ в любую точку России</td>\r\n						</tr>\r\n					</table>', 1, 'how-we-works', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"w1024 white-col how-we-works","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h2","header_class":"","style":"0"}', 0, '*'),
(194, 194, 'Перейти к каталогу на главной', '', '<a href="#" class="go-to-catalog">Перейти к каталогу!</a>			', 1, 'col-to-catalog', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"w1024 white-col col-to-catalog","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(195, 195, 'Меню иконок внизу', '', '', 1, 'bot-icons', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 0, '{"menutype":"menu7","base":"","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"w1024 bot-icons","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(196, 196, 'Помещения', '', '', 1, 'bot-mnu12', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"menu8","base":"","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"bot-mnu bot-mnu1","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h2","header_class":"","style":"0"}', 0, '*'),
(197, 197, 'Учебное заведение:', '', '', 1, 'bot-mnu12', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"menu9","base":"","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"bot-mnu bot-mnu2","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h2","header_class":"","style":"0"}', 0, '*'),
(198, 198, 'Предмет:', '', '', 1, 'bot-mnu3', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"menu10","base":"","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"bot-mnu bot-mnu3","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h2","header_class":"","style":"0"}', 0, '*'),
(199, 199, 'Оборудование:', '', '', 1, 'bot-mnu4', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"menu11","base":"","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"bot-mnu bot-mnu3","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h2","header_class":"","style":"0"}', 0, '*'),
(200, 200, 'Адрес в футере', '', '	<p>ООО «МОСПРОФ»<br>\r\n							Россия,622049, г. Нижний Тагил, <br>\r\n							Радищева, 28, оф. 1204\r\n						</p>', 1, 'bot-adress', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"bot-adress","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(201, 201, 'Телефон и почта в футере', '', '	<p>+7 9 22222 0889 <br>\r\n							<a href="mailto:info@aoosk.ru">info@aoosk.ru</a>\r\n						</p>', 1, 'bot-phone-mail', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"bot-phone-mail","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*');

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_modules_menu`
--

CREATE TABLE IF NOT EXISTS `iw0sl_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `iw0sl_modules_menu`
--

INSERT INTO `iw0sl_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(79, 0),
(86, 0),
(87, 0),
(88, 0),
(89, 0),
(90, 0),
(91, 0),
(92, 101),
(93, 101),
(94, 101),
(95, 101),
(96, 0),
(97, 0),
(98, 0),
(99, 0),
(100, 0),
(101, 101),
(102, 101),
(103, -101),
(104, -101),
(105, -101),
(106, -101),
(107, -101),
(108, -101),
(109, 0),
(110, 0),
(111, 0),
(112, 0),
(114, 0),
(115, 101),
(116, 0),
(117, 125),
(123, 125),
(124, 121),
(125, 121),
(126, 122),
(127, 122),
(128, 123),
(129, 125),
(130, 130),
(131, 130),
(132, 130),
(134, 130),
(135, 121),
(135, 122),
(136, 130),
(137, 130),
(138, 0),
(139, 0),
(140, 0),
(141, 125),
(142, 125),
(143, 125),
(144, 125),
(145, 125),
(146, 125),
(147, 0),
(148, 0),
(149, 0),
(150, 0),
(151, 0),
(152, 0),
(153, 0),
(154, 0),
(155, 134),
(156, 134),
(157, 134),
(158, 134),
(159, 134),
(160, 134),
(161, 0),
(162, 134),
(163, 134),
(164, 134),
(165, 134),
(166, 134),
(167, 134),
(168, 134),
(169, 149),
(170, 0),
(171, 0),
(172, 0),
(173, 0),
(174, 0),
(175, 0),
(176, 0),
(177, 0),
(178, 0),
(179, 0),
(180, 0),
(181, 0),
(182, 0),
(183, 0),
(184, 0),
(185, 0),
(186, 0),
(187, 134),
(188, 134),
(189, 134),
(190, 134),
(191, 134),
(192, 134),
(193, 134),
(194, 134),
(195, 0),
(196, 0),
(197, 0),
(198, 0),
(199, 0),
(200, 0),
(201, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_newsfeeds`
--

CREATE TABLE IF NOT EXISTS `iw0sl_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `images` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_overrider`
--

CREATE TABLE IF NOT EXISTS `iw0sl_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_postinstall_messages`
--

CREATE TABLE IF NOT EXISTS `iw0sl_postinstall_messages` (
  `postinstall_message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) NOT NULL DEFAULT '',
  `language_extension` varchar(255) NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`postinstall_message_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `iw0sl_postinstall_messages`
--

INSERT INTO `iw0sl_postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`) VALUES
(1, 700, 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION', 'plg_twofactorauth_totp', 1, 'action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_condition', '3.2.0', 1),
(2, 700, 'COM_CPANEL_WELCOME_BEGINNERS_TITLE', 'COM_CPANEL_WELCOME_BEGINNERS_MESSAGE', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.2.0', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_redirect_links`
--

CREATE TABLE IF NOT EXISTS `iw0sl_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) DEFAULT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `header` smallint(3) NOT NULL DEFAULT '301',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_link_old` (`old_url`),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_revslider_css`
--

CREATE TABLE IF NOT EXISTS `iw0sl_revslider_css` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `handle` text NOT NULL,
  `settings` text,
  `hover` text,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=44 ;

--
-- Дамп данных таблицы `iw0sl_revslider_css`
--

INSERT INTO `iw0sl_revslider_css` (`id`, `handle`, `settings`, `hover`, `params`) VALUES
(1, '.tp-caption.medium_grey', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"0px 2px 5px rgba(0, 0, 0, 0.5)","font-weight":"700","font-size":"20px","line-height":"20px","font-family":"Arial","padding":"2px 4px","margin":"0px","border-width":"0px","border-style":"none","background-color":"#888","white-space":"nowrap"}'),
(2, '.tp-caption.small_text', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"0px 2px 5px rgba(0, 0, 0, 0.5)","font-weight":"700","font-size":"14px","line-height":"20px","font-family":"Arial","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap"}'),
(3, '.tp-caption.medium_text', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"0px 2px 5px rgba(0, 0, 0, 0.5)","font-weight":"700","font-size":"20px","line-height":"20px","font-family":"Arial","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap"}'),
(4, '.tp-caption.large_text', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"0px 2px 5px rgba(0, 0, 0, 0.5)","font-weight":"700","font-size":"40px","line-height":"40px","font-family":"Arial","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap"}'),
(5, '.tp-caption.very_large_text', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"0px 2px 5px rgba(0, 0, 0, 0.5)","font-weight":"700","font-size":"60px","line-height":"60px","font-family":"Arial","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap","letter-spacing":"-2px"}'),
(6, '.tp-caption.very_big_white', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"none","font-weight":"800","font-size":"60px","line-height":"60px","font-family":"Arial","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap","padding":"0px 4px","padding-top":"1px","background-color":"#000"}'),
(7, '.tp-caption.very_big_black', NULL, NULL, '{"position":"absolute","color":"#000","text-shadow":"none","font-weight":"700","font-size":"60px","line-height":"60px","font-family":"Arial","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap","padding":"0px 4px","padding-top":"1px","background-color":"#fff"}'),
(8, '.tp-caption.modern_medium_fat', NULL, NULL, '{"position":"absolute","color":"#000","text-shadow":"none","font-weight":"800","font-size":"24px","line-height":"20px","font-family":"\\"Open Sans\\", sans-serif","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap"}'),
(9, '.tp-caption.modern_medium_fat_white', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"none","font-weight":"800","font-size":"24px","line-height":"20px","font-family":"\\"Open Sans\\", sans-serif","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap"}'),
(10, '.tp-caption.modern_medium_light', NULL, NULL, '{"position":"absolute","color":"#000","text-shadow":"none","font-weight":"300","font-size":"24px","line-height":"20px","font-family":"\\"Open Sans\\", sans-serif","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap"}'),
(11, '.tp-caption.modern_big_bluebg', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"none","font-weight":"800","font-size":"30px","line-height":"36px","font-family":"\\"Open Sans\\", sans-serif","padding":"3px 10px","margin":"0px","border-width":"0px","border-style":"none","background-color":"#4e5b6c","letter-spacing":"0"}'),
(12, '.tp-caption.modern_big_redbg', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"none","font-weight":"300","font-size":"30px","line-height":"36px","font-family":"\\"Open Sans\\", sans-serif","padding":"3px 10px","padding-top":"1px","margin":"0px","border-width":"0px","border-style":"none","background-color":"#de543e","letter-spacing":"0"}'),
(13, '.tp-caption.modern_small_text_dark', NULL, NULL, '{"position":"absolute","color":"#555","text-shadow":"none","font-size":"14px","line-height":"22px","font-family":"Arial","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap"}'),
(14, '.tp-caption.thinheadline_dark', NULL, NULL, '{"position":"absolute","color":"rgba(0,0,0,0.85)","text-shadow":"none","font-weight":"300","font-size":"30px","line-height":"30px","font-family":"\\"Open Sans\\"","background-color":"transparent"}'),
(15, '.tp-caption.thintext_dark', NULL, NULL, '{"position":"absolute","color":"rgba(0,0,0,0.85)","text-shadow":"none","font-weight":"300","font-size":"16px","line-height":"26px","font-family":"\\"Open Sans\\"","background-color":"transparent"}'),
(16, '.tp-caption.largeblackbg', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"none","font-weight":"300","font-size":"50px","line-height":"70px","font-family":"\\"Open Sans\\"","background-color":"#000","padding":"0px 20px","-webkit-border-radius":"0px","-moz-border-radius":"0px","border-radius":"0px"}'),
(17, '.tp-caption.largepinkbg', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"none","font-weight":"300","font-size":"50px","line-height":"70px","font-family":"\\"Open Sans\\"","background-color":"#db4360","padding":"0px 20px","-webkit-border-radius":"0px","-moz-border-radius":"0px","border-radius":"0px"}'),
(18, '.tp-caption.largewhitebg', NULL, NULL, '{"position":"absolute","color":"#000","text-shadow":"none","font-weight":"300","font-size":"50px","line-height":"70px","font-family":"\\"Open Sans\\"","background-color":"#fff","padding":"0px 20px","-webkit-border-radius":"0px","-moz-border-radius":"0px","border-radius":"0px"}'),
(19, '.tp-caption.largegreenbg', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"none","font-weight":"300","font-size":"50px","line-height":"70px","font-family":"\\"Open Sans\\"","background-color":"#67ae73","padding":"0px 20px","-webkit-border-radius":"0px","-moz-border-radius":"0px","border-radius":"0px"}'),
(20, '.tp-caption.excerpt', NULL, NULL, '{"font-size":"36px","line-height":"36px","font-weight":"700","font-family":"Arial","color":"#ffffff","text-decoration":"none","background-color":"rgba(0, 0, 0, 1)","text-shadow":"none","margin":"0px","letter-spacing":"-1.5px","padding":"1px 4px 0px 4px","white-space":"normal !important","height":"auto","border-width":"0px","border-color":"rgb(255, 255, 255)","border-style":"none"}'),
(21, '.tp-caption.large_bold_grey', NULL, NULL, '{"font-size":"60px","line-height":"60px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(102, 102, 102)","text-decoration":"none","background-color":"transparent","text-shadow":"none","margin":"0px","padding":"1px 4px 0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(22, '.tp-caption.medium_thin_grey', NULL, NULL, '{"font-size":"34px","line-height":"30px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(102, 102, 102)","text-decoration":"none","background-color":"transparent","padding":"1px 4px 0px","text-shadow":"none","margin":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(23, '.tp-caption.small_thin_grey', NULL, NULL, '{"font-size":"18px","line-height":"26px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(117, 117, 117)","text-decoration":"none","background-color":"transparent","padding":"1px 4px 0px","text-shadow":"none","margin":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(24, '.tp-caption.lightgrey_divider', NULL, NULL, '{"text-decoration":"none","background-color":"rgba(235, 235, 235, 1)","width":"370px","height":"3px","background-position":"initial initial","background-repeat":"initial initial","border-width":"0px","border-color":"rgb(34, 34, 34)","border-style":"none"}'),
(25, '.tp-caption.large_bold_darkblue', NULL, NULL, '{"font-size":"58px","line-height":"60px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(52, 73, 94)","text-decoration":"none","background-color":"transparent","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(26, '.tp-caption.medium_bg_darkblue', NULL, NULL, '{"font-size":"20px","line-height":"20px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"rgb(52, 73, 94)","padding":"10px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(27, '.tp-caption.medium_bold_red', NULL, NULL, '{"font-size":"24px","line-height":"30px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(227, 58, 12)","text-decoration":"none","background-color":"transparent","padding":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(28, '.tp-caption.medium_light_red', NULL, NULL, '{"font-size":"21px","line-height":"26px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(227, 58, 12)","text-decoration":"none","background-color":"transparent","padding":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(29, '.tp-caption.medium_bg_red', NULL, NULL, '{"font-size":"20px","line-height":"20px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"rgb(227, 58, 12)","padding":"10px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(30, '.tp-caption.medium_bold_orange', NULL, NULL, '{"font-size":"24px","line-height":"30px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(243, 156, 18)","text-decoration":"none","background-color":"transparent","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(31, '.tp-caption.medium_bg_orange', NULL, NULL, '{"font-size":"20px","line-height":"20px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"rgb(243, 156, 18)","padding":"10px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(32, '.tp-caption.large_bold_white', NULL, NULL, '{"font-size":"58px","line-height":"60px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"transparent","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(33, '.tp-caption.medium_light_white', NULL, NULL, '{"font-size":"30px","line-height":"36px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"transparent","padding":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(34, '.tp-caption.mediumlarge_light_white', NULL, NULL, '{"font-size":"34px","line-height":"40px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"transparent","padding":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(35, '.tp-caption.mediumlarge_light_white_center', NULL, NULL, '{"font-size":"34px","line-height":"40px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"#ffffff","text-decoration":"none","background-color":"transparent","padding":"0px 0px 0px 0px","text-align":"center","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(36, '.tp-caption.medium_bg_asbestos', NULL, NULL, '{"font-size":"20px","line-height":"20px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"rgb(127, 140, 141)","padding":"10px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(37, '.tp-caption.medium_light_black', NULL, NULL, '{"font-size":"30px","line-height":"36px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(0, 0, 0)","text-decoration":"none","background-color":"transparent","padding":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(38, '.tp-caption.large_bold_black', NULL, NULL, '{"font-size":"58px","line-height":"60px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(0, 0, 0)","text-decoration":"none","background-color":"transparent","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(39, '.tp-caption.mediumlarge_light_darkblue', NULL, NULL, '{"font-size":"34px","line-height":"40px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(52, 73, 94)","text-decoration":"none","background-color":"transparent","padding":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(40, '.tp-caption.small_light_white', NULL, NULL, '{"font-size":"17px","line-height":"28px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"transparent","padding":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(41, '.tp-caption.roundedimage', NULL, NULL, '{"border-width":"0px","border-color":"rgb(34, 34, 34)","border-style":"none"}'),
(42, '.tp-caption.large_bg_black', NULL, NULL, '{"font-size":"40px","line-height":"40px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"rgb(0, 0, 0)","padding":"10px 20px 15px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(43, '.tp-caption.mediumwhitebg', NULL, NULL, '{"font-size":"30px","line-height":"30px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(0, 0, 0)","text-decoration":"none","background-color":"rgb(255, 255, 255)","padding":"5px 15px 10px","text-shadow":"none","border-width":"0px","border-color":"rgb(0, 0, 0)","border-style":"none"}');

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_revslider_layer_animations`
--

CREATE TABLE IF NOT EXISTS `iw0sl_revslider_layer_animations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `handle` text NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_revslider_settings`
--

CREATE TABLE IF NOT EXISTS `iw0sl_revslider_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `general` text NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_revslider_sliders`
--

CREATE TABLE IF NOT EXISTS `iw0sl_revslider_sliders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `iw0sl_revslider_sliders`
--

INSERT INTO `iw0sl_revslider_sliders` (`id`, `title`, `alias`, `params`) VALUES
(2, 'Slider2', 'slider2', '{"title":"Slider2","alias":"slider2","shortcode":"[rev_slider slider2]","source_type":"gallery","post_types":"post","post_category":"","post_sortby":"ID","posts_sort_direction":"DESC","max_slider_posts":"30","excerpt_limit":"55","slider_template_id":"","posts_list":"","slider_type":"fullwidth","fullscreen_offset_container":"","fullscreen_min_height":"","full_screen_align_force":"off","auto_height":"off","force_full_width":"off","width":"1080","height":"484","responsitive_w1":"940","responsitive_sw1":"770","responsitive_w2":"780","responsitive_sw2":"500","responsitive_w3":"510","responsitive_sw3":"310","responsitive_w4":"0","responsitive_sw4":"0","responsitive_w5":"0","responsitive_sw5":"0","responsitive_w6":"0","responsitive_sw6":"0","delay":"900000","shuffle":"off","lazy_load":"off","stop_slider":"off","stop_after_loops":0,"stop_at_slide":2,"load_googlefont":"false","google_font":["<link href=''http:\\/\\/fonts.googleapis.com\\/css?family=PT+Sans+Narrow:400,700'' rel=''stylesheet'' type=''text\\/css''>"],"position":"center","margin_top":0,"margin_bottom":0,"margin_left":0,"margin_right":0,"shadow_type":"0","show_timerbar":"hide","padding":0,"background_color":"#E9E9E9","background_dotted_overlay":"none","show_background_image":"false","background_image":"","bg_fit":"cover","bg_repeat":"no-repeat","bg_position":"center top","use_spinner":"0","spinner_color":"#FFFFFF","stop_on_hover":"on","keyboard_navigation":"off","navigaion_type":"none","navigation_arrows":"solo","navigation_style":"round","navigaion_always_on":"false","hide_thumbs":200,"navigaion_align_hor":"center","navigaion_align_vert":"bottom","navigaion_offset_hor":"0","navigaion_offset_vert":20,"leftarrow_align_hor":"left","leftarrow_align_vert":"center","leftarrow_offset_hor":20,"leftarrow_offset_vert":0,"rightarrow_align_hor":"right","rightarrow_align_vert":"center","rightarrow_offset_hor":20,"rightarrow_offset_vert":0,"thumb_width":100,"thumb_height":50,"thumb_amount":5,"touchenabled":"on","swipe_velocity":0.7,"swipe_min_touches":1,"swipe_max_touches":1,"drag_block_vertical":"false","hide_slider_under":0,"hide_defined_layers_under":0,"hide_all_layers_under":0,"hide_thumbs_under_resolution":0,"hide_thumbs_delay_mobile":1500,"loop_slide":"loop","start_with_slide":"1","first_transition_type":"fade","first_transition_duration":300,"first_transition_slot_amount":7,"reset_transitions":"","reset_transition_duration":0,"0":"Execute settings on all slides","template":"false"}');

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_revslider_slides`
--

CREATE TABLE IF NOT EXISTS `iw0sl_revslider_slides` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slider_id` int(10) unsigned NOT NULL DEFAULT '0',
  `slide_order` int(11) NOT NULL,
  `params` text NOT NULL,
  `layers` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `iw0sl_revslider_slides`
--

INSERT INTO `iw0sl_revslider_slides` (`id`, `slider_id`, `slide_order`, `params`, `layers`) VALUES
(5, 2, 1, '{"background_type":"image","image":"http:\\/\\/school\\/images\\/1\\/slider1.jpg","title":"\\u0421\\u043b\\u0430\\u0439\\u0434","state":"published","date_from":"","date_to":"","slide_transition":"slideleft","0":"Remove","slot_amount":7,"transition_rotation":0,"transition_duration":300,"delay":"","enable_link":"false","link_type":"regular","link":"","link_open_in":"same","slide_link":"nothing","link_pos":"front","slide_thumb":"","image_id":"","slide_bg_color":"#E7E7E7","slide_bg_external":"","bg_fit":"cover","bg_fit_x":"100","bg_fit_y":"100","bg_repeat":"no-repeat","bg_position":"center top","bg_position_x":"0","bg_position_y":"0","bg_end_position_x":"0","bg_end_position_y":"0","bg_end_position":"center top","kenburn_effect":"off","kb_start_fit":"100","kb_end_fit":"100","kb_duration":"9000","kb_easing":"Linear.easeNone","0":"Remove"}', '[{"text":"<p>\\u041a\\u043e\\u043c\\u043f\\u043b\\u0435\\u043a\\u0442\\u0443\\u0435\\u043c \\u0448\\u043a\\u043e\\u043b\\u044b\\n\\u0438 \\u0434\\u0435\\u0442\\u0441\\u043a\\u0438\\u0435 \\u0441\\u0430\\u0434\\u044b\\n\\u00ab\\u043f\\u043e\\u0434 \\u043a\\u043b\\u044e\\u0447\\u00bb<\\/p>\\n<span>\\u0421\\u043e\\u043e\\u0442\\u0432\\u0435\\u0442\\u0441\\u0442\\u0432\\u0438\\u0435 \\u0424\\u0413\\u041e\\u0421<\\/span>\\n<a href=\\"#\\">\\u041f\\u043e\\u0441\\u043c\\u043e\\u0442\\u0440\\u0435\\u0442\\u044c \\u0442\\u043e\\u0432\\u0430\\u0440\\u044b \\u0432 \\u043a\\u0430\\u0442\\u0430\\u043b\\u043e\\u0433\\u0435<\\/a>","type":"text","left":57,"top":175,"animation":"tp-fade","easing":"Power3.easeInOut","split":"none","endsplit":"none","splitdelay":"10","endsplitdelay":"10","max_height":"auto","max_width":"auto","whitespace":"nowrap","speed":300,"align_hor":"left","align_vert":"top","hiddenunder":false,"resizeme":true,"link":"","link_open_in":"same","link_slide":"nothing","scrollunder_offset":"","style":"excerpt","time":500,"endtime":"","endspeed":300,"endanimation":"auto","endeasing":"nothing","corner_left":"nothing","corner_right":"nothing","width":857,"height":96,"serial":3,"endTimeFinal":899700,"endSpeedFinal":300,"realEndTime":900000,"timeLast":899500,"alt":"","scaleX":"","scaleY":"","scaleProportional":false,"attrID":"","attrClasses":"","attrTitle":"","attrRel":""}]'),
(6, 2, 2, '{"background_type":"image","image":"http:\\/\\/school\\/images\\/1\\/slider2.jpg","title":"\\u0421\\u043b\\u0430\\u0439\\u0434","state":"published","date_from":"","date_to":"","slide_transition":"slideleft","0":"Remove","slot_amount":7,"transition_rotation":0,"transition_duration":300,"delay":"","enable_link":"false","link_type":"regular","link":"","link_open_in":"same","slide_link":"nothing","link_pos":"front","slide_thumb":"","image_id":"","slide_bg_color":"#E7E7E7","slide_bg_external":"","bg_fit":"cover","bg_fit_x":"100","bg_fit_y":"100","bg_repeat":"no-repeat","bg_position":"center top","bg_position_x":"0","bg_position_y":"0","bg_end_position_x":"0","bg_end_position_y":"0","bg_end_position":"center top","kenburn_effect":"off","kb_start_fit":"100","kb_end_fit":"100","kb_duration":"9000","kb_easing":"Linear.easeNone","0":"Remove"}', '[{"text":"<p>\\u041a\\u043e\\u043c\\u043f\\u043b\\u0435\\u043a\\u0442\\u0443\\u0435\\u043c \\u0448\\u043a\\u043e\\u043b\\u044b\\n\\u0438 \\u0434\\u0435\\u0442\\u0441\\u043a\\u0438\\u0435 \\u0441\\u0430\\u0434\\u044b\\n\\u00ab\\u043f\\u043e\\u0434 \\u043a\\u043b\\u044e\\u0447\\u00bb<\\/p>\\n<span>\\u0421\\u043e\\u043e\\u0442\\u0432\\u0435\\u0442\\u0441\\u0442\\u0432\\u0438\\u0435 \\u0424\\u0413\\u041e\\u0421<\\/span>\\n<a href=\\"#\\">\\u041f\\u043e\\u0441\\u043c\\u043e\\u0442\\u0440\\u0435\\u0442\\u044c \\u0442\\u043e\\u0432\\u0430\\u0440\\u044b \\u0432 \\u043a\\u0430\\u0442\\u0430\\u043b\\u043e\\u0433\\u0435<\\/a>","type":"text","left":100,"top":100,"animation":"tp-fade","easing":"Power3.easeInOut","split":"none","endsplit":"none","splitdelay":"10","endsplitdelay":"10","max_height":"auto","max_width":"auto","whitespace":"nowrap","speed":300,"align_hor":"left","align_vert":"top","hiddenunder":false,"resizeme":true,"link":"","link_open_in":"same","link_slide":"nothing","scrollunder_offset":"","style":"excerpt","time":500,"endtime":"","endspeed":300,"endanimation":"auto","endeasing":"nothing","corner_left":"nothing","corner_right":"nothing","width":-1,"height":-1,"serial":0,"endTimeFinal":899700,"endSpeedFinal":300,"realEndTime":900000,"timeLast":899500,"alt":"","scaleX":"","scaleY":"","scaleProportional":false,"attrID":"","attrClasses":"","attrTitle":"","attrRel":""}]');

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_rodnoy_map_items`
--

CREATE TABLE IF NOT EXISTS `iw0sl_rodnoy_map_items` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `checked_out` int(11) NOT NULL,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL,
  `number` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `desc` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=245 ;

--
-- Дамп данных таблицы `iw0sl_rodnoy_map_items`
--

INSERT INTO `iw0sl_rodnoy_map_items` (`id`, `checked_out`, `checked_out_time`, `ordering`, `number`, `status`, `image`, `desc`) VALUES
(1, 0, '0000-00-00 00:00:00', 1, '1-A', 'none', 'images/rodnoy/sold.png', ''),
(2, 0, '0000-00-00 00:00:00', 2, '2-A', 'none', 'images/rodnoy/sold.png', ''),
(3, 0, '0000-00-00 00:00:00', 3, '3-A', 'secondsale', '', ''),
(4, 0, '0000-00-00 00:00:00', 4, '4-A', 'none', 'images/rodnoy/sold.png', ''),
(5, 0, '0000-00-00 00:00:00', 5, '1', 'none', 'images/rodnoy/sold.png', ''),
(6, 0, '0000-00-00 00:00:00', 6, '2', 'none', 'images/rodnoy/sold.png', ''),
(7, 0, '0000-00-00 00:00:00', 7, '3', 'none', 'images/rodnoy/sold.png', ''),
(8, 0, '0000-00-00 00:00:00', 8, '4', 'none', 'images/rodnoy/sold.png', ''),
(9, 0, '0000-00-00 00:00:00', 9, '5', 'none', 'images/rodnoy/sold.png', ''),
(10, 0, '0000-00-00 00:00:00', 10, '6', 'none', 'images/rodnoy/sold.png', ''),
(11, 0, '0000-00-00 00:00:00', 11, '7', 'none', 'images/rodnoy/sold.png', ''),
(12, 0, '0000-00-00 00:00:00', 12, '8', 'none', 'images/rodnoy/sold.png', ''),
(13, 0, '0000-00-00 00:00:00', 13, '9', 'none', 'images/rodnoy/sold.png', ''),
(14, 0, '0000-00-00 00:00:00', 14, '10', 'none', 'images/rodnoy/sold.png', ''),
(15, 0, '0000-00-00 00:00:00', 15, '11', 'none', 'images/rodnoy/sold.png', ''),
(16, 0, '0000-00-00 00:00:00', 16, '12', 'none', 'images/rodnoy/sold.png', ''),
(17, 0, '0000-00-00 00:00:00', 17, '13', 'none', 'images/rodnoy/sold.png', ''),
(18, 0, '0000-00-00 00:00:00', 18, '14', 'none', 'images/rodnoy/sold.png', ''),
(19, 0, '0000-00-00 00:00:00', 19, '15', 'none', 'images/rodnoy/sold.png', ''),
(20, 0, '0000-00-00 00:00:00', 20, '16', 'none', 'images/rodnoy/sold.png', ''),
(21, 0, '0000-00-00 00:00:00', 21, '17', 'none', 'images/rodnoy/sold.png', ''),
(22, 0, '0000-00-00 00:00:00', 22, '18', 'none', 'images/rodnoy/sold.png', ''),
(23, 0, '0000-00-00 00:00:00', 23, '19', 'none', 'images/rodnoy/sold.png', ''),
(24, 0, '0000-00-00 00:00:00', 24, '20', 'none', 'images/rodnoy/sold.png', ''),
(25, 0, '0000-00-00 00:00:00', 25, '21', 'insale', 'images/rodnoy/1k.jpg', '<p>дом 147м2, все коммуникации, участок 16,5 соток Блочный дом: 4 комнаты, кухня, бойлерная, камин, 2 санузла Скважина, канализация, электричество Участок огорожен забором </p>'),
(26, 0, '0000-00-00 00:00:00', 26, '22', 'none', 'images/rodnoy/sold.png', ''),
(27, 0, '0000-00-00 00:00:00', 27, '23', 'none', 'images/rodnoy/sold.png', ''),
(28, 0, '0000-00-00 00:00:00', 28, '24', 'none', 'images/rodnoy/sold.png', ''),
(29, 0, '0000-00-00 00:00:00', 29, '25', 'none', 'images/rodnoy/sold.png', ''),
(30, 0, '0000-00-00 00:00:00', 30, '26', 'none', 'images/rodnoy/sold.png', ''),
(31, 0, '0000-00-00 00:00:00', 31, '27', 'none', 'images/rodnoy/sold.png', ''),
(32, 0, '0000-00-00 00:00:00', 32, '28', 'none', 'images/rodnoy/sold.png', ''),
(33, 0, '0000-00-00 00:00:00', 33, '29', 'none', 'images/rodnoy/sold.png', ''),
(34, 0, '0000-00-00 00:00:00', 34, '30', 'none', 'images/rodnoy/sold.png', ''),
(35, 0, '0000-00-00 00:00:00', 35, '31', 'secondsale', '', ''),
(36, 0, '0000-00-00 00:00:00', 36, '32', 'none', 'images/rodnoy/sold.png', ''),
(37, 0, '0000-00-00 00:00:00', 37, '33', 'none', 'images/rodnoy/sold.png', ''),
(38, 0, '0000-00-00 00:00:00', 38, '34', 'none', 'images/rodnoy/sold.png', ''),
(39, 0, '0000-00-00 00:00:00', 39, '35', 'none', 'images/rodnoy/sold.png', ''),
(40, 0, '0000-00-00 00:00:00', 40, '36', 'none', 'images/rodnoy/sold.png', ''),
(41, 0, '0000-00-00 00:00:00', 41, '37', 'none', 'images/rodnoy/sold.png', ''),
(42, 0, '0000-00-00 00:00:00', 42, '38', 'secondsale', '', ''),
(43, 0, '0000-00-00 00:00:00', 43, '39', 'secondsale', '', ''),
(44, 0, '0000-00-00 00:00:00', 44, '40', 'none', 'images/rodnoy/sold.png', ''),
(45, 0, '0000-00-00 00:00:00', 45, '41', 'none', 'images/rodnoy/sold.png', ''),
(46, 0, '0000-00-00 00:00:00', 46, '42', 'none', 'images/rodnoy/sold.png', ''),
(47, 0, '0000-00-00 00:00:00', 47, '43', 'none', 'images/rodnoy/sold.png', ''),
(48, 0, '0000-00-00 00:00:00', 48, '44', 'none', 'images/rodnoy/sold.png', ''),
(49, 0, '0000-00-00 00:00:00', 49, '45', 'insale', 'images/rodnoy/45-2.jpg', '<p>дом 112м<sup>2</sup>, все коммуникации,участок 15 соток с деревьями смешанных пород. Каркасно-панельный дом на винтовых сваях. Отделка крашеным фальшбрусом Скважина 80м, септик АСО мини, электричество, датчик GSM для контроля и управления Участок расположен на вершине холма. Расчищен от подлеска, огорожен забором.</p>\r\n<p style="text-align: center;"><strong>Цена 3 600 т.р. Торг</strong></p>\r\n<p style="text-align: center;"><strong>Тел  8-922-220-90-59  Евгений Васильевич</strong></p>'),
(50, 0, '0000-00-00 00:00:00', 50, '46', 'forsale', 'images/rodnoy/46.jpg', 'Материал:блок+кирпич\r\nПлощадь дома:124м2\r\nПлощадь участка:15соток'),
(51, 0, '0000-00-00 00:00:00', 51, '47', 'insale', 'images/rodnoy/001.jpg', '<p style="text-align: justify;">Отличный вид с вершины холма. Забор по периметру участка с 2 вьездами и калиткой Готовый участок с подключением электросетям. Розетка выведена на столб.</p>\r\n<p style="text-align: center;"><strong>Цена 750 т.р.</strong></p>\r\n<p style="text-align: center;"><strong>Площадь участка 15 соток</strong></p>'),
(52, 0, '0000-00-00 00:00:00', 52, '48', 'none', 'images/rodnoy/sold.png', ''),
(53, 0, '0000-00-00 00:00:00', 53, '49', 'none', 'images/rodnoy/sold.png', ''),
(54, 0, '0000-00-00 00:00:00', 54, '50', 'none', 'images/rodnoy/sold.png', ''),
(55, 0, '0000-00-00 00:00:00', 55, '51', 'none', 'images/rodnoy/sold.png', ''),
(56, 0, '0000-00-00 00:00:00', 56, '52', 'none', 'images/rodnoy/sold.png', ''),
(57, 0, '0000-00-00 00:00:00', 57, '53', 'none', 'images/rodnoy/sold.png', ''),
(58, 0, '0000-00-00 00:00:00', 58, '54', 'none', 'images/rodnoy/sold.png', ''),
(59, 0, '0000-00-00 00:00:00', 59, '55', 'none', 'images/rodnoy/sold.png', ''),
(60, 0, '0000-00-00 00:00:00', 60, '56', 'none', 'images/rodnoy/sold.png', ''),
(61, 0, '0000-00-00 00:00:00', 61, '57', 'none', 'images/rodnoy/sold.png', ''),
(62, 0, '0000-00-00 00:00:00', 62, '58', 'none', 'images/rodnoy/sold.png', ''),
(63, 0, '0000-00-00 00:00:00', 63, '59', 'none', 'images/rodnoy/sold.png', ''),
(64, 0, '0000-00-00 00:00:00', 64, '60', 'insale', 'images/rodnoy/60-4.jpg', 'Готовый участок рядом с лесом, расчищен от подлеска\r\n Цена 280 т.р\r\n Площадь участка: 16 соток'),
(65, 0, '0000-00-00 00:00:00', 65, '61', 'none', 'images/rodnoy/sold.png', ''),
(66, 0, '0000-00-00 00:00:00', 66, '62', 'none', 'images/rodnoy/sold.png', ''),
(67, 0, '0000-00-00 00:00:00', 67, '63', 'none', 'images/rodnoy/sold.png', ''),
(68, 0, '0000-00-00 00:00:00', 68, '64', 'none', 'images/rodnoy/sold.png', ''),
(69, 0, '0000-00-00 00:00:00', 69, '65', 'none', 'images/rodnoy/sold.png', ''),
(70, 0, '0000-00-00 00:00:00', 70, '66', 'none', 'images/rodnoy/sold.png', ''),
(71, 0, '0000-00-00 00:00:00', 71, '67', 'none', 'images/rodnoy/sold.png', ''),
(72, 0, '0000-00-00 00:00:00', 72, '68', 'none', 'images/rodnoy/sold.png', ''),
(73, 0, '0000-00-00 00:00:00', 73, '69', 'none', 'images/rodnoy/sold.png', ''),
(74, 0, '0000-00-00 00:00:00', 74, '70', 'none', 'images/rodnoy/sold.png', ''),
(75, 0, '0000-00-00 00:00:00', 75, '71', 'none', 'images/rodnoy/sold.png', ''),
(76, 0, '0000-00-00 00:00:00', 76, '72', 'secondsale', '', ''),
(77, 0, '0000-00-00 00:00:00', 77, '73', 'none', 'images/rodnoy/sold.png', ''),
(78, 0, '0000-00-00 00:00:00', 78, '74', 'insale', 'images/rodnoy/74.jpg', ' Готовый участок с подключением к электросетям\r\n Цена 280 т.р.\r\n Площадь участка 15 соток'),
(79, 0, '0000-00-00 00:00:00', 79, '75', 'none', 'images/rodnoy/sold.png', ''),
(80, 0, '0000-00-00 00:00:00', 80, '76', 'none', 'images/rodnoy/sold.png', ''),
(81, 0, '0000-00-00 00:00:00', 81, '77', 'secondsale', '', ''),
(82, 0, '0000-00-00 00:00:00', 82, '78', 'secondsale', '', ''),
(83, 0, '0000-00-00 00:00:00', 83, '79', 'none', 'images/rodnoy/sold.png', ''),
(84, 0, '0000-00-00 00:00:00', 84, '80', 'none', 'images/rodnoy/sold.png', ''),
(85, 0, '0000-00-00 00:00:00', 85, '81', 'secondsale', '', ''),
(86, 0, '0000-00-00 00:00:00', 86, '82', 'secondsale', '', ''),
(87, 0, '0000-00-00 00:00:00', 87, '83', 'secondsale', '', ''),
(88, 0, '0000-00-00 00:00:00', 88, '84', 'none', 'images/rodnoy/sold.png', ''),
(89, 0, '0000-00-00 00:00:00', 89, '85', 'none', 'images/rodnoy/sold.png', ''),
(90, 0, '0000-00-00 00:00:00', 90, '86', 'none', 'images/rodnoy/sold.png', ''),
(91, 0, '0000-00-00 00:00:00', 91, '87', 'secondsale', '', ''),
(92, 0, '0000-00-00 00:00:00', 92, '88', 'none', 'images/rodnoy/sold.png', ''),
(93, 0, '0000-00-00 00:00:00', 93, '89', 'none', 'images/rodnoy/sold.png', ''),
(94, 0, '0000-00-00 00:00:00', 94, '90', 'none', 'images/rodnoy/sold.png', ''),
(95, 0, '0000-00-00 00:00:00', 95, '91', 'secondsale', '', ''),
(96, 0, '0000-00-00 00:00:00', 96, '92', 'secondsale', '', ''),
(97, 0, '0000-00-00 00:00:00', 97, '93', 'secondsale', '', ''),
(98, 0, '0000-00-00 00:00:00', 98, '94', 'secondsale', '', ''),
(99, 0, '0000-00-00 00:00:00', 99, '95', 'none', 'images/rodnoy/sold.png', ''),
(100, 0, '0000-00-00 00:00:00', 100, '96', 'none', 'images/rodnoy/sold.png', ''),
(101, 0, '0000-00-00 00:00:00', 101, '97', 'none', 'images/rodnoy/sold.png', ''),
(102, 0, '0000-00-00 00:00:00', 102, '98', 'none', 'images/rodnoy/sold.png', ''),
(103, 0, '0000-00-00 00:00:00', 103, '99', 'secondsale', '', ''),
(104, 0, '0000-00-00 00:00:00', 104, '100', 'none', 'images/rodnoy/sold.png', ''),
(105, 0, '0000-00-00 00:00:00', 105, '101', 'none', 'images/rodnoy/sold.png', ''),
(106, 0, '0000-00-00 00:00:00', 106, '102', 'none', 'images/rodnoy/sold.png', ''),
(107, 0, '0000-00-00 00:00:00', 107, '103', 'none', 'images/rodnoy/sold.png', ''),
(108, 0, '0000-00-00 00:00:00', 108, '104', 'none', 'images/rodnoy/sold.png', ''),
(109, 0, '0000-00-00 00:00:00', 109, '105', 'none', 'images/rodnoy/sold.png', ''),
(110, 0, '0000-00-00 00:00:00', 110, '106', 'none', 'images/rodnoy/sold.png', ''),
(111, 0, '0000-00-00 00:00:00', 111, '107', 'none', 'images/rodnoy/sold.png', ''),
(112, 0, '0000-00-00 00:00:00', 112, '108', 'secondsale', '', ''),
(113, 0, '0000-00-00 00:00:00', 113, '109', 'secondsale', '', ''),
(114, 0, '0000-00-00 00:00:00', 114, '110', 'none', 'images/rodnoy/sold.png', ''),
(115, 0, '0000-00-00 00:00:00', 115, '111', 'none', 'images/rodnoy/sold.png', ''),
(116, 0, '0000-00-00 00:00:00', 116, '112', 'none', 'images/rodnoy/sold.png', ''),
(117, 0, '0000-00-00 00:00:00', 117, '113', 'none', 'images/rodnoy/sold.png', ''),
(118, 0, '0000-00-00 00:00:00', 118, '114', 'none', 'images/rodnoy/sold.png', ''),
(119, 0, '0000-00-00 00:00:00', 119, '115', 'none', 'images/rodnoy/sold.png', ''),
(120, 0, '0000-00-00 00:00:00', 120, '116', 'none', 'images/rodnoy/sold.png', ''),
(121, 0, '0000-00-00 00:00:00', 121, '117', 'none', 'images/rodnoy/sold.png', ''),
(122, 0, '0000-00-00 00:00:00', 122, '118', 'none', 'images/rodnoy/sold.png', ''),
(123, 0, '0000-00-00 00:00:00', 123, '119', 'none', 'images/rodnoy/sold.png', ''),
(124, 0, '0000-00-00 00:00:00', 124, '120', 'none', 'images/rodnoy/sold.png', ''),
(125, 0, '0000-00-00 00:00:00', 125, '121', 'none', 'images/rodnoy/sold.png', ''),
(126, 0, '0000-00-00 00:00:00', 126, '122', 'none', 'images/rodnoy/sold.png', ''),
(127, 0, '0000-00-00 00:00:00', 127, '123', 'none', 'images/rodnoy/sold.png', ''),
(128, 0, '0000-00-00 00:00:00', 128, '124', 'none', 'images/rodnoy/sold.png', ''),
(129, 0, '0000-00-00 00:00:00', 129, '125', 'none', 'images/rodnoy/sold.png', ''),
(130, 0, '0000-00-00 00:00:00', 130, '126', 'none', 'images/rodnoy/sold.png', ''),
(131, 0, '0000-00-00 00:00:00', 131, '127', 'none', 'images/rodnoy/sold.png', ''),
(132, 0, '0000-00-00 00:00:00', 132, '128', 'none', 'images/rodnoy/sold.png', ''),
(133, 0, '0000-00-00 00:00:00', 133, '129', 'none', 'images/rodnoy/sold.png', ''),
(134, 0, '0000-00-00 00:00:00', 134, '130', 'none', 'images/rodnoy/sold.png', ''),
(135, 0, '0000-00-00 00:00:00', 135, '131', 'none', 'images/rodnoy/sold.png', ''),
(136, 0, '0000-00-00 00:00:00', 136, '132', 'insale', 'images/rodnoy/132sboku.jpg', 'Готовый участок рядом с лесом\r\nРасчищен для строительства\r\n Цена 280 т.р.\r\nПлощадь участка 16,5 сотки'),
(137, 0, '0000-00-00 00:00:00', 137, '133', 'none', 'images/rodnoy/sold.png', ''),
(138, 0, '0000-00-00 00:00:00', 138, '134', 'insale', 'images/rodnoy/134.jpg', 'Готовый участок на склоне холма\r\nРасчищен для строительства\r\n Цена 280 т.р.\r\n Площадь участка 15,5 сотки'),
(139, 0, '0000-00-00 00:00:00', 139, '135', 'none', 'images/rodnoy/sold.png', ''),
(140, 0, '0000-00-00 00:00:00', 140, '136', 'none', 'images/rodnoy/sold.png', ''),
(141, 0, '0000-00-00 00:00:00', 141, '137', 'none', 'images/rodnoy/sold.png', ''),
(142, 0, '0000-00-00 00:00:00', 142, '138', 'none', 'images/rodnoy/sold.png', ''),
(143, 0, '0000-00-00 00:00:00', 143, '139', 'none', 'images/rodnoy/sold.png', ''),
(144, 0, '0000-00-00 00:00:00', 144, '140', 'none', 'images/rodnoy/sold.png', ''),
(145, 0, '0000-00-00 00:00:00', 145, '141', 'none', 'images/rodnoy/sold.png', ''),
(146, 0, '0000-00-00 00:00:00', 146, '142', 'none', 'images/rodnoy/sold.png', ''),
(147, 0, '0000-00-00 00:00:00', 147, '143', 'none', 'images/rodnoy/sold.png', ''),
(148, 0, '0000-00-00 00:00:00', 148, '144', 'none', 'images/rodnoy/sold.png', ''),
(149, 0, '0000-00-00 00:00:00', 149, '145', 'none', 'images/rodnoy/sold.png', ''),
(150, 0, '0000-00-00 00:00:00', 150, '146', 'none', 'images/rodnoy/sold.png', ''),
(151, 0, '0000-00-00 00:00:00', 151, '147', 'none', 'images/rodnoy/sold.png', ''),
(152, 0, '0000-00-00 00:00:00', 152, '148', 'none', 'images/rodnoy/sold.png', ''),
(153, 0, '0000-00-00 00:00:00', 153, '149', 'insale', 'images/rodnoy/149-3.jpg', 'Готовый участок на склоне холма\r\nРасчищен от подлеска\r\n Цена 280 т.р.\r\nПлощадь участка:15,6 соток'),
(154, 0, '0000-00-00 00:00:00', 154, '150', 'insale', 'images/rodnoy/150.jpg', 'Готовый участок на склоне холма. Отличный вид.\r\nРасчищен от подлеска\r\nЦена 280 т.р. \r\nПлощадь участка:15,6 соток'),
(155, 0, '0000-00-00 00:00:00', 155, '151', 'none', 'images/rodnoy/sold.png', ''),
(156, 0, '0000-00-00 00:00:00', 156, '152', 'none', 'images/rodnoy/sold.png', ''),
(157, 0, '0000-00-00 00:00:00', 157, '153', 'none', 'images/rodnoy/sold.png', ''),
(158, 0, '0000-00-00 00:00:00', 158, '154', 'none', 'images/rodnoy/sold.png', ''),
(159, 0, '0000-00-00 00:00:00', 159, '155', 'none', 'images/rodnoy/sold.png', ''),
(160, 0, '0000-00-00 00:00:00', 160, '156', 'none', 'images/rodnoy/sold.png', ''),
(161, 0, '0000-00-00 00:00:00', 161, '157', 'insale', 'images/rodnoy/157.jpg', 'Готовый участок на холме\r\nРасчищен от подлеска\r\nПроведено геофизичесское исследование\r\n Цена 290 т.р.\r\n Площадь участка 15,6 сотки'),
(162, 0, '0000-00-00 00:00:00', 162, '158', 'forsale', 'images/rodnoy/DIV_3882_2.jpg', '<p style="text-align: justify;">Материал: оцилиндрованное бревно Площадь дома 153м2 Теплая крыша, цоколь отделан плитняком, сруб обработан снаружи и внутри грунтовкой Derufa. Черновая лестница на 2-й этаж Цена с окнами и входной дверью  Подключен к  электросетям. Розетка выведена на столб.</p>\r\n<p style="text-align: center;"><strong>Цена 3 880 т.р.</strong></p>\r\n<p style="text-align: center;"><strong>Площадь участка:15,6 соток</strong></p>'),
(163, 0, '0000-00-00 00:00:00', 163, '159', 'none', 'images/rodnoy/sold.png', ''),
(164, 0, '0000-00-00 00:00:00', 164, '160', 'none', 'images/rodnoy/sold.png', ''),
(165, 0, '0000-00-00 00:00:00', 165, '161', 'none', 'images/rodnoy/sold.png', ''),
(166, 0, '0000-00-00 00:00:00', 166, '162', 'insale', '', 'Готовый участок рядом с лесом.\r\nРасчищен от подлеска\r\n Цена 280 т.р.\r\nПлощадь участка:15,01 сотка'),
(167, 0, '0000-00-00 00:00:00', 167, '163', 'none', 'images/rodnoy/sold.png', ''),
(168, 0, '0000-00-00 00:00:00', 168, '164', 'reserved', 'images/rodnoy/DIV_4147.jpg', '<p>Готовый участок на склоне холма. Расчищен от подлеска</p>\r\n<p style="text-align: center;"><strong>Площадь участка:15,07 соток</strong></p>'),
(169, 0, '0000-00-00 00:00:00', 169, '165', 'insale', 'images/rodnoy/165-1.jpg', 'Готовый участок на склоне холма. Отличный вид\r\nРасчищен от подлеска\r\nЦена 280 т.р.\r\nПлощадь участка:15,07 соток'),
(170, 0, '0000-00-00 00:00:00', 170, '166', 'insale', 'images/rodnoy/166-3.jpg', 'Готовый участок на склоне холма. Отличный вид\r\nРасчищен от подлеска\r\nЦена 280 т.р. \r\nПлощадь участка:15,07 соток'),
(171, 0, '0000-00-00 00:00:00', 171, '167', 'none', 'images/rodnoy/sold.png', ''),
(172, 0, '0000-00-00 00:00:00', 172, '168', 'none', 'images/rodnoy/sold.png', ''),
(173, 0, '0000-00-00 00:00:00', 173, '169', 'reserved', 'images/rodnoy/DIV_4147.jpg', '<p>Готовый участок на холме. Отличный вид Расчищен от подлеска</p>\r\n<p style="text-align: center;"><strong>Площадь участка: 15,07 соток</strong></p>'),
(174, 0, '0000-00-00 00:00:00', 174, '170', 'none', 'images/rodnoy/sold.png', ''),
(175, 0, '0000-00-00 00:00:00', 175, '171', 'insale', 'images/rodnoy/171.jpg', 'Готовый участок на холме. Отличный вид,\r\nПроведено геофизическое исследовани.\r\nРасчищен от подлеска\r\nЗемляничные места\r\n Цена 300 т.р.\r\nПлощадь участка:15,07 соток'),
(176, 0, '0000-00-00 00:00:00', 176, '172', 'forsale', 'images/rodnoy/DIV_4112_2.jpg', '<p style="text-align: center;">Дом из теплых блоков и керамического кирпича Теплая крыша, лестница на 2 этаж, водоснабжение и канализация заведены   Электричество разведено по дому в соответствии с проектом Внутренняя штукатурка, обшивка потолка гипсокартоном Участок расчищен от подлеска.</p>\r\n<p style="text-align: center;"><strong>Цена 5 000 т.р.</strong></p>\r\n<p style="text-align: center;"><strong>Площадь участка:15,07 соток</strong></p>'),
(177, 0, '0000-00-00 00:00:00', 177, '173', 'insale', '', 'Готовый участок на холме. Отличный вид,\r\nПроведено геофизическое исследовани.\r\nРасчищен от подлеска\r\nЗемляничные места\r\n \r\nЦена 300 т.р.'),
(178, 0, '0000-00-00 00:00:00', 178, '174', 'none', 'images/rodnoy/sold.png', ''),
(179, 0, '0000-00-00 00:00:00', 179, '175', 'none', 'images/rodnoy/sold.png', ''),
(180, 0, '0000-00-00 00:00:00', 180, '176', 'none', 'images/rodnoy/sold.png', ''),
(181, 0, '0000-00-00 00:00:00', 181, '177', 'none', 'images/rodnoy/sold.png', ''),
(182, 0, '0000-00-00 00:00:00', 182, '178', 'insale', '', ''),
(183, 0, '0000-00-00 00:00:00', 183, '179', 'insale', 'images/rodnoy/179-2016.jpg', ' Готовый участок у самого леса.\r\n Цена 250 тыс.р\r\n Площаль участка 18 соток'),
(184, 0, '0000-00-00 00:00:00', 184, '180', 'none', 'images/rodnoy/sold.png', ''),
(185, 0, '0000-00-00 00:00:00', 185, '181', 'none', 'images/rodnoy/sold.png', ''),
(186, 0, '0000-00-00 00:00:00', 186, '182', 'insale', '', ''),
(187, 0, '0000-00-00 00:00:00', 187, '183', 'insale', '', ''),
(188, 0, '0000-00-00 00:00:00', 188, '184', 'insale', '', ''),
(189, 0, '0000-00-00 00:00:00', 189, '185', 'insale', '', ''),
(190, 0, '0000-00-00 00:00:00', 190, '186', 'insale', '', ''),
(191, 0, '0000-00-00 00:00:00', 191, '187', 'insale', '', ''),
(192, 0, '0000-00-00 00:00:00', 192, '188', 'insale', '', ''),
(193, 0, '0000-00-00 00:00:00', 193, '189', 'insale', '', ''),
(194, 0, '0000-00-00 00:00:00', 194, '190', 'insale', '', ''),
(195, 0, '0000-00-00 00:00:00', 195, '191', 'insale', '', ''),
(196, 0, '0000-00-00 00:00:00', 196, '192', 'insale', '', ''),
(197, 0, '0000-00-00 00:00:00', 197, '193', 'none', 'images/rodnoy/sold.png', ''),
(198, 0, '0000-00-00 00:00:00', 198, '194', 'none', 'images/rodnoy/sold.png', ''),
(199, 0, '0000-00-00 00:00:00', 199, '195', 'insale', '', ''),
(200, 0, '0000-00-00 00:00:00', 200, '196', 'none', 'images/rodnoy/sold.png', ''),
(201, 0, '0000-00-00 00:00:00', 201, '197', 'none', 'images/rodnoy/sold.png', ''),
(202, 0, '0000-00-00 00:00:00', 202, '198', 'insale', '', ''),
(203, 0, '0000-00-00 00:00:00', 203, '199', 'insale', '', ''),
(204, 0, '0000-00-00 00:00:00', 204, '200', 'insale', '', ''),
(205, 0, '0000-00-00 00:00:00', 205, '201', 'none', 'images/rodnoy/sold.png', ''),
(206, 0, '0000-00-00 00:00:00', 206, '202', 'none', 'images/rodnoy/sold.png', ''),
(207, 0, '0000-00-00 00:00:00', 207, '203', 'none', 'images/rodnoy/sold.png', ''),
(208, 0, '0000-00-00 00:00:00', 208, '204', 'none', 'images/rodnoy/sold.png', ''),
(209, 0, '0000-00-00 00:00:00', 209, '205', 'none', 'images/rodnoy/sold.png', ''),
(210, 0, '0000-00-00 00:00:00', 210, '206', 'none', 'images/rodnoy/sold.png', ''),
(211, 0, '0000-00-00 00:00:00', 211, '207', 'none', 'images/rodnoy/sold.png', ''),
(212, 0, '0000-00-00 00:00:00', 212, '208', 'none', 'images/rodnoy/sold.png', ''),
(213, 0, '0000-00-00 00:00:00', 213, '209', 'none', 'images/rodnoy/sold.png', ''),
(214, 0, '0000-00-00 00:00:00', 214, '210', 'none', 'images/rodnoy/sold.png', ''),
(215, 0, '0000-00-00 00:00:00', 215, '211', 'none', 'images/rodnoy/sold.png', ''),
(216, 0, '0000-00-00 00:00:00', 216, '212', 'none', 'images/rodnoy/sold.png', ''),
(217, 0, '0000-00-00 00:00:00', 217, '213', 'none', 'images/rodnoy/sold.png', ''),
(218, 0, '0000-00-00 00:00:00', 218, '214', 'none', 'images/rodnoy/sold.png', ''),
(219, 0, '0000-00-00 00:00:00', 219, '215', 'none', 'images/rodnoy/sold.png', ''),
(220, 0, '0000-00-00 00:00:00', 220, '216', 'none', 'images/rodnoy/sold.png', ''),
(221, 0, '0000-00-00 00:00:00', 221, '217', 'none', 'images/rodnoy/sold.png', ''),
(222, 0, '0000-00-00 00:00:00', 222, '218', 'none', 'images/rodnoy/sold.png', ''),
(223, 0, '0000-00-00 00:00:00', 223, '219', 'none', 'images/rodnoy/sold.png', ''),
(224, 0, '0000-00-00 00:00:00', 224, '220', 'none', 'images/rodnoy/sold.png', ''),
(225, 0, '0000-00-00 00:00:00', 225, '221', 'none', 'images/rodnoy/sold.png', ''),
(226, 0, '0000-00-00 00:00:00', 226, '222', 'none', 'images/rodnoy/sold.png', ''),
(227, 0, '0000-00-00 00:00:00', 227, '223', 'none', 'images/rodnoy/sold.png', ''),
(228, 0, '0000-00-00 00:00:00', 228, '224', 'none', 'images/rodnoy/sold.png', ''),
(229, 0, '0000-00-00 00:00:00', 229, '225', 'none', 'images/rodnoy/sold.png', ''),
(230, 0, '0000-00-00 00:00:00', 230, '226', 'none', 'images/rodnoy/sold.png', ''),
(231, 0, '0000-00-00 00:00:00', 231, '195-A', 'none', 'images/rodnoy/sold.png', ''),
(232, 0, '0000-00-00 00:00:00', 232, '196-A', 'forsale', 'images/rodnoy/196-proekt-bani.jpg', 'Строящийся дом и баня на продажу. Подключен к электричеству\r\nМатериал: дерево. рубка в чашу, 280-320мм\r\nПлощадь дома по проекту 134.2 Площадь бани по проекту 50\r\nПлощадь участка 18 соток\r\nЦена 1400 т.руб'),
(233, 0, '0000-00-00 00:00:00', 233, '197-A', 'forsale', 'images/rodnoy/103B.jpg', 'Материал: блок+кирпич\r\nПлощадь дома:112,4кв.м\r\nПлощадь участка: 18 соток'),
(234, 0, '0000-00-00 00:00:00', 234, '198-A', 'none', 'images/rodnoy/sold.png', ''),
(235, 0, '0000-00-00 00:00:00', 235, '199-A', 'none', 'images/rodnoy/sold.png', ''),
(236, 0, '0000-00-00 00:00:00', 236, '200-A', 'none', 'images/rodnoy/sold.png', ''),
(237, 0, '0000-00-00 00:00:00', 237, '201-A', 'none', 'images/rodnoy/sold.png', ''),
(238, 0, '0000-00-00 00:00:00', 238, '202-A', 'none', 'images/rodnoy/sold.png', ''),
(239, 0, '0000-00-00 00:00:00', 239, '203-A', 'none', 'images/rodnoy/sold.png', ''),
(240, 0, '0000-00-00 00:00:00', 240, 'КПП', 'none', 'images/rodnoy/kpp.jpg', 'Контрольно пропускной пункт'),
(241, 0, '0000-00-00 00:00:00', 241, 'Зона отдыха', 'none', 'images/rodnoy/pool.jpg', 'Бассейн, детские площадки, спортивные площадки, магазин, гостевая автостоянка'),
(242, 0, '0000-00-00 00:00:00', 242, 'Лесная', 'none', 'images/rodnoy/r-left.jpg', 'Уютная и тихая улица, для тех, кому важно уединение'),
(243, 0, '0000-00-00 00:00:00', 243, 'Сиреневая', 'none', 'images/rodnoy/siren.jpg', 'Вдоль улицы планируется сделать аллею из сиреневых кустов'),
(244, 0, '0000-00-00 00:00:00', 244, 'Речная', 'none', 'images/rodnoy/river.jpg', 'Эта улица расположена вдоль реки Утки, по обе стороны от которой планируется сделать зону отдыха с бассейном и детскими и спортивными площадками');

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_schemas`
--

CREATE TABLE IF NOT EXISTS `iw0sl_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `iw0sl_schemas`
--

INSERT INTO `iw0sl_schemas` (`extension_id`, `version_id`) VALUES
(700, '3.4.0-2015-02-26');

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_session`
--

CREATE TABLE IF NOT EXISTS `iw0sl_session` (
  `session_id` varchar(200) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `iw0sl_session`
--

INSERT INTO `iw0sl_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
('8uc6ch73fjgn348tc1k6raidp4', 1, 0, '1471970599', 'joomla|s:3456:"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjoyOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjo0OntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aToxMDA7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNDcxOTY4OTM0O3M6NDoibGFzdCI7aToxNDcxOTcwNTk3O3M6Mzoibm93IjtpOjE0NzE5NzA1OTg7fXM6NToidG9rZW4iO3M6MzI6ImIwYmM3NTkwYTQ1ZTY3ODg5MTkyMmEzOGQ4ODNiMWNiIjt9czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjoyOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjQ6e3M6MTE6ImFwcGxpY2F0aW9uIjtPOjg6InN0ZENsYXNzIjoxOntzOjQ6ImxhbmciO3M6MDoiIjt9czoxMzoiY29tX2luc3RhbGxlciI7Tzo4OiJzdGRDbGFzcyI6Mjp7czo3OiJtZXNzYWdlIjtzOjA6IiI7czoxNzoiZXh0ZW5zaW9uX21lc3NhZ2UiO3M6MDoiIjt9czoxMToiY29tX21vZHVsZXMiO086ODoic3RkQ2xhc3MiOjM6e3M6NzoibW9kdWxlcyI7Tzo4OiJzdGRDbGFzcyI6MTp7czo2OiJmaWx0ZXIiO086ODoic3RkQ2xhc3MiOjE6e3M6MTg6ImNsaWVudF9pZF9wcmV2aW91cyI7aTowO319czo0OiJlZGl0IjtPOjg6InN0ZENsYXNzIjoxOntzOjY6Im1vZHVsZSI7Tzo4OiJzdGRDbGFzcyI6MTp7czo0OiJkYXRhIjtOO319czozOiJhZGQiO086ODoic3RkQ2xhc3MiOjE6e3M6NjoibW9kdWxlIjtPOjg6InN0ZENsYXNzIjoyOntzOjEyOiJleHRlbnNpb25faWQiO047czo2OiJwYXJhbXMiO047fX19czo5OiJjb21fbWVudXMiO086ODoic3RkQ2xhc3MiOjI6e3M6NDoiZWRpdCI7Tzo4OiJzdGRDbGFzcyI6Mjp7czo0OiJtZW51IjtPOjg6InN0ZENsYXNzIjoyOntzOjQ6ImRhdGEiO047czoyOiJpZCI7YTowOnt9fXM6NDoiaXRlbSI7Tzo4OiJzdGRDbGFzcyI6NDp7czo0OiJ0eXBlIjtOO3M6NDoibGluayI7TjtzOjQ6ImRhdGEiO047czo4OiJtZW51dHlwZSI7czo2OiJtZW51MTEiO319czo1OiJpdGVtcyI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo4OiJtZW51dHlwZSI7czo2OiJtZW51MTEiO3M6MTA6ImxpbWl0c3RhcnQiO2k6MDtzOjQ6Imxpc3QiO2E6NDp7czo5OiJkaXJlY3Rpb24iO3M6MzoiYXNjIjtzOjU6ImxpbWl0IjtzOjI6IjIwIjtzOjg6Im9yZGVyaW5nIjtzOjU6ImEubGZ0IjtzOjU6InN0YXJ0IjtkOjA7fX19fXM6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086NToiSlVzZXIiOjI4OntzOjk6IgAqAGlzUm9vdCI7YjoxO3M6MjoiaWQiO3M6MjoiNDEiO3M6NDoibmFtZSI7czoxMDoiU3VwZXIgVXNlciI7czo4OiJ1c2VybmFtZSI7czo1OiJhZG1pbiI7czo1OiJlbWFpbCI7czoxNDoibWVtYnNoaXBAeWEucnUiO3M6ODoicGFzc3dvcmQiO3M6NjA6IiQyeSQxMCRUS3RwcGpzZU1IRFdXeHBHTmFQZ3AuSXNmRzdkbzFTVHVLZjRsVTJLLm5WcWlQdTIyWmd4dSI7czoxNDoicGFzc3dvcmRfY2xlYXIiO3M6MDoiIjtzOjU6ImJsb2NrIjtzOjE6IjAiO3M6OToic2VuZEVtYWlsIjtzOjE6IjEiO3M6MTI6InJlZ2lzdGVyRGF0ZSI7czoxOToiMjAxNi0wMy0xOSAxMzoyNTozNyI7czoxMzoibGFzdHZpc2l0RGF0ZSI7czoxOToiMjAxNi0wOC0yMyAxMTo0MToyMiI7czoxMDoiYWN0aXZhdGlvbiI7czoxOiIwIjtzOjY6InBhcmFtcyI7czo5MjoieyJhZG1pbl9zdHlsZSI6IiIsImFkbWluX2xhbmd1YWdlIjoiIiwibGFuZ3VhZ2UiOiIiLCJlZGl0b3IiOiIiLCJoZWxwc2l0ZSI6IiIsInRpbWV6b25lIjoiIn0iO3M6NjoiZ3JvdXBzIjthOjE6e2k6ODtzOjE6IjgiO31zOjU6Imd1ZXN0IjtpOjA7czoxMzoibGFzdFJlc2V0VGltZSI7czoxOToiMDAwMC0wMC0wMCAwMDowMDowMCI7czoxMDoicmVzZXRDb3VudCI7czoxOiIwIjtzOjEyOiJyZXF1aXJlUmVzZXQiO3M6MToiMCI7czoxMDoiACoAX3BhcmFtcyI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjoyOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjY6e3M6MTE6ImFkbWluX3N0eWxlIjtzOjA6IiI7czoxNDoiYWRtaW5fbGFuZ3VhZ2UiO3M6MDoiIjtzOjg6Imxhbmd1YWdlIjtzOjA6IiI7czo2OiJlZGl0b3IiO3M6MDoiIjtzOjg6ImhlbHBzaXRlIjtzOjA6IiI7czo4OiJ0aW1lem9uZSI7czowOiIiO31zOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czoxNDoiACoAX2F1dGhHcm91cHMiO2E6Mjp7aTowO2k6MTtpOjE7aTo4O31zOjE0OiIAKgBfYXV0aExldmVscyI7YTo1OntpOjA7aToxO2k6MTtpOjE7aToyO2k6MjtpOjM7aTozO2k6NDtpOjY7fXM6MTU6IgAqAF9hdXRoQWN0aW9ucyI7TjtzOjEyOiIAKgBfZXJyb3JNc2ciO047czoxMzoiACoAdXNlckhlbHBlciI7TzoxODoiSlVzZXJXcmFwcGVySGVscGVyIjowOnt9czoxMDoiACoAX2Vycm9ycyI7YTowOnt9czozOiJhaWQiO2k6MDtzOjY6Im90cEtleSI7czowOiIiO3M6NDoib3RlcCI7czowOiIiO31zOjExOiJhcHBsaWNhdGlvbiI7Tzo4OiJzdGRDbGFzcyI6MTp7czo1OiJxdWV1ZSI7Tjt9fX1zOjk6InNlcGFyYXRvciI7czoxOiIuIjt9";', 41, 'admin'),
('apjs6cbhhge0boqlm2ouq4hcp7', 0, 1, '1471970988', 'joomla|s:1480:"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjoyOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjI6e3M6NzoiY291bnRlciI7aToxO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTQ3MTk3MDk4NztzOjQ6Imxhc3QiO2k6MTQ3MTk3MDk4NztzOjM6Im5vdyI7aToxNDcxOTcwOTg3O319czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjoyOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjU6IkpVc2VyIjoyNjp7czo5OiIAKgBpc1Jvb3QiO2I6MDtzOjI6ImlkIjtpOjA7czo0OiJuYW1lIjtOO3M6ODoidXNlcm5hbWUiO047czo1OiJlbWFpbCI7TjtzOjg6InBhc3N3b3JkIjtOO3M6MTQ6InBhc3N3b3JkX2NsZWFyIjtzOjA6IiI7czo1OiJibG9jayI7TjtzOjk6InNlbmRFbWFpbCI7aTowO3M6MTI6InJlZ2lzdGVyRGF0ZSI7TjtzOjEzOiJsYXN0dmlzaXREYXRlIjtOO3M6MTA6ImFjdGl2YXRpb24iO047czo2OiJwYXJhbXMiO047czo2OiJncm91cHMiO2E6MTp7aTowO3M6MToiOSI7fXM6NToiZ3Vlc3QiO2k6MTtzOjEzOiJsYXN0UmVzZXRUaW1lIjtOO3M6MTA6InJlc2V0Q291bnQiO047czoxMjoicmVxdWlyZVJlc2V0IjtOO3M6MTA6IgAqAF9wYXJhbXMiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mjp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjowOnt9czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fXM6MTQ6IgAqAF9hdXRoR3JvdXBzIjthOjI6e2k6MDtpOjE7aToxO2k6OTt9czoxNDoiACoAX2F1dGhMZXZlbHMiO2E6Mzp7aTowO2k6MTtpOjE7aToxO2k6MjtpOjU7fXM6MTU6IgAqAF9hdXRoQWN0aW9ucyI7TjtzOjEyOiIAKgBfZXJyb3JNc2ciO047czoxMzoiACoAdXNlckhlbHBlciI7TzoxODoiSlVzZXJXcmFwcGVySGVscGVyIjowOnt9czoxMDoiACoAX2Vycm9ycyI7YTowOnt9czozOiJhaWQiO2k6MDt9fX1zOjk6InNlcGFyYXRvciI7czoxOiIuIjt9";', 0, ''),
('m36334nt4dv01jm8gbpmdl9646', 0, 1, '1471970786', 'joomla|s:1484:"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjoyOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjI6e3M6NzoiY291bnRlciI7aToyNDtzOjU6InRpbWVyIjtPOjg6InN0ZENsYXNzIjozOntzOjU6InN0YXJ0IjtpOjE0NzE5Njg5MjM7czo0OiJsYXN0IjtpOjE0NzE5NzA2MTM7czozOiJub3ciO2k6MTQ3MTk3MDc4NDt9fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mjp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjowOnt9czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fXM6NDoidXNlciI7Tzo1OiJKVXNlciI6MjY6e3M6OToiACoAaXNSb290IjtiOjA7czoyOiJpZCI7aTowO3M6NDoibmFtZSI7TjtzOjg6InVzZXJuYW1lIjtOO3M6NToiZW1haWwiO047czo4OiJwYXNzd29yZCI7TjtzOjE0OiJwYXNzd29yZF9jbGVhciI7czowOiIiO3M6NToiYmxvY2siO047czo5OiJzZW5kRW1haWwiO2k6MDtzOjEyOiJyZWdpc3RlckRhdGUiO047czoxMzoibGFzdHZpc2l0RGF0ZSI7TjtzOjEwOiJhY3RpdmF0aW9uIjtOO3M6NjoicGFyYW1zIjtOO3M6NjoiZ3JvdXBzIjthOjE6e2k6MDtzOjE6IjkiO31zOjU6Imd1ZXN0IjtpOjE7czoxMzoibGFzdFJlc2V0VGltZSI7TjtzOjEwOiJyZXNldENvdW50IjtOO3M6MTI6InJlcXVpcmVSZXNldCI7TjtzOjEwOiIAKgBfcGFyYW1zIjtPOjI0OiJKb29tbGFcUmVnaXN0cnlcUmVnaXN0cnkiOjI6e3M6NzoiACoAZGF0YSI7Tzo4OiJzdGRDbGFzcyI6MDp7fXM6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjE0OiIAKgBfYXV0aEdyb3VwcyI7YToyOntpOjA7aToxO2k6MTtpOjk7fXM6MTQ6IgAqAF9hdXRoTGV2ZWxzIjthOjM6e2k6MDtpOjE7aToxO2k6MTtpOjI7aTo1O31zOjE1OiIAKgBfYXV0aEFjdGlvbnMiO047czoxMjoiACoAX2Vycm9yTXNnIjtOO3M6MTM6IgAqAHVzZXJIZWxwZXIiO086MTg6IkpVc2VyV3JhcHBlckhlbHBlciI6MDp7fXM6MTA6IgAqAF9lcnJvcnMiO2E6MDp7fXM6MzoiYWlkIjtpOjA7fX19czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fQ==";', 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_tags`
--

CREATE TABLE IF NOT EXISTS `iw0sl_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `tag_idx` (`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `iw0sl_tags`
--

INSERT INTO `iw0sl_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
(1, 0, 0, 1, 0, '', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '', 42, '2011-01-01 00:00:01', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_template_styles`
--

CREATE TABLE IF NOT EXISTS `iw0sl_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Дамп данных таблицы `iw0sl_template_styles`
--

INSERT INTO `iw0sl_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(4, 'beez3', 0, '0', 'Beez3 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/joomla_black.png","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","templatecolor":"personal","html5":"0"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{"showSiteName":"0","colourChoice":"","boldText":"0"}'),
(7, 'protostar', 0, '0', 'protostar - Default', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}'),
(8, 'isis', 1, '1', 'isis - Default', '{"templateColor":"","logoFile":""}'),
(10, 'marcipan', 0, '0', 'Marcipan - По умолчанию', '{}'),
(11, 'marcipan-2', 0, '0', 'Marcipan-2 - По умолчанию', '{}'),
(12, 'pushkin', 0, '0', 'Pushkin - По умолчанию', '{}'),
(13, 'rodnoy', 0, '0', 'Rodnoy - По умолчанию', '{}'),
(14, 'school', 0, '1', 'School - По умолчанию', '{}');

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_ucm_base`
--

CREATE TABLE IF NOT EXISTS `iw0sl_ucm_base` (
  `ucm_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL,
  PRIMARY KEY (`ucm_id`),
  KEY `idx_ucm_item_id` (`ucm_item_id`),
  KEY `idx_ucm_type_id` (`ucm_type_id`),
  KEY `idx_ucm_language_id` (`ucm_language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_ucm_content`
--

CREATE TABLE IF NOT EXISTS `iw0sl_ucm_content` (
  `core_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `core_type_alias` varchar(255) NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(255) NOT NULL,
  `core_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `core_body` mediumtext NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) NOT NULL DEFAULT '',
  `core_checked_out_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_access` int(10) unsigned NOT NULL DEFAULT '0',
  `core_params` text NOT NULL,
  `core_featured` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) NOT NULL,
  `core_publish_up` datetime NOT NULL,
  `core_publish_down` datetime NOT NULL,
  `core_content_item_id` int(10) unsigned DEFAULT NULL COMMENT 'ID from the individual type table',
  `asset_id` int(10) unsigned DEFAULT NULL COMMENT 'FK to the #__assets table.',
  `core_images` text NOT NULL,
  `core_urls` text NOT NULL,
  `core_hits` int(10) unsigned NOT NULL DEFAULT '0',
  `core_version` int(10) unsigned NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text NOT NULL,
  `core_metadesc` text NOT NULL,
  `core_catid` int(10) unsigned NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`core_content_id`),
  KEY `tag_idx` (`core_state`,`core_access`),
  KEY `idx_access` (`core_access`),
  KEY `idx_alias` (`core_alias`),
  KEY `idx_language` (`core_language`),
  KEY `idx_title` (`core_title`),
  KEY `idx_modified_time` (`core_modified_time`),
  KEY `idx_created_time` (`core_created_time`),
  KEY `idx_content_type` (`core_type_alias`),
  KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  KEY `idx_core_created_user_id` (`core_created_user_id`),
  KEY `idx_core_type_id` (`core_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Contains core content data in name spaced fields' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_ucm_history`
--

CREATE TABLE IF NOT EXISTS `iw0sl_ucm_history` (
  `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ucm_item_id` int(10) unsigned NOT NULL,
  `ucm_type_id` int(10) unsigned NOT NULL,
  `version_note` varchar(255) NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `character_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep',
  PRIMARY KEY (`version_id`),
  KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  KEY `idx_save_date` (`save_date`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=63 ;

--
-- Дамп данных таблицы `iw0sl_ucm_history`
--

INSERT INTO `iw0sl_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(1, 1, 1, '', '2016-03-19 14:39:51', 41, 19074, '46d15d0a2aa88546e032fa1312cb7495f25464d3', '{"id":1,"asset_id":62,"title":"\\u0422\\u0435\\u0441\\u0442\\u043e\\u0432\\u044b\\u0439 \\u043c\\u0430\\u0442\\u0435\\u0440\\u0438\\u0430\\u043b","alias":"testovyj-material","introtext":"<p>\\u041c\\u0411\\u0414\\u041e\\u0423 \\u2116 293 \\u0444\\u0443\\u043d\\u043a\\u0446\\u0438\\u043e\\u043d\\u0438\\u0440\\u0443\\u0435\\u0442 \\u0441 1979 \\u0433\\u043e\\u0434\\u0430 \\u043f\\u043e\\u0434 \\u0440\\u0443\\u043a\\u043e\\u0432\\u043e\\u0434\\u0441\\u0442\\u0432\\u043e\\u043c \\u0432\\u0441\\u0435\\u0433\\u0434\\u0430 \\u0438\\u0434\\u0443\\u0449\\u0435\\u0439 \\u043f\\u043e \\u043f\\u0443\\u0442\\u0438 \\u0438\\u043d\\u043d\\u043e\\u0432\\u0430\\u0446\\u0438\\u0439 \\u0438 \\u043d\\u043e\\u0432\\u043e\\u0432\\u0432\\u0435\\u0434\\u0435\\u043d\\u0438\\u0439, <a href=\\"#\\">\\u0420\\u0432\\u0430\\u0447\\u0435\\u0432\\u043e\\u0439 \\u041b\\u044e\\u0431\\u043e\\u0432\\u0438 \\u0412\\u043b\\u0430\\u0434\\u0438\\u043c\\u0438\\u0440\\u043e\\u0432\\u043d\\u044b<\\/a>. <br>\\r\\n\\u0414\\u043e\\u0448\\u043a\\u043e\\u043b\\u044c\\u043d\\u043e\\u0435 \\u043e\\u0431\\u0440\\u0430\\u0437\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0435 \\u0443\\u0447\\u0440\\u0435\\u0436\\u0434\\u0435\\u043d\\u0438\\u0435 \\u2116293 \\u043f\\u043e \\u043f\\u0440\\u0430\\u0432\\u0443 \\u0441\\u0447\\u0438\\u0442\\u0430\\u0435\\u0442\\u0441\\u044f \\u043e\\u0434\\u043d\\u0438\\u043c \\u0438\\u0437 \\u0441\\u0430\\u043c\\u044b\\u0445 \\u043f\\u0440\\u0435\\u0441\\u0442\\u0438\\u0436\\u043d\\u044b\\u0445 \\u0434\\u043e\\u0448\\u043a\\u043e\\u043b\\u044c\\u043d\\u044b\\u0445 \\u0443\\u0447\\u0440\\u0435\\u0436\\u0434\\u0435\\u043d\\u0438\\u0439 \\u043d\\u0430\\u0448\\u0435\\u0433\\u043e \\u0433\\u043e\\u0440\\u043e\\u0434\\u0430 \\u0438 \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0430\\u043a\\u0430\\u0434\\u0435\\u043c\\u0438\\u0435\\u0439 \\u0441\\u0442\\u0430\\u043d\\u043e\\u0432\\u043b\\u0435\\u043d\\u0438\\u044f \\u043b\\u0438\\u0447\\u043d\\u043e\\u0441\\u0442\\u0438 \\u044e\\u043d\\u044b\\u0445 \\u0432\\u043e\\u0441\\u043f\\u0438\\u0442\\u0430\\u043d\\u043d\\u0438\\u043a\\u043e\\u0432, \\u0441 \\u0441\\u0430\\u043c\\u043e\\u0433\\u043e \\u0440\\u0430\\u043d\\u043d\\u0435\\u0433\\u043e \\u0434\\u0435\\u0442\\u0441\\u0442\\u0432\\u0430 \\u043f\\u043e\\u043b\\u0443\\u0447\\u0430\\u044e\\u0449\\u0438\\u0445 \\u043e\\u0431\\u0440\\u0430\\u0437\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435 \\u0435\\u0432\\u0440\\u043e\\u043f\\u0435\\u0439\\u0441\\u043a\\u043e\\u0433\\u043e \\u0443\\u0440\\u043e\\u0432\\u043d\\u044f, \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0435 \\u0432 \\u0431\\u0443\\u0434\\u0443\\u0449\\u0435\\u043c \\u043e\\u0431\\u044f\\u0437\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u0441\\u0442\\u0430\\u043d\\u0443\\u0442 \\u0434\\u043e\\u0441\\u0442\\u043e\\u0439\\u043d\\u044b\\u043c\\u0438 \\u0433\\u0440\\u0430\\u0436\\u0434\\u0430\\u043d\\u0430\\u043c\\u0438 \\u043e\\u0431\\u043d\\u043e\\u0432\\u043b\\u0435\\u043d\\u043d\\u043e\\u0439 \\u0420\\u043e\\u0441\\u0441\\u0438\\u0438.<\\/p>\\r\\n<p>\\u041c\\u0411\\u0414\\u041e\\u0423 \\u2116 293 \\u0444\\u0443\\u043d\\u043a\\u0446\\u0438\\u043e\\u043d\\u0438\\u0440\\u0443\\u0435\\u0442 \\u0441 1979 \\u0433\\u043e\\u0434\\u0430 \\u043f\\u043e\\u0434 \\u0440\\u0443\\u043a\\u043e\\u0432\\u043e\\u0434\\u0441\\u0442\\u0432\\u043e\\u043c \\u0432\\u0441\\u0435\\u0433\\u0434\\u0430 \\u0438\\u0434\\u0443\\u0449\\u0435\\u0439 \\u043f\\u043e \\u043f\\u0443\\u0442\\u0438 \\u0438\\u043d\\u043d\\u043e\\u0432\\u0430\\u0446\\u0438\\u0439 \\u0438 \\u043d\\u043e\\u0432\\u043e\\u0432\\u0432\\u0435\\u0434\\u0435\\u043d\\u0438\\u0439, <a href=\\"#\\">\\u0420\\u0432\\u0430\\u0447\\u0435\\u0432\\u043e\\u0439 \\u041b\\u044e\\u0431\\u043e\\u0432\\u0438 \\u0412\\u043b\\u0430\\u0434\\u0438\\u043c\\u0438\\u0440\\u043e\\u0432\\u043d\\u044b<\\/a>. <br>\\r\\n\\u0414\\u043e\\u0448\\u043a\\u043e\\u043b\\u044c\\u043d\\u043e\\u0435 \\u043e\\u0431\\u0440\\u0430\\u0437\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0435 \\u0443\\u0447\\u0440\\u0435\\u0436\\u0434\\u0435\\u043d\\u0438\\u0435 \\u2116293 \\u043f\\u043e \\u043f\\u0440\\u0430\\u0432\\u0443 \\u0441\\u0447\\u0438\\u0442\\u0430\\u0435\\u0442\\u0441\\u044f \\u043e\\u0434\\u043d\\u0438\\u043c \\u0438\\u0437 \\u0441\\u0430\\u043c\\u044b\\u0445 \\u043f\\u0440\\u0435\\u0441\\u0442\\u0438\\u0436\\u043d\\u044b\\u0445 \\u0434\\u043e\\u0448\\u043a\\u043e\\u043b\\u044c\\u043d\\u044b\\u0445 \\u0443\\u0447\\u0440\\u0435\\u0436\\u0434\\u0435\\u043d\\u0438\\u0439 \\u043d\\u0430\\u0448\\u0435\\u0433\\u043e \\u0433\\u043e\\u0440\\u043e\\u0434\\u0430 \\u0438 \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0430\\u043a\\u0430\\u0434\\u0435\\u043c\\u0438\\u0435\\u0439 \\u0441\\u0442\\u0430\\u043d\\u043e\\u0432\\u043b\\u0435\\u043d\\u0438\\u044f \\u043b\\u0438\\u0447\\u043d\\u043e\\u0441\\u0442\\u0438 \\u044e\\u043d\\u044b\\u0445 \\u0432\\u043e\\u0441\\u043f\\u0438\\u0442\\u0430\\u043d\\u043d\\u0438\\u043a\\u043e\\u0432, \\u0441 \\u0441\\u0430\\u043c\\u043e\\u0433\\u043e \\u0440\\u0430\\u043d\\u043d\\u0435\\u0433\\u043e \\u0434\\u0435\\u0442\\u0441\\u0442\\u0432\\u0430 \\u043f\\u043e\\u043b\\u0443\\u0447\\u0430\\u044e\\u0449\\u0438\\u0445 \\u043e\\u0431\\u0440\\u0430\\u0437\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435 \\u0435\\u0432\\u0440\\u043e\\u043f\\u0435\\u0439\\u0441\\u043a\\u043e\\u0433\\u043e \\u0443\\u0440\\u043e\\u0432\\u043d\\u044f, \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0435 \\u0432 \\u0431\\u0443\\u0434\\u0443\\u0449\\u0435\\u043c \\u043e\\u0431\\u044f\\u0437\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u0441\\u0442\\u0430\\u043d\\u0443\\u0442 \\u0434\\u043e\\u0441\\u0442\\u043e\\u0439\\u043d\\u044b\\u043c\\u0438 \\u0433\\u0440\\u0430\\u0436\\u0434\\u0430\\u043d\\u0430\\u043c\\u0438 \\u043e\\u0431\\u043d\\u043e\\u0432\\u043b\\u0435\\u043d\\u043d\\u043e\\u0439 \\u0420\\u043e\\u0441\\u0441\\u0438\\u0438.<\\/p>\\r\\n<p>\\u041c\\u0411\\u0414\\u041e\\u0423 \\u2116 293 \\u0444\\u0443\\u043d\\u043a\\u0446\\u0438\\u043e\\u043d\\u0438\\u0440\\u0443\\u0435\\u0442 \\u0441 1979 \\u0433\\u043e\\u0434\\u0430 \\u043f\\u043e\\u0434 \\u0440\\u0443\\u043a\\u043e\\u0432\\u043e\\u0434\\u0441\\u0442\\u0432\\u043e\\u043c \\u0432\\u0441\\u0435\\u0433\\u0434\\u0430 \\u0438\\u0434\\u0443\\u0449\\u0435\\u0439 \\u043f\\u043e \\u043f\\u0443\\u0442\\u0438 \\u0438\\u043d\\u043d\\u043e\\u0432\\u0430\\u0446\\u0438\\u0439 \\u0438 \\u043d\\u043e\\u0432\\u043e\\u0432\\u0432\\u0435\\u0434\\u0435\\u043d\\u0438\\u0439, <a href=\\"#\\">\\u0420\\u0432\\u0430\\u0447\\u0435\\u0432\\u043e\\u0439 \\u041b\\u044e\\u0431\\u043e\\u0432\\u0438 \\u0412\\u043b\\u0430\\u0434\\u0438\\u043c\\u0438\\u0440\\u043e\\u0432\\u043d\\u044b<\\/a>. <br>\\r\\n\\u0414\\u043e\\u0448\\u043a\\u043e\\u043b\\u044c\\u043d\\u043e\\u0435 \\u043e\\u0431\\u0440\\u0430\\u0437\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0435 \\u0443\\u0447\\u0440\\u0435\\u0436\\u0434\\u0435\\u043d\\u0438\\u0435 \\u2116293 \\u043f\\u043e \\u043f\\u0440\\u0430\\u0432\\u0443 \\u0441\\u0447\\u0438\\u0442\\u0430\\u0435\\u0442\\u0441\\u044f \\u043e\\u0434\\u043d\\u0438\\u043c \\u0438\\u0437 \\u0441\\u0430\\u043c\\u044b\\u0445 \\u043f\\u0440\\u0435\\u0441\\u0442\\u0438\\u0436\\u043d\\u044b\\u0445 \\u0434\\u043e\\u0448\\u043a\\u043e\\u043b\\u044c\\u043d\\u044b\\u0445 \\u0443\\u0447\\u0440\\u0435\\u0436\\u0434\\u0435\\u043d\\u0438\\u0439 \\u043d\\u0430\\u0448\\u0435\\u0433\\u043e \\u0433\\u043e\\u0440\\u043e\\u0434\\u0430 \\u0438 \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0430\\u043a\\u0430\\u0434\\u0435\\u043c\\u0438\\u0435\\u0439 \\u0441\\u0442\\u0430\\u043d\\u043e\\u0432\\u043b\\u0435\\u043d\\u0438\\u044f \\u043b\\u0438\\u0447\\u043d\\u043e\\u0441\\u0442\\u0438 \\u044e\\u043d\\u044b\\u0445 \\u0432\\u043e\\u0441\\u043f\\u0438\\u0442\\u0430\\u043d\\u043d\\u0438\\u043a\\u043e\\u0432, \\u0441 \\u0441\\u0430\\u043c\\u043e\\u0433\\u043e \\u0440\\u0430\\u043d\\u043d\\u0435\\u0433\\u043e \\u0434\\u0435\\u0442\\u0441\\u0442\\u0432\\u0430 \\u043f\\u043e\\u043b\\u0443\\u0447\\u0430\\u044e\\u0449\\u0438\\u0445 \\u043e\\u0431\\u0440\\u0430\\u0437\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435 \\u0435\\u0432\\u0440\\u043e\\u043f\\u0435\\u0439\\u0441\\u043a\\u043e\\u0433\\u043e \\u0443\\u0440\\u043e\\u0432\\u043d\\u044f, \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0435 \\u0432 \\u0431\\u0443\\u0434\\u0443\\u0449\\u0435\\u043c \\u043e\\u0431\\u044f\\u0437\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u0441\\u0442\\u0430\\u043d\\u0443\\u0442 \\u0434\\u043e\\u0441\\u0442\\u043e\\u0439\\u043d\\u044b\\u043c\\u0438 \\u0433\\u0440\\u0430\\u0436\\u0434\\u0430\\u043d\\u0430\\u043c\\u0438 \\u043e\\u0431\\u043d\\u043e\\u0432\\u043b\\u0435\\u043d\\u043d\\u043e\\u0439 \\u0420\\u043e\\u0441\\u0441\\u0438\\u0438.<\\/p>\\r\\n<p>\\u041c\\u0411\\u0414\\u041e\\u0423 \\u2116 293 \\u0444\\u0443\\u043d\\u043a\\u0446\\u0438\\u043e\\u043d\\u0438\\u0440\\u0443\\u0435\\u0442 \\u0441 1979 \\u0433\\u043e\\u0434\\u0430 \\u043f\\u043e\\u0434 \\u0440\\u0443\\u043a\\u043e\\u0432\\u043e\\u0434\\u0441\\u0442\\u0432\\u043e\\u043c \\u0432\\u0441\\u0435\\u0433\\u0434\\u0430 \\u0438\\u0434\\u0443\\u0449\\u0435\\u0439 \\u043f\\u043e \\u043f\\u0443\\u0442\\u0438 \\u0438\\u043d\\u043d\\u043e\\u0432\\u0430\\u0446\\u0438\\u0439 \\u0438 \\u043d\\u043e\\u0432\\u043e\\u0432\\u0432\\u0435\\u0434\\u0435\\u043d\\u0438\\u0439, <a href=\\"#\\">\\u0420\\u0432\\u0430\\u0447\\u0435\\u0432\\u043e\\u0439 \\u041b\\u044e\\u0431\\u043e\\u0432\\u0438 \\u0412\\u043b\\u0430\\u0434\\u0438\\u043c\\u0438\\u0440\\u043e\\u0432\\u043d\\u044b<\\/a>. <br>\\r\\n\\u0414\\u043e\\u0448\\u043a\\u043e\\u043b\\u044c\\u043d\\u043e\\u0435 \\u043e\\u0431\\u0440\\u0430\\u0437\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0435 \\u0443\\u0447\\u0440\\u0435\\u0436\\u0434\\u0435\\u043d\\u0438\\u0435 \\u2116293 \\u043f\\u043e \\u043f\\u0440\\u0430\\u0432\\u0443 \\u0441\\u0447\\u0438\\u0442\\u0430\\u0435\\u0442\\u0441\\u044f \\u043e\\u0434\\u043d\\u0438\\u043c \\u0438\\u0437 \\u0441\\u0430\\u043c\\u044b\\u0445 \\u043f\\u0440\\u0435\\u0441\\u0442\\u0438\\u0436\\u043d\\u044b\\u0445 \\u0434\\u043e\\u0448\\u043a\\u043e\\u043b\\u044c\\u043d\\u044b\\u0445 \\u0443\\u0447\\u0440\\u0435\\u0436\\u0434\\u0435\\u043d\\u0438\\u0439 \\u043d\\u0430\\u0448\\u0435\\u0433\\u043e \\u0433\\u043e\\u0440\\u043e\\u0434\\u0430 \\u0438 \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0430\\u043a\\u0430\\u0434\\u0435\\u043c\\u0438\\u0435\\u0439 \\u0441\\u0442\\u0430\\u043d\\u043e\\u0432\\u043b\\u0435\\u043d\\u0438\\u044f \\u043b\\u0438\\u0447\\u043d\\u043e\\u0441\\u0442\\u0438 \\u044e\\u043d\\u044b\\u0445 \\u0432\\u043e\\u0441\\u043f\\u0438\\u0442\\u0430\\u043d\\u043d\\u0438\\u043a\\u043e\\u0432, \\u0441 \\u0441\\u0430\\u043c\\u043e\\u0433\\u043e \\u0440\\u0430\\u043d\\u043d\\u0435\\u0433\\u043e \\u0434\\u0435\\u0442\\u0441\\u0442\\u0432\\u0430 \\u043f\\u043e\\u043b\\u0443\\u0447\\u0430\\u044e\\u0449\\u0438\\u0445 \\u043e\\u0431\\u0440\\u0430\\u0437\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435 \\u0435\\u0432\\u0440\\u043e\\u043f\\u0435\\u0439\\u0441\\u043a\\u043e\\u0433\\u043e \\u0443\\u0440\\u043e\\u0432\\u043d\\u044f, \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0435 \\u0432 \\u0431\\u0443\\u0434\\u0443\\u0449\\u0435\\u043c \\u043e\\u0431\\u044f\\u0437\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u0441\\u0442\\u0430\\u043d\\u0443\\u0442 \\u0434\\u043e\\u0441\\u0442\\u043e\\u0439\\u043d\\u044b\\u043c\\u0438 \\u0433\\u0440\\u0430\\u0436\\u0434\\u0430\\u043d\\u0430\\u043c\\u0438 \\u043e\\u0431\\u043d\\u043e\\u0432\\u043b\\u0435\\u043d\\u043d\\u043e\\u0439 \\u0420\\u043e\\u0441\\u0441\\u0438\\u0438.<\\/p>\\r\\n<p>\\u041c\\u0411\\u0414\\u041e\\u0423 \\u2116 293 \\u0444\\u0443\\u043d\\u043a\\u0446\\u0438\\u043e\\u043d\\u0438\\u0440\\u0443\\u0435\\u0442 \\u0441 1979 \\u0433\\u043e\\u0434\\u0430 \\u043f\\u043e\\u0434 \\u0440\\u0443\\u043a\\u043e\\u0432\\u043e\\u0434\\u0441\\u0442\\u0432\\u043e\\u043c \\u0432\\u0441\\u0435\\u0433\\u0434\\u0430 \\u0438\\u0434\\u0443\\u0449\\u0435\\u0439 \\u043f\\u043e \\u043f\\u0443\\u0442\\u0438 \\u0438\\u043d\\u043d\\u043e\\u0432\\u0430\\u0446\\u0438\\u0439 \\u0438 \\u043d\\u043e\\u0432\\u043e\\u0432\\u0432\\u0435\\u0434\\u0435\\u043d\\u0438\\u0439, <a href=\\"#\\">\\u0420\\u0432\\u0430\\u0447\\u0435\\u0432\\u043e\\u0439 \\u041b\\u044e\\u0431\\u043e\\u0432\\u0438 \\u0412\\u043b\\u0430\\u0434\\u0438\\u043c\\u0438\\u0440\\u043e\\u0432\\u043d\\u044b<\\/a>. <br>\\r\\n\\u0414\\u043e\\u0448\\u043a\\u043e\\u043b\\u044c\\u043d\\u043e\\u0435 \\u043e\\u0431\\u0440\\u0430\\u0437\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0435 \\u0443\\u0447\\u0440\\u0435\\u0436\\u0434\\u0435\\u043d\\u0438\\u0435 \\u2116293 \\u043f\\u043e \\u043f\\u0440\\u0430\\u0432\\u0443 \\u0441\\u0447\\u0438\\u0442\\u0430\\u0435\\u0442\\u0441\\u044f \\u043e\\u0434\\u043d\\u0438\\u043c \\u0438\\u0437 \\u0441\\u0430\\u043c\\u044b\\u0445 \\u043f\\u0440\\u0435\\u0441\\u0442\\u0438\\u0436\\u043d\\u044b\\u0445 \\u0434\\u043e\\u0448\\u043a\\u043e\\u043b\\u044c\\u043d\\u044b\\u0445 \\u0443\\u0447\\u0440\\u0435\\u0436\\u0434\\u0435\\u043d\\u0438\\u0439 \\u043d\\u0430\\u0448\\u0435\\u0433\\u043e \\u0433\\u043e\\u0440\\u043e\\u0434\\u0430 \\u0438 \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0430\\u043a\\u0430\\u0434\\u0435\\u043c\\u0438\\u0435\\u0439 \\u0441\\u0442\\u0430\\u043d\\u043e\\u0432\\u043b\\u0435\\u043d\\u0438\\u044f \\u043b\\u0438\\u0447\\u043d\\u043e\\u0441\\u0442\\u0438 \\u044e\\u043d\\u044b\\u0445 \\u0432\\u043e\\u0441\\u043f\\u0438\\u0442\\u0430\\u043d\\u043d\\u0438\\u043a\\u043e\\u0432, \\u0441 \\u0441\\u0430\\u043c\\u043e\\u0433\\u043e \\u0440\\u0430\\u043d\\u043d\\u0435\\u0433\\u043e \\u0434\\u0435\\u0442\\u0441\\u0442\\u0432\\u0430 \\u043f\\u043e\\u043b\\u0443\\u0447\\u0430\\u044e\\u0449\\u0438\\u0445 \\u043e\\u0431\\u0440\\u0430\\u0437\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435 \\u0435\\u0432\\u0440\\u043e\\u043f\\u0435\\u0439\\u0441\\u043a\\u043e\\u0433\\u043e \\u0443\\u0440\\u043e\\u0432\\u043d\\u044f, \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0435 \\u0432 \\u0431\\u0443\\u0434\\u0443\\u0449\\u0435\\u043c \\u043e\\u0431\\u044f\\u0437\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u0441\\u0442\\u0430\\u043d\\u0443\\u0442 \\u0434\\u043e\\u0441\\u0442\\u043e\\u0439\\u043d\\u044b\\u043c\\u0438 \\u0433\\u0440\\u0430\\u0436\\u0434\\u0430\\u043d\\u0430\\u043c\\u0438 \\u043e\\u0431\\u043d\\u043e\\u0432\\u043b\\u0435\\u043d\\u043d\\u043e\\u0439 \\u0420\\u043e\\u0441\\u0441\\u0438\\u0438.<\\/p>\\r\\n<p>\\u041c\\u0411\\u0414\\u041e\\u0423 \\u2116 293 \\u0444\\u0443\\u043d\\u043a\\u0446\\u0438\\u043e\\u043d\\u0438\\u0440\\u0443\\u0435\\u0442 \\u0441 1979 \\u0433\\u043e\\u0434\\u0430 \\u043f\\u043e\\u0434 \\u0440\\u0443\\u043a\\u043e\\u0432\\u043e\\u0434\\u0441\\u0442\\u0432\\u043e\\u043c \\u0432\\u0441\\u0435\\u0433\\u0434\\u0430 \\u0438\\u0434\\u0443\\u0449\\u0435\\u0439 \\u043f\\u043e \\u043f\\u0443\\u0442\\u0438 \\u0438\\u043d\\u043d\\u043e\\u0432\\u0430\\u0446\\u0438\\u0439 \\u0438 \\u043d\\u043e\\u0432\\u043e\\u0432\\u0432\\u0435\\u0434\\u0435\\u043d\\u0438\\u0439, <a href=\\"#\\">\\u0420\\u0432\\u0430\\u0447\\u0435\\u0432\\u043e\\u0439 \\u041b\\u044e\\u0431\\u043e\\u0432\\u0438 \\u0412\\u043b\\u0430\\u0434\\u0438\\u043c\\u0438\\u0440\\u043e\\u0432\\u043d\\u044b<\\/a>. <br>\\r\\n\\u0414\\u043e\\u0448\\u043a\\u043e\\u043b\\u044c\\u043d\\u043e\\u0435 \\u043e\\u0431\\u0440\\u0430\\u0437\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0435 \\u0443\\u0447\\u0440\\u0435\\u0436\\u0434\\u0435\\u043d\\u0438\\u0435 \\u2116293 \\u043f\\u043e \\u043f\\u0440\\u0430\\u0432\\u0443 \\u0441\\u0447\\u0438\\u0442\\u0430\\u0435\\u0442\\u0441\\u044f \\u043e\\u0434\\u043d\\u0438\\u043c \\u0438\\u0437 \\u0441\\u0430\\u043c\\u044b\\u0445 \\u043f\\u0440\\u0435\\u0441\\u0442\\u0438\\u0436\\u043d\\u044b\\u0445 \\u0434\\u043e\\u0448\\u043a\\u043e\\u043b\\u044c\\u043d\\u044b\\u0445 \\u0443\\u0447\\u0440\\u0435\\u0436\\u0434\\u0435\\u043d\\u0438\\u0439 \\u043d\\u0430\\u0448\\u0435\\u0433\\u043e \\u0433\\u043e\\u0440\\u043e\\u0434\\u0430 \\u0438 \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0430\\u043a\\u0430\\u0434\\u0435\\u043c\\u0438\\u0435\\u0439 \\u0441\\u0442\\u0430\\u043d\\u043e\\u0432\\u043b\\u0435\\u043d\\u0438\\u044f \\u043b\\u0438\\u0447\\u043d\\u043e\\u0441\\u0442\\u0438 \\u044e\\u043d\\u044b\\u0445 \\u0432\\u043e\\u0441\\u043f\\u0438\\u0442\\u0430\\u043d\\u043d\\u0438\\u043a\\u043e\\u0432, \\u0441 \\u0441\\u0430\\u043c\\u043e\\u0433\\u043e \\u0440\\u0430\\u043d\\u043d\\u0435\\u0433\\u043e \\u0434\\u0435\\u0442\\u0441\\u0442\\u0432\\u0430 \\u043f\\u043e\\u043b\\u0443\\u0447\\u0430\\u044e\\u0449\\u0438\\u0445 \\u043e\\u0431\\u0440\\u0430\\u0437\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435 \\u0435\\u0432\\u0440\\u043e\\u043f\\u0435\\u0439\\u0441\\u043a\\u043e\\u0433\\u043e \\u0443\\u0440\\u043e\\u0432\\u043d\\u044f, \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0435 \\u0432 \\u0431\\u0443\\u0434\\u0443\\u0449\\u0435\\u043c \\u043e\\u0431\\u044f\\u0437\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u0441\\u0442\\u0430\\u043d\\u0443\\u0442 \\u0434\\u043e\\u0441\\u0442\\u043e\\u0439\\u043d\\u044b\\u043c\\u0438 \\u0433\\u0440\\u0430\\u0436\\u0434\\u0430\\u043d\\u0430\\u043c\\u0438 \\u043e\\u0431\\u043d\\u043e\\u0432\\u043b\\u0435\\u043d\\u043d\\u043e\\u0439 \\u0420\\u043e\\u0441\\u0441\\u0438\\u0438.<\\/p>\\r\\n<p>\\u041c\\u0411\\u0414\\u041e\\u0423 \\u2116 293 \\u0444\\u0443\\u043d\\u043a\\u0446\\u0438\\u043e\\u043d\\u0438\\u0440\\u0443\\u0435\\u0442 \\u0441 1979 \\u0433\\u043e\\u0434\\u0430 \\u043f\\u043e\\u0434 \\u0440\\u0443\\u043a\\u043e\\u0432\\u043e\\u0434\\u0441\\u0442\\u0432\\u043e\\u043c \\u0432\\u0441\\u0435\\u0433\\u0434\\u0430 \\u0438\\u0434\\u0443\\u0449\\u0435\\u0439 \\u043f\\u043e \\u043f\\u0443\\u0442\\u0438 \\u0438\\u043d\\u043d\\u043e\\u0432\\u0430\\u0446\\u0438\\u0439 \\u0438 \\u043d\\u043e\\u0432\\u043e\\u0432\\u0432\\u0435\\u0434\\u0435\\u043d\\u0438\\u0439, <a href=\\"#\\">\\u0420\\u0432\\u0430\\u0447\\u0435\\u0432\\u043e\\u0439 \\u041b\\u044e\\u0431\\u043e\\u0432\\u0438 \\u0412\\u043b\\u0430\\u0434\\u0438\\u043c\\u0438\\u0440\\u043e\\u0432\\u043d\\u044b<\\/a>. <br>\\r\\n\\u0414\\u043e\\u0448\\u043a\\u043e\\u043b\\u044c\\u043d\\u043e\\u0435 \\u043e\\u0431\\u0440\\u0430\\u0437\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0435 \\u0443\\u0447\\u0440\\u0435\\u0436\\u0434\\u0435\\u043d\\u0438\\u0435 \\u2116293 \\u043f\\u043e \\u043f\\u0440\\u0430\\u0432\\u0443 \\u0441\\u0447\\u0438\\u0442\\u0430\\u0435\\u0442\\u0441\\u044f \\u043e\\u0434\\u043d\\u0438\\u043c \\u0438\\u0437 \\u0441\\u0430\\u043c\\u044b\\u0445 \\u043f\\u0440\\u0435\\u0441\\u0442\\u0438\\u0436\\u043d\\u044b\\u0445 \\u0434\\u043e\\u0448\\u043a\\u043e\\u043b\\u044c\\u043d\\u044b\\u0445 \\u0443\\u0447\\u0440\\u0435\\u0436\\u0434\\u0435\\u043d\\u0438\\u0439 \\u043d\\u0430\\u0448\\u0435\\u0433\\u043e \\u0433\\u043e\\u0440\\u043e\\u0434\\u0430 \\u0438 \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0430\\u043a\\u0430\\u0434\\u0435\\u043c\\u0438\\u0435\\u0439 \\u0441\\u0442\\u0430\\u043d\\u043e\\u0432\\u043b\\u0435\\u043d\\u0438\\u044f \\u043b\\u0438\\u0447\\u043d\\u043e\\u0441\\u0442\\u0438 \\u044e\\u043d\\u044b\\u0445 \\u0432\\u043e\\u0441\\u043f\\u0438\\u0442\\u0430\\u043d\\u043d\\u0438\\u043a\\u043e\\u0432, \\u0441 \\u0441\\u0430\\u043c\\u043e\\u0433\\u043e \\u0440\\u0430\\u043d\\u043d\\u0435\\u0433\\u043e \\u0434\\u0435\\u0442\\u0441\\u0442\\u0432\\u0430 \\u043f\\u043e\\u043b\\u0443\\u0447\\u0430\\u044e\\u0449\\u0438\\u0445 \\u043e\\u0431\\u0440\\u0430\\u0437\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435 \\u0435\\u0432\\u0440\\u043e\\u043f\\u0435\\u0439\\u0441\\u043a\\u043e\\u0433\\u043e \\u0443\\u0440\\u043e\\u0432\\u043d\\u044f, \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0435 \\u0432 \\u0431\\u0443\\u0434\\u0443\\u0449\\u0435\\u043c \\u043e\\u0431\\u044f\\u0437\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u0441\\u0442\\u0430\\u043d\\u0443\\u0442 \\u0434\\u043e\\u0441\\u0442\\u043e\\u0439\\u043d\\u044b\\u043c\\u0438 \\u0433\\u0440\\u0430\\u0436\\u0434\\u0430\\u043d\\u0430\\u043c\\u0438 \\u043e\\u0431\\u043d\\u043e\\u0432\\u043b\\u0435\\u043d\\u043d\\u043e\\u0439 \\u0420\\u043e\\u0441\\u0441\\u0438\\u0438.<\\/p>","fulltext":"","state":1,"catid":"2","created":"2016-03-19 14:39:51","created_by":"41","created_by_alias":"","modified":"2016-03-19 14:39:51","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-03-19 14:39:51","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(2, 8, 5, '', '2016-03-19 15:44:41', 41, 585, 'ded1cc183aa565f45d254794c1454a339d0a2835', '{"id":8,"asset_id":69,"parent_id":"1","lft":"11","rgt":12,"level":1,"path":null,"extension":"com_content","title":"\\u041d\\u043e\\u0432\\u043e\\u0441\\u0442\\u0438","alias":"novosti","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"41","created_time":"2016-03-19 15:44:41","modified_user_id":null,"modified_time":"2016-03-19 15:44:41","hits":"0","language":"*","version":null}', 0),
(3, 2, 1, '', '2016-03-19 15:45:20', 41, 4394, '9c13506f1be14159fae97c3e26764f0a782363dc', '{"id":2,"asset_id":70,"title":"\\u041e \\u043d\\u0430\\u0448\\u0435\\u043c \\u0443\\u0447\\u0440\\u0435\\u0436\\u0434\\u0435\\u043d\\u0438\\u0438 1","alias":"o-nashem-uchrezhdenii-1","introtext":"\\u041c\\u0411\\u0414\\u041e\\u0423 \\u2116 293 \\u0444\\u0443\\u043d\\u043a\\u0446\\u0438\\u043e\\u043d\\u0438\\u0440\\u0443\\u0435\\u0442 \\u0441 1979 \\u0433\\u043e\\u0434\\u0430 \\u043f\\u043e\\u0434 \\u0440\\u0443\\u043a\\u043e\\u0432\\u043e\\u0434\\u0441\\u0442\\u0432\\u043e\\u043c \\u0432\\u0441\\u0435\\u0433\\u0434\\u0430 \\u0438\\u0434\\u0443\\u0449\\u0435\\u0439 \\u043f\\u043e \\u043f\\u0443\\u0442\\u0438 \\u0438\\u043d\\u043d\\u043e\\u0432\\u0430\\u0446\\u0438\\u0439 \\u0438 \\u043d\\u043e\\u0432\\u043e\\u0432\\u0432\\u0435\\u0434\\u0435\\u043d\\u0438\\u0439, \\u0420\\u0432\\u0430\\u0447\\u0435\\u0432\\u043e\\u0439 \\u041b\\u044e\\u0431\\u043e\\u0432\\u0438 \\u0412\\u043b\\u0430\\u0434\\u0438\\u043c\\u0438\\u0440\\u043e\\u0432\\u043d\\u044b.","fulltext":" \\u041c\\u0411\\u0414\\u041e\\u0423 \\u2116 293 \\u0444\\u0443\\u043d\\u043a\\u0446\\u0438\\u043e\\u043d\\u0438\\u0440\\u0443\\u0435\\u0442 \\u0441 1979 \\u0433\\u043e\\u0434\\u0430 \\u043f\\u043e\\u0434 \\u0440\\u0443\\u043a\\u043e\\u0432\\u043e\\u0434\\u0441\\u0442\\u0432\\u043e\\u043c \\u0432\\u0441\\u0435\\u0433\\u0434\\u0430 \\u0438\\u0434\\u0443\\u0449\\u0435\\u0439 \\u043f\\u043e \\u043f\\u0443\\u0442\\u0438 \\u0438\\u043d\\u043d\\u043e\\u0432\\u0430\\u0446\\u0438\\u0439 \\u0438 \\u043d\\u043e\\u0432\\u043e\\u0432\\u0432\\u0435\\u0434\\u0435\\u043d\\u0438\\u0439, \\u0420\\u0432\\u0430\\u0447\\u0435\\u0432\\u043e\\u0439 \\u041b\\u044e\\u0431\\u043e\\u0432\\u0438 \\u0412\\u043b\\u0430\\u0434\\u0438\\u043c\\u0438\\u0440\\u043e\\u0432\\u043d\\u044b. \\u041c\\u0411\\u0414\\u041e\\u0423 \\u2116 293 \\u0444\\u0443\\u043d\\u043a\\u0446\\u0438\\u043e\\u043d\\u0438\\u0440\\u0443\\u0435\\u0442 \\u0441 1979 \\u0433\\u043e\\u0434\\u0430 \\u043f\\u043e\\u0434 \\u0440\\u0443\\u043a\\u043e\\u0432\\u043e\\u0434\\u0441\\u0442\\u0432\\u043e\\u043c \\u0432\\u0441\\u0435\\u0433\\u0434\\u0430 \\u0438\\u0434\\u0443\\u0449\\u0435\\u0439 \\u043f\\u043e \\u043f\\u0443\\u0442\\u0438 \\u0438\\u043d\\u043d\\u043e\\u0432\\u0430\\u0446\\u0438\\u0439 \\u0438 \\u043d\\u043e\\u0432\\u043e\\u0432\\u0432\\u0435\\u0434\\u0435\\u043d\\u0438\\u0439, \\u0420\\u0432\\u0430\\u0447\\u0435\\u0432\\u043e\\u0439 \\u041b\\u044e\\u0431\\u043e\\u0432\\u0438 \\u0412\\u043b\\u0430\\u0434\\u0438\\u043c\\u0438\\u0440\\u043e\\u0432\\u043d\\u044b. \\u041c\\u0411\\u0414\\u041e\\u0423 \\u2116 293 \\u0444\\u0443\\u043d\\u043a\\u0446\\u0438\\u043e\\u043d\\u0438\\u0440\\u0443\\u0435\\u0442 \\u0441 1979 \\u0433\\u043e\\u0434\\u0430 \\u043f\\u043e\\u0434 \\u0440\\u0443\\u043a\\u043e\\u0432\\u043e\\u0434\\u0441\\u0442\\u0432\\u043e\\u043c \\u0432\\u0441\\u0435\\u0433\\u0434\\u0430 \\u0438\\u0434\\u0443\\u0449\\u0435\\u0439 \\u043f\\u043e \\u043f\\u0443\\u0442\\u0438 \\u0438\\u043d\\u043d\\u043e\\u0432\\u0430\\u0446\\u0438\\u0439 \\u0438 \\u043d\\u043e\\u0432\\u043e\\u0432\\u0432\\u0435\\u0434\\u0435\\u043d\\u0438\\u0439, \\u0420\\u0432\\u0430\\u0447\\u0435\\u0432\\u043e\\u0439 \\u041b\\u044e\\u0431\\u043e\\u0432\\u0438 \\u0412\\u043b\\u0430\\u0434\\u0438\\u043c\\u0438\\u0440\\u043e\\u0432\\u043d\\u044b. ","state":1,"catid":"8","created":"2016-03-19 15:45:20","created_by":"41","created_by_alias":"","modified":"2016-03-19 15:45:20","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-03-19 15:45:20","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(4, 3, 1, '', '2016-03-19 15:45:40', 41, 5052, '34a6d4e8df5c5042b8e048585e70864debee365d', '{"id":3,"asset_id":71,"title":"\\u041e \\u043d\\u0430\\u0448\\u0435\\u043c \\u0443\\u0447\\u0440\\u0435\\u0436\\u0434\\u0435\\u043d\\u0438\\u0438 2","alias":"o-nashem-uchrezhdenii-2","introtext":"\\u041c\\u0411\\u0414\\u041e\\u0423 \\u2116 293 \\u0444\\u0443\\u043d\\u043a\\u0446\\u0438\\u043e\\u043d\\u0438\\u0440\\u0443\\u0435\\u0442 \\u0441 1979 \\u0433\\u043e\\u0434\\u0430 \\u043f\\u043e\\u0434 \\u0440\\u0443\\u043a\\u043e\\u0432\\u043e\\u0434\\u0441\\u0442\\u0432\\u043e\\u043c \\u0432\\u0441\\u0435\\u0433\\u0434\\u0430 \\u0438\\u0434\\u0443\\u0449\\u0435\\u0439 \\u043f\\u043e \\u043f\\u0443\\u0442\\u0438 \\u0438\\u043d\\u043d\\u043e\\u0432\\u0430\\u0446\\u0438\\u0439 \\u0438 \\u043d\\u043e\\u0432\\u043e\\u0432\\u0432\\u0435\\u0434\\u0435\\u043d\\u0438\\u0439, \\u0420\\u0432\\u0430\\u0447\\u0435\\u0432\\u043e\\u0439 \\u041b\\u044e\\u0431\\u043e\\u0432\\u0438 \\u0412\\u043b\\u0430\\u0434\\u0438\\u043c\\u0438\\u0440\\u043e\\u0432\\u043d\\u044b. ","fulltext":"\\u041c\\u0411\\u0414\\u041e\\u0423 \\u2116 293 \\u0444\\u0443\\u043d\\u043a\\u0446\\u0438\\u043e\\u043d\\u0438\\u0440\\u0443\\u0435\\u0442 \\u0441 1979 \\u0433\\u043e\\u0434\\u0430 \\u043f\\u043e\\u0434 \\u0440\\u0443\\u043a\\u043e\\u0432\\u043e\\u0434\\u0441\\u0442\\u0432\\u043e\\u043c \\u0432\\u0441\\u0435\\u0433\\u0434\\u0430 \\u0438\\u0434\\u0443\\u0449\\u0435\\u0439 \\u043f\\u043e \\u043f\\u0443\\u0442\\u0438 \\u0438\\u043d\\u043d\\u043e\\u0432\\u0430\\u0446\\u0438\\u0439 \\u0438 \\u043d\\u043e\\u0432\\u043e\\u0432\\u0432\\u0435\\u0434\\u0435\\u043d\\u0438\\u0439, \\u0420\\u0432\\u0430\\u0447\\u0435\\u0432\\u043e\\u0439 \\u041b\\u044e\\u0431\\u043e\\u0432\\u0438 \\u0412\\u043b\\u0430\\u0434\\u0438\\u043c\\u0438\\u0440\\u043e\\u0432\\u043d\\u044b. \\u041c\\u0411\\u0414\\u041e\\u0423 \\u2116 293 \\u0444\\u0443\\u043d\\u043a\\u0446\\u0438\\u043e\\u043d\\u0438\\u0440\\u0443\\u0435\\u0442 \\u0441 1979 \\u0433\\u043e\\u0434\\u0430 \\u043f\\u043e\\u0434 \\u0440\\u0443\\u043a\\u043e\\u0432\\u043e\\u0434\\u0441\\u0442\\u0432\\u043e\\u043c \\u0432\\u0441\\u0435\\u0433\\u0434\\u0430 \\u0438\\u0434\\u0443\\u0449\\u0435\\u0439 \\u043f\\u043e \\u043f\\u0443\\u0442\\u0438 \\u0438\\u043d\\u043d\\u043e\\u0432\\u0430\\u0446\\u0438\\u0439 \\u0438 \\u043d\\u043e\\u0432\\u043e\\u0432\\u0432\\u0435\\u0434\\u0435\\u043d\\u0438\\u0439, \\u0420\\u0432\\u0430\\u0447\\u0435\\u0432\\u043e\\u0439 \\u041b\\u044e\\u0431\\u043e\\u0432\\u0438 \\u0412\\u043b\\u0430\\u0434\\u0438\\u043c\\u0438\\u0440\\u043e\\u0432\\u043d\\u044b. \\u041c\\u0411\\u0414\\u041e\\u0423 \\u2116 293 \\u0444\\u0443\\u043d\\u043a\\u0446\\u0438\\u043e\\u043d\\u0438\\u0440\\u0443\\u0435\\u0442 \\u0441 1979 \\u0433\\u043e\\u0434\\u0430 \\u043f\\u043e\\u0434 \\u0440\\u0443\\u043a\\u043e\\u0432\\u043e\\u0434\\u0441\\u0442\\u0432\\u043e\\u043c \\u0432\\u0441\\u0435\\u0433\\u0434\\u0430 \\u0438\\u0434\\u0443\\u0449\\u0435\\u0439 \\u043f\\u043e \\u043f\\u0443\\u0442\\u0438 \\u0438\\u043d\\u043d\\u043e\\u0432\\u0430\\u0446\\u0438\\u0439 \\u0438 \\u043d\\u043e\\u0432\\u043e\\u0432\\u0432\\u0435\\u0434\\u0435\\u043d\\u0438\\u0439, \\u0420\\u0432\\u0430\\u0447\\u0435\\u0432\\u043e\\u0439 \\u041b\\u044e\\u0431\\u043e\\u0432\\u0438 \\u0412\\u043b\\u0430\\u0434\\u0438\\u043c\\u0438\\u0440\\u043e\\u0432\\u043d\\u044b. \\u041c\\u0411\\u0414\\u041e\\u0423 \\u2116 293 \\u0444\\u0443\\u043d\\u043a\\u0446\\u0438\\u043e\\u043d\\u0438\\u0440\\u0443\\u0435\\u0442 \\u0441 1979 \\u0433\\u043e\\u0434\\u0430 \\u043f\\u043e\\u0434 \\u0440\\u0443\\u043a\\u043e\\u0432\\u043e\\u0434\\u0441\\u0442\\u0432\\u043e\\u043c \\u0432\\u0441\\u0435\\u0433\\u0434\\u0430 \\u0438\\u0434\\u0443\\u0449\\u0435\\u0439 \\u043f\\u043e \\u043f\\u0443\\u0442\\u0438 \\u0438\\u043d\\u043d\\u043e\\u0432\\u0430\\u0446\\u0438\\u0439 \\u0438 \\u043d\\u043e\\u0432\\u043e\\u0432\\u0432\\u0435\\u0434\\u0435\\u043d\\u0438\\u0439, \\u0420\\u0432\\u0430\\u0447\\u0435\\u0432\\u043e\\u0439 \\u041b\\u044e\\u0431\\u043e\\u0432\\u0438 \\u0412\\u043b\\u0430\\u0434\\u0438\\u043c\\u0438\\u0440\\u043e\\u0432\\u043d\\u044b. ","state":1,"catid":"8","created":"2016-03-19 15:45:40","created_by":"41","created_by_alias":"","modified":"2016-03-19 15:45:40","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-03-19 15:45:40","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(5, 4, 1, '', '2016-03-19 15:46:01', 41, 5052, '54df72c429abee23c32e330910361d8161ff647f', '{"id":4,"asset_id":72,"title":"\\u041e \\u043d\\u0430\\u0448\\u0435\\u043c \\u0443\\u0447\\u0440\\u0435\\u0436\\u0434\\u0435\\u043d\\u0438\\u0438 3","alias":"o-nashem-uchrezhdenii-3","introtext":"\\u041c\\u0411\\u0414\\u041e\\u0423 \\u2116 293 \\u0444\\u0443\\u043d\\u043a\\u0446\\u0438\\u043e\\u043d\\u0438\\u0440\\u0443\\u0435\\u0442 \\u0441 1979 \\u0433\\u043e\\u0434\\u0430 \\u043f\\u043e\\u0434 \\u0440\\u0443\\u043a\\u043e\\u0432\\u043e\\u0434\\u0441\\u0442\\u0432\\u043e\\u043c \\u0432\\u0441\\u0435\\u0433\\u0434\\u0430 \\u0438\\u0434\\u0443\\u0449\\u0435\\u0439 \\u043f\\u043e \\u043f\\u0443\\u0442\\u0438 \\u0438\\u043d\\u043d\\u043e\\u0432\\u0430\\u0446\\u0438\\u0439 \\u0438 \\u043d\\u043e\\u0432\\u043e\\u0432\\u0432\\u0435\\u0434\\u0435\\u043d\\u0438\\u0439, \\u0420\\u0432\\u0430\\u0447\\u0435\\u0432\\u043e\\u0439 \\u041b\\u044e\\u0431\\u043e\\u0432\\u0438 \\u0412\\u043b\\u0430\\u0434\\u0438\\u043c\\u0438\\u0440\\u043e\\u0432\\u043d\\u044b. ","fulltext":"\\u041c\\u0411\\u0414\\u041e\\u0423 \\u2116 293 \\u0444\\u0443\\u043d\\u043a\\u0446\\u0438\\u043e\\u043d\\u0438\\u0440\\u0443\\u0435\\u0442 \\u0441 1979 \\u0433\\u043e\\u0434\\u0430 \\u043f\\u043e\\u0434 \\u0440\\u0443\\u043a\\u043e\\u0432\\u043e\\u0434\\u0441\\u0442\\u0432\\u043e\\u043c \\u0432\\u0441\\u0435\\u0433\\u0434\\u0430 \\u0438\\u0434\\u0443\\u0449\\u0435\\u0439 \\u043f\\u043e \\u043f\\u0443\\u0442\\u0438 \\u0438\\u043d\\u043d\\u043e\\u0432\\u0430\\u0446\\u0438\\u0439 \\u0438 \\u043d\\u043e\\u0432\\u043e\\u0432\\u0432\\u0435\\u0434\\u0435\\u043d\\u0438\\u0439, \\u0420\\u0432\\u0430\\u0447\\u0435\\u0432\\u043e\\u0439 \\u041b\\u044e\\u0431\\u043e\\u0432\\u0438 \\u0412\\u043b\\u0430\\u0434\\u0438\\u043c\\u0438\\u0440\\u043e\\u0432\\u043d\\u044b. \\u041c\\u0411\\u0414\\u041e\\u0423 \\u2116 293 \\u0444\\u0443\\u043d\\u043a\\u0446\\u0438\\u043e\\u043d\\u0438\\u0440\\u0443\\u0435\\u0442 \\u0441 1979 \\u0433\\u043e\\u0434\\u0430 \\u043f\\u043e\\u0434 \\u0440\\u0443\\u043a\\u043e\\u0432\\u043e\\u0434\\u0441\\u0442\\u0432\\u043e\\u043c \\u0432\\u0441\\u0435\\u0433\\u0434\\u0430 \\u0438\\u0434\\u0443\\u0449\\u0435\\u0439 \\u043f\\u043e \\u043f\\u0443\\u0442\\u0438 \\u0438\\u043d\\u043d\\u043e\\u0432\\u0430\\u0446\\u0438\\u0439 \\u0438 \\u043d\\u043e\\u0432\\u043e\\u0432\\u0432\\u0435\\u0434\\u0435\\u043d\\u0438\\u0439, \\u0420\\u0432\\u0430\\u0447\\u0435\\u0432\\u043e\\u0439 \\u041b\\u044e\\u0431\\u043e\\u0432\\u0438 \\u0412\\u043b\\u0430\\u0434\\u0438\\u043c\\u0438\\u0440\\u043e\\u0432\\u043d\\u044b. \\u041c\\u0411\\u0414\\u041e\\u0423 \\u2116 293 \\u0444\\u0443\\u043d\\u043a\\u0446\\u0438\\u043e\\u043d\\u0438\\u0440\\u0443\\u0435\\u0442 \\u0441 1979 \\u0433\\u043e\\u0434\\u0430 \\u043f\\u043e\\u0434 \\u0440\\u0443\\u043a\\u043e\\u0432\\u043e\\u0434\\u0441\\u0442\\u0432\\u043e\\u043c \\u0432\\u0441\\u0435\\u0433\\u0434\\u0430 \\u0438\\u0434\\u0443\\u0449\\u0435\\u0439 \\u043f\\u043e \\u043f\\u0443\\u0442\\u0438 \\u0438\\u043d\\u043d\\u043e\\u0432\\u0430\\u0446\\u0438\\u0439 \\u0438 \\u043d\\u043e\\u0432\\u043e\\u0432\\u0432\\u0435\\u0434\\u0435\\u043d\\u0438\\u0439, \\u0420\\u0432\\u0430\\u0447\\u0435\\u0432\\u043e\\u0439 \\u041b\\u044e\\u0431\\u043e\\u0432\\u0438 \\u0412\\u043b\\u0430\\u0434\\u0438\\u043c\\u0438\\u0440\\u043e\\u0432\\u043d\\u044b. \\u041c\\u0411\\u0414\\u041e\\u0423 \\u2116 293 \\u0444\\u0443\\u043d\\u043a\\u0446\\u0438\\u043e\\u043d\\u0438\\u0440\\u0443\\u0435\\u0442 \\u0441 1979 \\u0433\\u043e\\u0434\\u0430 \\u043f\\u043e\\u0434 \\u0440\\u0443\\u043a\\u043e\\u0432\\u043e\\u0434\\u0441\\u0442\\u0432\\u043e\\u043c \\u0432\\u0441\\u0435\\u0433\\u0434\\u0430 \\u0438\\u0434\\u0443\\u0449\\u0435\\u0439 \\u043f\\u043e \\u043f\\u0443\\u0442\\u0438 \\u0438\\u043d\\u043d\\u043e\\u0432\\u0430\\u0446\\u0438\\u0439 \\u0438 \\u043d\\u043e\\u0432\\u043e\\u0432\\u0432\\u0435\\u0434\\u0435\\u043d\\u0438\\u0439, \\u0420\\u0432\\u0430\\u0447\\u0435\\u0432\\u043e\\u0439 \\u041b\\u044e\\u0431\\u043e\\u0432\\u0438 \\u0412\\u043b\\u0430\\u0434\\u0438\\u043c\\u0438\\u0440\\u043e\\u0432\\u043d\\u044b. ","state":1,"catid":"8","created":"2016-03-19 15:46:01","created_by":"41","created_by_alias":"","modified":"2016-03-19 15:46:01","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-03-19 15:46:01","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(6, 5, 1, '', '2016-03-19 15:46:18', 41, 5052, '97dfb91ff5d12e24bb364a9fc7cd5bd066e570dc', '{"id":5,"asset_id":73,"title":"\\u041e \\u043d\\u0430\\u0448\\u0435\\u043c \\u0443\\u0447\\u0440\\u0435\\u0436\\u0434\\u0435\\u043d\\u0438\\u0438 4","alias":"o-nashem-uchrezhdenii-4","introtext":"\\u041c\\u0411\\u0414\\u041e\\u0423 \\u2116 293 \\u0444\\u0443\\u043d\\u043a\\u0446\\u0438\\u043e\\u043d\\u0438\\u0440\\u0443\\u0435\\u0442 \\u0441 1979 \\u0433\\u043e\\u0434\\u0430 \\u043f\\u043e\\u0434 \\u0440\\u0443\\u043a\\u043e\\u0432\\u043e\\u0434\\u0441\\u0442\\u0432\\u043e\\u043c \\u0432\\u0441\\u0435\\u0433\\u0434\\u0430 \\u0438\\u0434\\u0443\\u0449\\u0435\\u0439 \\u043f\\u043e \\u043f\\u0443\\u0442\\u0438 \\u0438\\u043d\\u043d\\u043e\\u0432\\u0430\\u0446\\u0438\\u0439 \\u0438 \\u043d\\u043e\\u0432\\u043e\\u0432\\u0432\\u0435\\u0434\\u0435\\u043d\\u0438\\u0439, \\u0420\\u0432\\u0430\\u0447\\u0435\\u0432\\u043e\\u0439 \\u041b\\u044e\\u0431\\u043e\\u0432\\u0438 \\u0412\\u043b\\u0430\\u0434\\u0438\\u043c\\u0438\\u0440\\u043e\\u0432\\u043d\\u044b. ","fulltext":"\\u041c\\u0411\\u0414\\u041e\\u0423 \\u2116 293 \\u0444\\u0443\\u043d\\u043a\\u0446\\u0438\\u043e\\u043d\\u0438\\u0440\\u0443\\u0435\\u0442 \\u0441 1979 \\u0433\\u043e\\u0434\\u0430 \\u043f\\u043e\\u0434 \\u0440\\u0443\\u043a\\u043e\\u0432\\u043e\\u0434\\u0441\\u0442\\u0432\\u043e\\u043c \\u0432\\u0441\\u0435\\u0433\\u0434\\u0430 \\u0438\\u0434\\u0443\\u0449\\u0435\\u0439 \\u043f\\u043e \\u043f\\u0443\\u0442\\u0438 \\u0438\\u043d\\u043d\\u043e\\u0432\\u0430\\u0446\\u0438\\u0439 \\u0438 \\u043d\\u043e\\u0432\\u043e\\u0432\\u0432\\u0435\\u0434\\u0435\\u043d\\u0438\\u0439, \\u0420\\u0432\\u0430\\u0447\\u0435\\u0432\\u043e\\u0439 \\u041b\\u044e\\u0431\\u043e\\u0432\\u0438 \\u0412\\u043b\\u0430\\u0434\\u0438\\u043c\\u0438\\u0440\\u043e\\u0432\\u043d\\u044b. \\u041c\\u0411\\u0414\\u041e\\u0423 \\u2116 293 \\u0444\\u0443\\u043d\\u043a\\u0446\\u0438\\u043e\\u043d\\u0438\\u0440\\u0443\\u0435\\u0442 \\u0441 1979 \\u0433\\u043e\\u0434\\u0430 \\u043f\\u043e\\u0434 \\u0440\\u0443\\u043a\\u043e\\u0432\\u043e\\u0434\\u0441\\u0442\\u0432\\u043e\\u043c \\u0432\\u0441\\u0435\\u0433\\u0434\\u0430 \\u0438\\u0434\\u0443\\u0449\\u0435\\u0439 \\u043f\\u043e \\u043f\\u0443\\u0442\\u0438 \\u0438\\u043d\\u043d\\u043e\\u0432\\u0430\\u0446\\u0438\\u0439 \\u0438 \\u043d\\u043e\\u0432\\u043e\\u0432\\u0432\\u0435\\u0434\\u0435\\u043d\\u0438\\u0439, \\u0420\\u0432\\u0430\\u0447\\u0435\\u0432\\u043e\\u0439 \\u041b\\u044e\\u0431\\u043e\\u0432\\u0438 \\u0412\\u043b\\u0430\\u0434\\u0438\\u043c\\u0438\\u0440\\u043e\\u0432\\u043d\\u044b. \\u041c\\u0411\\u0414\\u041e\\u0423 \\u2116 293 \\u0444\\u0443\\u043d\\u043a\\u0446\\u0438\\u043e\\u043d\\u0438\\u0440\\u0443\\u0435\\u0442 \\u0441 1979 \\u0433\\u043e\\u0434\\u0430 \\u043f\\u043e\\u0434 \\u0440\\u0443\\u043a\\u043e\\u0432\\u043e\\u0434\\u0441\\u0442\\u0432\\u043e\\u043c \\u0432\\u0441\\u0435\\u0433\\u0434\\u0430 \\u0438\\u0434\\u0443\\u0449\\u0435\\u0439 \\u043f\\u043e \\u043f\\u0443\\u0442\\u0438 \\u0438\\u043d\\u043d\\u043e\\u0432\\u0430\\u0446\\u0438\\u0439 \\u0438 \\u043d\\u043e\\u0432\\u043e\\u0432\\u0432\\u0435\\u0434\\u0435\\u043d\\u0438\\u0439, \\u0420\\u0432\\u0430\\u0447\\u0435\\u0432\\u043e\\u0439 \\u041b\\u044e\\u0431\\u043e\\u0432\\u0438 \\u0412\\u043b\\u0430\\u0434\\u0438\\u043c\\u0438\\u0440\\u043e\\u0432\\u043d\\u044b. \\u041c\\u0411\\u0414\\u041e\\u0423 \\u2116 293 \\u0444\\u0443\\u043d\\u043a\\u0446\\u0438\\u043e\\u043d\\u0438\\u0440\\u0443\\u0435\\u0442 \\u0441 1979 \\u0433\\u043e\\u0434\\u0430 \\u043f\\u043e\\u0434 \\u0440\\u0443\\u043a\\u043e\\u0432\\u043e\\u0434\\u0441\\u0442\\u0432\\u043e\\u043c \\u0432\\u0441\\u0435\\u0433\\u0434\\u0430 \\u0438\\u0434\\u0443\\u0449\\u0435\\u0439 \\u043f\\u043e \\u043f\\u0443\\u0442\\u0438 \\u0438\\u043d\\u043d\\u043e\\u0432\\u0430\\u0446\\u0438\\u0439 \\u0438 \\u043d\\u043e\\u0432\\u043e\\u0432\\u0432\\u0435\\u0434\\u0435\\u043d\\u0438\\u0439, \\u0420\\u0432\\u0430\\u0447\\u0435\\u0432\\u043e\\u0439 \\u041b\\u044e\\u0431\\u043e\\u0432\\u0438 \\u0412\\u043b\\u0430\\u0434\\u0438\\u043c\\u0438\\u0440\\u043e\\u0432\\u043d\\u044b. ","state":1,"catid":"8","created":"2016-03-19 15:46:18","created_by":"41","created_by_alias":"","modified":"2016-03-19 15:46:18","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-03-19 15:46:18","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(7, 1, 2, '', '2016-03-20 13:10:13', 41, 1717, 'b272e8f652f672b88fdef4df0d85cb54c76650e2', '{"id":1,"name":"\\u0417\\u0430\\u0434\\u0430\\u0442\\u044c \\u0432\\u043e\\u043f\\u0440\\u043e\\u0441","alias":"zadat-vopros","con_position":"","address":"","suburb":"","state":"","country":"","postcode":"","telephone":"","fax":"","misc":"","image":"","email_to":"","default_con":0,"published":"1","checked_out":null,"checked_out_time":null,"ordering":1,"params":"{\\"show_contact_category\\":\\"\\",\\"show_contact_list\\":\\"\\",\\"presentation_style\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_name\\":\\"\\",\\"show_position\\":\\"\\",\\"show_email\\":\\"\\",\\"show_street_address\\":\\"\\",\\"show_suburb\\":\\"\\",\\"show_state\\":\\"\\",\\"show_postcode\\":\\"\\",\\"show_country\\":\\"\\",\\"show_telephone\\":\\"\\",\\"show_mobile\\":\\"\\",\\"show_fax\\":\\"\\",\\"show_webpage\\":\\"\\",\\"show_misc\\":\\"\\",\\"show_image\\":\\"\\",\\"allow_vcard\\":\\"\\",\\"show_articles\\":\\"\\",\\"articles_display_num\\":\\"\\",\\"show_profile\\":\\"\\",\\"show_links\\":\\"\\",\\"linka_name\\":\\"\\",\\"linka\\":false,\\"linkb_name\\":\\"\\",\\"linkb\\":false,\\"linkc_name\\":\\"\\",\\"linkc\\":false,\\"linkd_name\\":\\"\\",\\"linkd\\":false,\\"linke_name\\":\\"\\",\\"linke\\":false,\\"contact_layout\\":\\"\\",\\"show_email_form\\":\\"\\",\\"show_email_copy\\":\\"\\",\\"banned_email\\":\\"\\",\\"banned_subject\\":\\"\\",\\"banned_text\\":\\"\\",\\"validate_session\\":\\"\\",\\"custom_reply\\":\\"\\",\\"redirect\\":\\"\\"}","user_id":"41","catid":"4","access":"1","mobile":"","webpage":false,"sortname1":"","sortname2":"","sortname3":"","language":"*","created":"2016-03-20 13:10:13","created_by":"41","created_by_alias":"","modified":"2016-03-20 13:10:13","modified_by":null,"metakey":"","metadesc":"","metadata":"{\\"robots\\":\\"\\",\\"rights\\":\\"\\"}","featured":"0","xreference":"","publish_up":"0000-00-00 00:00:00","publish_down":"0000-00-00 00:00:00","version":1,"hits":null}', 0);
INSERT INTO `iw0sl_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(8, 5, 1, '', '2016-03-20 13:25:07', 41, 5070, '9c5e17a90806fbf711d07dc0c1510739ab2291f7', '{"id":5,"asset_id":"73","title":"\\u041e \\u043d\\u0430\\u0448\\u0435\\u043c \\u0443\\u0447\\u0440\\u0435\\u0436\\u0434\\u0435\\u043d\\u0438\\u0438 4","alias":"o-nashem-uchrezhdenii-4","introtext":"\\u041c\\u0411\\u0414\\u041e\\u0423 \\u2116 293 \\u0444\\u0443\\u043d\\u043a\\u0446\\u0438\\u043e\\u043d\\u0438\\u0440\\u0443\\u0435\\u0442 \\u0441 1979 \\u0433\\u043e\\u0434\\u0430 \\u043f\\u043e\\u0434 \\u0440\\u0443\\u043a\\u043e\\u0432\\u043e\\u0434\\u0441\\u0442\\u0432\\u043e\\u043c \\u0432\\u0441\\u0435\\u0433\\u0434\\u0430 \\u0438\\u0434\\u0443\\u0449\\u0435\\u0439 \\u043f\\u043e \\u043f\\u0443\\u0442\\u0438 \\u0438\\u043d\\u043d\\u043e\\u0432\\u0430\\u0446\\u0438\\u0439 \\u0438 \\u043d\\u043e\\u0432\\u043e\\u0432\\u0432\\u0435\\u0434\\u0435\\u043d\\u0438\\u0439, \\u0420\\u0432\\u0430\\u0447\\u0435\\u0432\\u043e\\u0439 \\u041b\\u044e\\u0431\\u043e\\u0432\\u0438 \\u0412\\u043b\\u0430\\u0434\\u0438\\u043c\\u0438\\u0440\\u043e\\u0432\\u043d\\u044b. ","fulltext":"\\u041c\\u0411\\u0414\\u041e\\u0423 \\u2116 293 \\u0444\\u0443\\u043d\\u043a\\u0446\\u0438\\u043e\\u043d\\u0438\\u0440\\u0443\\u0435\\u0442 \\u0441 1979 \\u0433\\u043e\\u0434\\u0430 \\u043f\\u043e\\u0434 \\u0440\\u0443\\u043a\\u043e\\u0432\\u043e\\u0434\\u0441\\u0442\\u0432\\u043e\\u043c \\u0432\\u0441\\u0435\\u0433\\u0434\\u0430 \\u0438\\u0434\\u0443\\u0449\\u0435\\u0439 \\u043f\\u043e \\u043f\\u0443\\u0442\\u0438 \\u0438\\u043d\\u043d\\u043e\\u0432\\u0430\\u0446\\u0438\\u0439 \\u0438 \\u043d\\u043e\\u0432\\u043e\\u0432\\u0432\\u0435\\u0434\\u0435\\u043d\\u0438\\u0439, \\u0420\\u0432\\u0430\\u0447\\u0435\\u0432\\u043e\\u0439 \\u041b\\u044e\\u0431\\u043e\\u0432\\u0438 \\u0412\\u043b\\u0430\\u0434\\u0438\\u043c\\u0438\\u0440\\u043e\\u0432\\u043d\\u044b. \\u041c\\u0411\\u0414\\u041e\\u0423 \\u2116 293 \\u0444\\u0443\\u043d\\u043a\\u0446\\u0438\\u043e\\u043d\\u0438\\u0440\\u0443\\u0435\\u0442 \\u0441 1979 \\u0433\\u043e\\u0434\\u0430 \\u043f\\u043e\\u0434 \\u0440\\u0443\\u043a\\u043e\\u0432\\u043e\\u0434\\u0441\\u0442\\u0432\\u043e\\u043c \\u0432\\u0441\\u0435\\u0433\\u0434\\u0430 \\u0438\\u0434\\u0443\\u0449\\u0435\\u0439 \\u043f\\u043e \\u043f\\u0443\\u0442\\u0438 \\u0438\\u043d\\u043d\\u043e\\u0432\\u0430\\u0446\\u0438\\u0439 \\u0438 \\u043d\\u043e\\u0432\\u043e\\u0432\\u0432\\u0435\\u0434\\u0435\\u043d\\u0438\\u0439, \\u0420\\u0432\\u0430\\u0447\\u0435\\u0432\\u043e\\u0439 \\u041b\\u044e\\u0431\\u043e\\u0432\\u0438 \\u0412\\u043b\\u0430\\u0434\\u0438\\u043c\\u0438\\u0440\\u043e\\u0432\\u043d\\u044b. \\u041c\\u0411\\u0414\\u041e\\u0423 \\u2116 293 \\u0444\\u0443\\u043d\\u043a\\u0446\\u0438\\u043e\\u043d\\u0438\\u0440\\u0443\\u0435\\u0442 \\u0441 1979 \\u0433\\u043e\\u0434\\u0430 \\u043f\\u043e\\u0434 \\u0440\\u0443\\u043a\\u043e\\u0432\\u043e\\u0434\\u0441\\u0442\\u0432\\u043e\\u043c \\u0432\\u0441\\u0435\\u0433\\u0434\\u0430 \\u0438\\u0434\\u0443\\u0449\\u0435\\u0439 \\u043f\\u043e \\u043f\\u0443\\u0442\\u0438 \\u0438\\u043d\\u043d\\u043e\\u0432\\u0430\\u0446\\u0438\\u0439 \\u0438 \\u043d\\u043e\\u0432\\u043e\\u0432\\u0432\\u0435\\u0434\\u0435\\u043d\\u0438\\u0439, \\u0420\\u0432\\u0430\\u0447\\u0435\\u0432\\u043e\\u0439 \\u041b\\u044e\\u0431\\u043e\\u0432\\u0438 \\u0412\\u043b\\u0430\\u0434\\u0438\\u043c\\u0438\\u0440\\u043e\\u0432\\u043d\\u044b. \\u041c\\u0411\\u0414\\u041e\\u0423 \\u2116 293 \\u0444\\u0443\\u043d\\u043a\\u0446\\u0438\\u043e\\u043d\\u0438\\u0440\\u0443\\u0435\\u0442 \\u0441 1979 \\u0433\\u043e\\u0434\\u0430 \\u043f\\u043e\\u0434 \\u0440\\u0443\\u043a\\u043e\\u0432\\u043e\\u0434\\u0441\\u0442\\u0432\\u043e\\u043c \\u0432\\u0441\\u0435\\u0433\\u0434\\u0430 \\u0438\\u0434\\u0443\\u0449\\u0435\\u0439 \\u043f\\u043e \\u043f\\u0443\\u0442\\u0438 \\u0438\\u043d\\u043d\\u043e\\u0432\\u0430\\u0446\\u0438\\u0439 \\u0438 \\u043d\\u043e\\u0432\\u043e\\u0432\\u0432\\u0435\\u0434\\u0435\\u043d\\u0438\\u0439, \\u0420\\u0432\\u0430\\u0447\\u0435\\u0432\\u043e\\u0439 \\u041b\\u044e\\u0431\\u043e\\u0432\\u0438 \\u0412\\u043b\\u0430\\u0434\\u0438\\u043c\\u0438\\u0440\\u043e\\u0432\\u043d\\u044b. ","state":1,"catid":"8","created":"2016-03-19 15:46:18","created_by":"41","created_by_alias":"","modified":"2016-03-20 13:25:07","modified_by":"41","checked_out":"41","checked_out_time":"2016-03-20 13:24:55","publish_up":"2016-03-19 15:46:18","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"1\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(12, 7, 1, '', '2016-05-16 11:38:43', 41, 1730, 'aeae74966dcc484392ff0e57d376c50ce0f2e39b', '{"id":7,"asset_id":"91","title":"\\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f","alias":"glavnaya","introtext":"{gallery}gal1{\\/gallery}","fulltext":"","state":1,"catid":"2","created":"2016-05-16 11:33:33","created_by":"41","created_by_alias":"","modified":"2016-05-16 11:38:43","modified_by":"41","checked_out":"41","checked_out_time":"2016-05-16 11:38:27","publish_up":"2016-05-16 11:33:33","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":3,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"3","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(13, 7, 1, '', '2016-05-16 11:40:32', 41, 1738, '1791202384e121143e583b9091d3d4dcd174a404', '{"id":7,"asset_id":"91","title":"\\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f","alias":"glavnaya","introtext":"<p>{gallery}gal1{\\/gallery}<\\/p>","fulltext":"","state":1,"catid":"2","created":"2016-05-16 11:33:33","created_by":"41","created_by_alias":"","modified":"2016-05-16 11:40:32","modified_by":"41","checked_out":"41","checked_out_time":"2016-05-16 11:40:20","publish_up":"2016-05-16 11:33:33","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":4,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"5","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(14, 7, 1, '', '2016-05-16 11:41:19', 41, 1831, 'c7ef207d11b94eae94684818367b627fed5e6bfa', '{"id":7,"asset_id":"91","title":"\\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f","alias":"glavnaya","introtext":"<h2 class=\\"component__h2\\">\\u041d\\u0430\\u0448\\u0438 \\u043f\\u043b\\u044e\\u0441\\u044b<\\/h2>\\r\\n<p>{gallery}gal1{\\/gallery}<\\/p>","fulltext":"","state":1,"catid":"2","created":"2016-05-16 11:33:33","created_by":"41","created_by_alias":"","modified":"2016-05-16 11:41:19","modified_by":"41","checked_out":"41","checked_out_time":"2016-05-16 11:40:32","publish_up":"2016-05-16 11:33:33","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":5,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"7","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(15, 7, 1, '', '2016-05-16 11:42:23', 41, 2973, 'ded6257ce4a4c73e8990d13ec8843edf4fb9cfec', '{"id":7,"asset_id":"91","title":"\\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f","alias":"glavnaya","introtext":"<h2 class=\\"component__h2\\">\\u041d\\u0430\\u0448\\u0438 \\u043f\\u043b\\u044e\\u0441\\u044b<\\/h2>\\r\\n<div class=\\"component__text\\">\\r\\n<p>\\u041c\\u044b \\u043d\\u0435 \\u0441\\u0435\\u0442\\u044c \\u043a\\u0430\\u0444\\u0435, \\u0440\\u0430\\u0431\\u043e\\u0442\\u0430\\u0435\\u043c \\u043d\\u0435 \\u0444\\u043e\\u0440\\u043c\\u0430\\u043b\\u044c\\u043d\\u043e.\\r\\n\\u0423 \\u043d\\u0430\\u0441 \\u043c\\u043e\\u0436\\u043d\\u043e \\u0434\\u0443\\u0448\\u0435\\u0432\\u043d\\u043e \\u043f\\u043e\\u0441\\u0438\\u0434\\u0435\\u0442\\u044c \\u0441 \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u0435\\u0439 \\u0438\\u043b\\u0438 \\u0441\\u0435\\u043c\\u044c\\u0435\\u0439. \\u0413\\u043e\\u0440\\u0434\\u0438\\u043c\\u0441\\u044f \\u0441\\u0432\\u043e\\u0435\\u0439 \\u043f\\u0438\\u0446\\u0446\\u0435\\u0439, \\u043f\\u0438\\u0432\\u043e\\u043c, \\u043a\\u043e\\u0442\\u043e\\u0440\\u043e\\u0435 \\u0432\\u0430\\u0440\\u044f\\u0442 \\u043d\\u0430\\u0448\\u0438 \\u0434\\u0440\\u0443\\u0437\\u044c\\u044f \\u043f\\u043e\\u0432\\u043e\\u0432\\u0430\\u0440\\u044b \\u0442\\u043e\\u043b\\u044c\\u043a\\u043e \\u0438\\u0437 \\u0447\\u0435\\u0448\\u0441\\u043a\\u0438\\u0445 \\u0438\\u043d\\u0433\\u0440\\u0435\\u0434\\u0438\\u0435\\u043d\\u0442\\u043e\\u0432. \\u041f\\u0440\\u043e\\u0434\\u0430\\u0435\\u043c \\u043a\\u0430\\u0440\\u0442\\u0438\\u043d\\u044b \\u0441\\u043e \\u0441\\u0442\\u0435\\u043d.<\\/p>\\r\\n<\\/div>\\r\\n{gallery}gal1{\\/gallery}","fulltext":"","state":1,"catid":"2","created":"2016-05-16 11:33:33","created_by":"41","created_by_alias":"","modified":"2016-05-16 11:42:23","modified_by":"41","checked_out":"41","checked_out_time":"2016-05-16 11:41:43","publish_up":"2016-05-16 11:33:33","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":6,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"8","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(16, 7, 1, '', '2016-05-16 11:44:00', 41, 3095, '6855275e913517238f34e259eb24115df0ff13f9', '{"id":7,"asset_id":"91","title":"\\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f","alias":"glavnaya","introtext":"<h2 class=\\"component__h2\\">\\u041d\\u0430\\u0448\\u0438 \\u043f\\u043b\\u044e\\u0441\\u044b<\\/h2>\\r\\n<div class=\\"component__text\\">\\r\\n<p>\\u041c\\u044b \\u043d\\u0435 \\u0441\\u0435\\u0442\\u044c \\u043a\\u0430\\u0444\\u0435, \\u0440\\u0430\\u0431\\u043e\\u0442\\u0430\\u0435\\u043c \\u043d\\u0435 \\u0444\\u043e\\u0440\\u043c\\u0430\\u043b\\u044c\\u043d\\u043e.\\r\\n\\u0423 \\u043d\\u0430\\u0441 \\u043c\\u043e\\u0436\\u043d\\u043e \\u0434\\u0443\\u0448\\u0435\\u0432\\u043d\\u043e \\u043f\\u043e\\u0441\\u0438\\u0434\\u0435\\u0442\\u044c \\u0441 \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u0435\\u0439 \\u0438\\u043b\\u0438 \\u0441\\u0435\\u043c\\u044c\\u0435\\u0439. \\u0413\\u043e\\u0440\\u0434\\u0438\\u043c\\u0441\\u044f \\u0441\\u0432\\u043e\\u0435\\u0439 \\u043f\\u0438\\u0446\\u0446\\u0435\\u0439, \\u043f\\u0438\\u0432\\u043e\\u043c, \\u043a\\u043e\\u0442\\u043e\\u0440\\u043e\\u0435 \\u0432\\u0430\\u0440\\u044f\\u0442 \\u043d\\u0430\\u0448\\u0438 \\u0434\\u0440\\u0443\\u0437\\u044c\\u044f \\u043f\\u043e\\u0432\\u043e\\u0432\\u0430\\u0440\\u044b \\u0442\\u043e\\u043b\\u044c\\u043a\\u043e \\u0438\\u0437 \\u0447\\u0435\\u0448\\u0441\\u043a\\u0438\\u0445 \\u0438\\u043d\\u0433\\u0440\\u0435\\u0434\\u0438\\u0435\\u043d\\u0442\\u043e\\u0432. \\u041f\\u0440\\u043e\\u0434\\u0430\\u0435\\u043c \\u043a\\u0430\\u0440\\u0442\\u0438\\u043d\\u044b \\u0441\\u043e \\u0441\\u0442\\u0435\\u043d.<\\/p>\\r\\n<\\/div>\\r\\n<h2>\\u0411\\u0443\\u043c\\u0430\\u0436\\u043d\\u043e\\u0435 \\u0428\\u041e\\u0423. 20 \\u043c\\u0430\\u0440\\u0442\\u0430 2016<\\/h2>\\r\\n{gallery}gal1{\\/gallery}","fulltext":"","state":1,"catid":"2","created":"2016-05-16 11:33:33","created_by":"41","created_by_alias":"","modified":"2016-05-16 11:44:00","modified_by":"41","checked_out":"41","checked_out_time":"2016-05-16 11:43:48","publish_up":"2016-05-16 11:33:33","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":7,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"11","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(17, 7, 1, '', '2016-05-16 11:52:02', 41, 3095, '6ff85bce4d1a3c1b4165234f281919183ac40702', '{"id":7,"asset_id":"91","title":"\\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f","alias":"glavnaya","introtext":"<h2 class=\\"component__h2\\">\\u041d\\u0430\\u0448\\u0438 \\u043f\\u043b\\u044e\\u0441\\u044b<\\/h2>\\r\\n<div class=\\"component__text\\">\\r\\n<p>\\u041c\\u044b \\u043d\\u0435 \\u0441\\u0435\\u0442\\u044c \\u043a\\u0430\\u0444\\u0435, \\u0440\\u0430\\u0431\\u043e\\u0442\\u0430\\u0435\\u043c \\u043d\\u0435 \\u0444\\u043e\\u0440\\u043c\\u0430\\u043b\\u044c\\u043d\\u043e.\\r\\n\\u0423 \\u043d\\u0430\\u0441 \\u043c\\u043e\\u0436\\u043d\\u043e \\u0434\\u0443\\u0448\\u0435\\u0432\\u043d\\u043e \\u043f\\u043e\\u0441\\u0438\\u0434\\u0435\\u0442\\u044c \\u0441 \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u0435\\u0439 \\u0438\\u043b\\u0438 \\u0441\\u0435\\u043c\\u044c\\u0435\\u0439. \\u0413\\u043e\\u0440\\u0434\\u0438\\u043c\\u0441\\u044f \\u0441\\u0432\\u043e\\u0435\\u0439 \\u043f\\u0438\\u0446\\u0446\\u0435\\u0439, \\u043f\\u0438\\u0432\\u043e\\u043c, \\u043a\\u043e\\u0442\\u043e\\u0440\\u043e\\u0435 \\u0432\\u0430\\u0440\\u044f\\u0442 \\u043d\\u0430\\u0448\\u0438 \\u0434\\u0440\\u0443\\u0437\\u044c\\u044f \\u043f\\u043e\\u0432\\u043e\\u0432\\u0430\\u0440\\u044b \\u0442\\u043e\\u043b\\u044c\\u043a\\u043e \\u0438\\u0437 \\u0447\\u0435\\u0448\\u0441\\u043a\\u0438\\u0445 \\u0438\\u043d\\u0433\\u0440\\u0435\\u0434\\u0438\\u0435\\u043d\\u0442\\u043e\\u0432. \\u041f\\u0440\\u043e\\u0434\\u0430\\u0435\\u043c \\u043a\\u0430\\u0440\\u0442\\u0438\\u043d\\u044b \\u0441\\u043e \\u0441\\u0442\\u0435\\u043d.<\\/p>\\r\\n<\\/div>\\r\\n<h2>\\u0411\\u0443\\u043c\\u0430\\u0436\\u043d\\u043e\\u0435 \\u0428\\u041e\\u0423. 20 \\u043c\\u0430\\u0440\\u0442\\u0430 2016<\\/h2>\\r\\n{gallery}gal2{\\/gallery}","fulltext":"","state":1,"catid":"2","created":"2016-05-16 11:33:33","created_by":"41","created_by_alias":"","modified":"2016-05-16 11:52:02","modified_by":"41","checked_out":"41","checked_out_time":"2016-05-16 11:51:51","publish_up":"2016-05-16 11:33:33","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":8,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"17","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(18, 7, 1, '', '2016-05-16 11:55:32', 41, 3248, '4805dad482b1a3030ac1c50abb83a4af379f510c', '{"id":7,"asset_id":"91","title":"\\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f","alias":"glavnaya","introtext":"<h2 class=\\"component__h2\\">\\u041d\\u0430\\u0448\\u0438 \\u043f\\u043b\\u044e\\u0441\\u044b<\\/h2>\\r\\n<div class=\\"component__text\\">\\r\\n<p>\\u041c\\u044b \\u043d\\u0435 \\u0441\\u0435\\u0442\\u044c \\u043a\\u0430\\u0444\\u0435, \\u0440\\u0430\\u0431\\u043e\\u0442\\u0430\\u0435\\u043c \\u043d\\u0435 \\u0444\\u043e\\u0440\\u043c\\u0430\\u043b\\u044c\\u043d\\u043e.\\r\\n\\u0423 \\u043d\\u0430\\u0441 \\u043c\\u043e\\u0436\\u043d\\u043e \\u0434\\u0443\\u0448\\u0435\\u0432\\u043d\\u043e \\u043f\\u043e\\u0441\\u0438\\u0434\\u0435\\u0442\\u044c \\u0441 \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u0435\\u0439 \\u0438\\u043b\\u0438 \\u0441\\u0435\\u043c\\u044c\\u0435\\u0439. \\u0413\\u043e\\u0440\\u0434\\u0438\\u043c\\u0441\\u044f \\u0441\\u0432\\u043e\\u0435\\u0439 \\u043f\\u0438\\u0446\\u0446\\u0435\\u0439, \\u043f\\u0438\\u0432\\u043e\\u043c, \\u043a\\u043e\\u0442\\u043e\\u0440\\u043e\\u0435 \\u0432\\u0430\\u0440\\u044f\\u0442 \\u043d\\u0430\\u0448\\u0438 \\u0434\\u0440\\u0443\\u0437\\u044c\\u044f \\u043f\\u043e\\u0432\\u043e\\u0432\\u0430\\u0440\\u044b \\u0442\\u043e\\u043b\\u044c\\u043a\\u043e \\u0438\\u0437 \\u0447\\u0435\\u0448\\u0441\\u043a\\u0438\\u0445 \\u0438\\u043d\\u0433\\u0440\\u0435\\u0434\\u0438\\u0435\\u043d\\u0442\\u043e\\u0432. \\u041f\\u0440\\u043e\\u0434\\u0430\\u0435\\u043c \\u043a\\u0430\\u0440\\u0442\\u0438\\u043d\\u044b \\u0441\\u043e \\u0441\\u0442\\u0435\\u043d.<\\/p>\\r\\n<\\/div>\\r\\n<h2>\\u0411\\u0443\\u043c\\u0430\\u0436\\u043d\\u043e\\u0435 \\u0428\\u041e\\u0423. 20 \\u043c\\u0430\\u0440\\u0442\\u0430 2016<\\/h2>\\r\\n{gallery}gal2{\\/gallery}\\r\\n<h2>\\u041c\\u0430\\u0441\\u0442\\u0435\\u0440\\u043a\\u043b\\u0430\\u0441\\u0441. 4 \\u0430\\u043f\\u0440\\u0435\\u043b\\u044f 2016<\\/h2>\\r\\n{gallery}gal3{\\/gallery}","fulltext":"","state":1,"catid":"2","created":"2016-05-16 11:33:33","created_by":"41","created_by_alias":"","modified":"2016-05-16 11:55:32","modified_by":"41","checked_out":"41","checked_out_time":"2016-05-16 11:52:02","publish_up":"2016-05-16 11:33:33","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":9,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"22","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(21, 6, 1, '', '2016-05-18 04:37:15', 41, 3421, '708c1ad11b5e85edc4ba553dcb8a5acaf4603a37', '{"id":6,"asset_id":"90","title":"\\u0411\\u0430\\u043d\\u043a\\u0435\\u0442\\u044b","alias":"bankety","introtext":"<div class=\\"component__text w930\\">\\r\\n<p>2 \\u0437\\u0430\\u043b\\u0430 \\u043d\\u0430 35 \\u0438 25 \\u0447\\u0435\\u043b\\u043e\\u0432\\u0435\\u043a\\u0430.<\\/p>\\r\\n<p>\\u041e\\u0442\\u0434\\u0435\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0432\\u0445\\u043e\\u0434 \\u0432 \\u0411\\u0430\\u043d\\u043a\\u0435\\u0442\\u043d\\u044b\\u0439 \\u0437\\u0430\\u043b.<\\/p>\\r\\n<p>\\u041c\\u043e\\u0436\\u043d\\u043e \\u0441\\u0432\\u043e\\u0439 \\u0430\\u043b\\u043a\\u043e\\u0433\\u043e\\u043b\\u044c.<\\/p>\\r\\n<p>\\u041d\\u0435\\u0442 \\u043e\\u0433\\u0440\\u0430\\u043d\\u0438\\u0447\\u0435\\u043d\\u0438\\u0439 \\u043f\\u043e \\u0432\\u0440\\u0435\\u043c\\u0435\\u043d\\u0438.<\\/p>\\r\\n<p>\\u041f\\u0440\\u043e\\u0433\\u0440\\u0430\\u043c\\u043c\\u044b \\u0438 \\u0432\\u0435\\u0434\\u0443\\u0449\\u0438\\u0435 \\u043d\\u0430 \\u0432\\u044b\\u0431\\u043e\\u0440.<\\/p>\\r\\n<\\/div>\\r\\n<h2>\\u0423\\u0441\\u043b\\u043e\\u0432\\u0438\\u044f \\u0431\\u0440\\u043e\\u043d\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f<\\/h2>\\r\\n<p>\\u041f\\u043e \\u0442\\u0435\\u043b\\u0435\\u0444\\u043e\\u043d\\u0443 \\u0434\\u043e\\u0441\\u0442\\u0430\\u0442\\u043e\\u0447\\u043d\\u043e \\u043e\\u0437\\u0432\\u0443\\u0447\\u0438\\u0442\\u044c \\u0434\\u0430\\u0442\\u0443. \\u041c\\u044b \\u0440\\u0435\\u0437\\u0435\\u0440\\u0432\\u0438\\u0440\\u0443\\u0435\\u043c \\u0432\\u0440\\u0435\\u043c\\u044f. \\u0411\\u0430\\u043d\\u043a\\u0435\\u0442 \\u0441\\u0447\\u0438\\u0442\\u0430\\u0435\\u0442\\u0441\\u044f \\u0437\\u0430\\u0431\\u0440\\u043e\\u043d\\u043e\\u0440\\u043e\\u0432\\u0430\\u043d\\u043d\\u044b\\u043c \\u043f\\u043e\\u0441\\u043b\\u0435 50% \\u043e\\u043f\\u043b\\u0430\\u0442\\u044b. \\u0412\\u044bl\\u0430\\u0435\\u043c \\u0447\\u0435\\u043a. \\u041e\\u043a\\u043e\\u043d\\u0447\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u0430\\u044f \\u043e\\u043f\\u043b\\u0430\\u0442\\u0430 \\u043f\\u043e\\u0441\\u043b\\u0435 \\u0431\\u0430\\u043d\\u043a\\u0435\\u0442\\u0430.<\\/p>","fulltext":"","state":1,"catid":"2","created":"2016-05-16 11:25:30","created_by":"41","created_by_alias":"","modified":"2016-05-18 04:37:15","modified_by":"41","checked_out":"41","checked_out_time":"2016-05-18 04:36:22","publish_up":"2016-05-16 11:25:30","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":4,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"23","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(22, 6, 1, '', '2016-05-18 04:37:40', 41, 3472, '5298c4a12d88356e5cec8f9b84c7145a8c39c203', '{"id":6,"asset_id":"90","title":"\\u0411\\u0430\\u043d\\u043a\\u0435\\u0442\\u044b","alias":"bankety","introtext":"<div class=\\"component__text w930\\">\\r\\n<p>2 \\u0437\\u0430\\u043b\\u0430 \\u043d\\u0430 35 \\u0438 25 \\u0447\\u0435\\u043b\\u043e\\u0432\\u0435\\u043a\\u0430.<\\/p>\\r\\n<p>\\u041e\\u0442\\u0434\\u0435\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0432\\u0445\\u043e\\u0434 \\u0432 \\u0411\\u0430\\u043d\\u043a\\u0435\\u0442\\u043d\\u044b\\u0439 \\u0437\\u0430\\u043b.<\\/p>\\r\\n<p>\\u041c\\u043e\\u0436\\u043d\\u043e \\u0441\\u0432\\u043e\\u0439 \\u0430\\u043b\\u043a\\u043e\\u0433\\u043e\\u043b\\u044c.<\\/p>\\r\\n<p>\\u041d\\u0435\\u0442 \\u043e\\u0433\\u0440\\u0430\\u043d\\u0438\\u0447\\u0435\\u043d\\u0438\\u0439 \\u043f\\u043e \\u0432\\u0440\\u0435\\u043c\\u0435\\u043d\\u0438.<\\/p>\\r\\n<p>\\u041f\\u0440\\u043e\\u0433\\u0440\\u0430\\u043c\\u043c\\u044b \\u0438 \\u0432\\u0435\\u0434\\u0443\\u0449\\u0438\\u0435 \\u043d\\u0430 \\u0432\\u044b\\u0431\\u043e\\u0440.<\\/p>\\r\\n<\\/div>\\r\\n<h2>\\u0423\\u0441\\u043b\\u043e\\u0432\\u0438\\u044f \\u0431\\u0440\\u043e\\u043d\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f<\\/h2>\\r\\n<div class=\\"component__text w930\\">\\r\\n<p>\\u041f\\u043e \\u0442\\u0435\\u043b\\u0435\\u0444\\u043e\\u043d\\u0443 \\u0434\\u043e\\u0441\\u0442\\u0430\\u0442\\u043e\\u0447\\u043d\\u043e \\u043e\\u0437\\u0432\\u0443\\u0447\\u0438\\u0442\\u044c \\u0434\\u0430\\u0442\\u0443. \\u041c\\u044b \\u0440\\u0435\\u0437\\u0435\\u0440\\u0432\\u0438\\u0440\\u0443\\u0435\\u043c \\u0432\\u0440\\u0435\\u043c\\u044f. \\u0411\\u0430\\u043d\\u043a\\u0435\\u0442 \\u0441\\u0447\\u0438\\u0442\\u0430\\u0435\\u0442\\u0441\\u044f \\u0437\\u0430\\u0431\\u0440\\u043e\\u043d\\u043e\\u0440\\u043e\\u0432\\u0430\\u043d\\u043d\\u044b\\u043c \\u043f\\u043e\\u0441\\u043b\\u0435 50% \\u043e\\u043f\\u043b\\u0430\\u0442\\u044b. \\u0412\\u044bl\\u0430\\u0435\\u043c \\u0447\\u0435\\u043a. \\u041e\\u043a\\u043e\\u043d\\u0447\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u0430\\u044f \\u043e\\u043f\\u043b\\u0430\\u0442\\u0430 \\u043f\\u043e\\u0441\\u043b\\u0435 \\u0431\\u0430\\u043d\\u043a\\u0435\\u0442\\u0430.<\\/p>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"2","created":"2016-05-16 11:25:30","created_by":"41","created_by_alias":"","modified":"2016-05-18 04:37:40","modified_by":"41","checked_out":"41","checked_out_time":"2016-05-18 04:37:15","publish_up":"2016-05-16 11:25:30","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":5,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"24","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(23, 6, 1, '', '2016-05-18 04:38:06', 41, 3510, '12b667fd8e1cf783891c36d0a7f7b77e4d103c07', '{"id":6,"asset_id":"90","title":"\\u0411\\u0430\\u043d\\u043a\\u0435\\u0442\\u044b","alias":"bankety","introtext":"<div class=\\"component__text w930\\">\\r\\n<p>2 \\u0437\\u0430\\u043b\\u0430 \\u043d\\u0430 35 \\u0438 25 \\u0447\\u0435\\u043b\\u043e\\u0432\\u0435\\u043a\\u0430.<\\/p>\\r\\n<p>\\u041e\\u0442\\u0434\\u0435\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0432\\u0445\\u043e\\u0434 \\u0432 \\u0411\\u0430\\u043d\\u043a\\u0435\\u0442\\u043d\\u044b\\u0439 \\u0437\\u0430\\u043b.<\\/p>\\r\\n<p>\\u041c\\u043e\\u0436\\u043d\\u043e \\u0441\\u0432\\u043e\\u0439 \\u0430\\u043b\\u043a\\u043e\\u0433\\u043e\\u043b\\u044c.<\\/p>\\r\\n<p>\\u041d\\u0435\\u0442 \\u043e\\u0433\\u0440\\u0430\\u043d\\u0438\\u0447\\u0435\\u043d\\u0438\\u0439 \\u043f\\u043e \\u0432\\u0440\\u0435\\u043c\\u0435\\u043d\\u0438.<\\/p>\\r\\n<p>\\u041f\\u0440\\u043e\\u0433\\u0440\\u0430\\u043c\\u043c\\u044b \\u0438 \\u0432\\u0435\\u0434\\u0443\\u0449\\u0438\\u0435 \\u043d\\u0430 \\u0432\\u044b\\u0431\\u043e\\u0440.<\\/p>\\r\\n<\\/div>\\r\\n<h2>\\u0423\\u0441\\u043b\\u043e\\u0432\\u0438\\u044f \\u0431\\u0440\\u043e\\u043d\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f<\\/h2>\\r\\n<div class=\\"component__text w930\\">\\r\\n<p>\\u041f\\u043e \\u0442\\u0435\\u043b\\u0435\\u0444\\u043e\\u043d\\u0443 \\u0434\\u043e\\u0441\\u0442\\u0430\\u0442\\u043e\\u0447\\u043d\\u043e \\u043e\\u0437\\u0432\\u0443\\u0447\\u0438\\u0442\\u044c \\u0434\\u0430\\u0442\\u0443. \\u041c\\u044b \\u0440\\u0435\\u0437\\u0435\\u0440\\u0432\\u0438\\u0440\\u0443\\u0435\\u043c \\u0432\\u0440\\u0435\\u043c\\u044f. \\u0411\\u0430\\u043d\\u043a\\u0435\\u0442 \\u0441\\u0447\\u0438\\u0442\\u0430\\u0435\\u0442\\u0441\\u044f \\u0437\\u0430\\u0431\\u0440\\u043e\\u043d\\u043e\\u0440\\u043e\\u0432\\u0430\\u043d\\u043d\\u044b\\u043c \\u043f\\u043e\\u0441\\u043b\\u0435 50% \\u043e\\u043f\\u043b\\u0430\\u0442\\u044b. \\u0412\\u044bl\\u0430\\u0435\\u043c \\u0447\\u0435\\u043a. \\u041e\\u043a\\u043e\\u043d\\u0447\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u0430\\u044f \\u043e\\u043f\\u043b\\u0430\\u0442\\u0430 \\u043f\\u043e\\u0441\\u043b\\u0435 \\u0431\\u0430\\u043d\\u043a\\u0435\\u0442\\u0430.<\\/p>\\r\\n<\\/div>\\r\\n<a class=\\"bron\\" href=\\"#\\"><\\/a>","fulltext":"","state":1,"catid":"2","created":"2016-05-16 11:25:30","created_by":"41","created_by_alias":"","modified":"2016-05-18 04:38:06","modified_by":"41","checked_out":"41","checked_out_time":"2016-05-18 04:37:40","publish_up":"2016-05-16 11:25:30","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":6,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"25","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(24, 6, 1, '', '2016-05-18 04:40:27', 41, 1740, 'a699319d9342e3630c02fd5956d2dfcd1237f9e1', '{"id":6,"asset_id":"90","title":"\\u0411\\u0430\\u043d\\u043a\\u0435\\u0442\\u044b","alias":"bankety","introtext":"<a class=\\"bron\\" href=\\"#\\"><\\/a>","fulltext":"","state":1,"catid":"2","created":"2016-05-16 11:25:30","created_by":"41","created_by_alias":"","modified":"2016-05-18 04:40:27","modified_by":"41","checked_out":"41","checked_out_time":"2016-05-18 04:40:18","publish_up":"2016-05-16 11:25:30","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":7,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"27","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(25, 6, 1, '', '2016-05-18 04:42:21', 41, 1889, '4b80e3b0ed155c7272c0c4d4c4dbe853cadcb374', '{"id":6,"asset_id":"90","title":"\\u0411\\u0430\\u043d\\u043a\\u0435\\u0442\\u044b","alias":"bankety","introtext":"<a class=\\"bron\\" href=\\"#\\"><\\/a>\\r\\n<h2>\\u0411\\u0430\\u043d\\u043a\\u0435\\u0442\\u043d\\u043e\\u0435 \\u043c\\u0435\\u043d\\u044e<\\/h2>\\r\\n<img src=\\"images\\/templ2\\/menu11.jpg\\" alt=\\"\\" \\/>","fulltext":"","state":1,"catid":"2","created":"2016-05-16 11:25:30","created_by":"41","created_by_alias":"","modified":"2016-05-18 04:42:21","modified_by":"41","checked_out":"41","checked_out_time":"2016-05-18 04:40:27","publish_up":"2016-05-16 11:25:30","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":8,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"29","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(26, 6, 1, '', '2016-05-18 04:42:43', 41, 1906, '82df14e9f063dfd9a348aa01ad1701649ea7edde', '{"id":6,"asset_id":"90","title":"\\u0411\\u0430\\u043d\\u043a\\u0435\\u0442\\u044b","alias":"bankety","introtext":"<a class=\\"bron\\" href=\\"#\\"><\\/a>\\r\\n<h2>\\u0411\\u0430\\u043d\\u043a\\u0435\\u0442\\u043d\\u043e\\u0435 \\u043c\\u0435\\u043d\\u044e<\\/h2>\\r\\n<img src=\\"images\\/templ2\\/menu11.jpg\\" align=\\"center\\" alt=\\"\\" \\/>","fulltext":"","state":1,"catid":"2","created":"2016-05-16 11:25:30","created_by":"41","created_by_alias":"","modified":"2016-05-18 04:42:43","modified_by":"41","checked_out":"41","checked_out_time":"2016-05-18 04:42:21","publish_up":"2016-05-16 11:25:30","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":9,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"30","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(27, 6, 1, '', '2016-05-18 04:43:55', 41, 1925, 'fab81bd55f3c3d53c53ac48e073cfc15bddb4457', '{"id":6,"asset_id":"90","title":"\\u0411\\u0430\\u043d\\u043a\\u0435\\u0442\\u044b","alias":"bankety","introtext":"<h2>\\u0411\\u0430\\u043d\\u043a\\u0435\\u0442\\u043d\\u043e\\u0435 \\u043c\\u0435\\u043d\\u044e<\\/h2>\\r\\n<p><img style=\\"display: block; margin-left: auto; margin-right: auto;\\" src=\\"images\\/templ2\\/menu11.jpg\\" alt=\\"\\" \\/><\\/p>","fulltext":"","state":1,"catid":"2","created":"2016-05-16 11:25:30","created_by":"41","created_by_alias":"","modified":"2016-05-18 04:43:55","modified_by":"41","checked_out":"41","checked_out_time":"2016-05-18 04:43:44","publish_up":"2016-05-16 11:25:30","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":11,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"32","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);
INSERT INTO `iw0sl_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(28, 6, 1, '', '2016-05-18 04:44:54', 41, 2046, '4d83028c9ca974763baa3ae59b510ab7d538cd19', '{"id":6,"asset_id":"90","title":"\\u0411\\u0430\\u043d\\u043a\\u0435\\u0442\\u044b","alias":"bankety","introtext":"<h2>\\u0411\\u0430\\u043d\\u043a\\u0435\\u0442\\u043d\\u043e\\u0435 \\u043c\\u0435\\u043d\\u044e<\\/h2>\\r\\n<p><img style=\\"display: block; margin-left: auto; margin-right: auto;\\" src=\\"images\\/templ2\\/menu11.jpg\\" alt=\\"\\" \\/>\\r\\n<img style=\\"display: block; margin-left: auto; margin-right: auto;\\" src=\\"images\\/templ2\\/menu11.jpg\\" alt=\\"\\" \\/><\\/p>","fulltext":"","state":1,"catid":"2","created":"2016-05-16 11:25:30","created_by":"41","created_by_alias":"","modified":"2016-05-18 04:44:54","modified_by":"41","checked_out":"41","checked_out_time":"2016-05-18 04:43:55","publish_up":"2016-05-16 11:25:30","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":12,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"33","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(29, 6, 1, '', '2016-05-18 04:51:26', 41, 2065, '202eb41a660babb60faa6be6d20f21b63a8d2d27', '{"id":6,"asset_id":"90","title":"\\u0411\\u0430\\u043d\\u043a\\u0435\\u0442\\u044b","alias":"bankety","introtext":"<h2>\\u0411\\u0430\\u043d\\u043a\\u0435\\u0442\\u043d\\u043e\\u0435 \\u043c\\u0435\\u043d\\u044e<\\/h2>\\r\\n<p><img style=\\"display: block; margin-left: auto; margin-right: auto; margin-bottom:10px\\" src=\\"images\\/templ2\\/menu11.jpg\\" alt=\\"\\" \\/>\\r\\n<img style=\\"display: block; margin-left: auto; margin-right: auto;\\" src=\\"images\\/templ2\\/menu11.jpg\\" alt=\\"\\" \\/><\\/p>","fulltext":"","state":1,"catid":"2","created":"2016-05-16 11:25:30","created_by":"41","created_by_alias":"","modified":"2016-05-18 04:51:26","modified_by":"41","checked_out":"41","checked_out_time":"2016-05-18 04:44:54","publish_up":"2016-05-16 11:25:30","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":13,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"34","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(30, 8, 1, '', '2016-05-18 04:53:48', 41, 1787, '7e241cd76b85417e89d9fbff4e06875c8158402c', '{"id":8,"asset_id":104,"title":"\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0435 \\u043c\\u0435\\u043d\\u044e","alias":"stranitse-menyu","introtext":"<h1>\\u041c\\u0435\\u043d\\u044e \\u0431\\u043b\\u044e\\u0434<\\/h1>","fulltext":"","state":1,"catid":"2","created":"2016-05-18 04:53:48","created_by":"41","created_by_alias":"","modified":"2016-05-18 04:53:48","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-05-18 04:53:48","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(31, 8, 1, '', '2016-05-18 04:55:00', 41, 1804, '1b67c020689221703cadf32b97dec1f6619831f5', '{"id":8,"asset_id":"104","title":"\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430 \\u043c\\u0435\\u043d\\u044e","alias":"stranitse-menyu","introtext":"<h1>\\u041c\\u0435\\u043d\\u044e \\u0431\\u043b\\u044e\\u0434<\\/h1>","fulltext":"","state":1,"catid":"2","created":"2016-05-18 04:53:48","created_by":"41","created_by_alias":"","modified":"2016-05-18 04:55:00","modified_by":"41","checked_out":"41","checked_out_time":"2016-05-18 04:54:49","publish_up":"2016-05-18 04:53:48","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"1","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(32, 8, 1, '', '2016-05-18 04:58:27', 41, 2000, 'b9bcd2265fc7f74f9b01d7313913a0819e951c7e', '{"id":8,"asset_id":"104","title":"\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430 \\u043c\\u0435\\u043d\\u044e","alias":"stranitse-menyu","introtext":"<h1>\\u041c\\u0435\\u043d\\u044e \\u0431\\u043b\\u044e\\u0434<\\/h1>\\r\\n<a href=\\"images\\/templ2\\/menu1.jpg\\"><img src=\\"images\\/templ2\\/menu1.jpg\\" alt=\\"\\" \\/><\\/a>\\r\\n<a href=\\"images\\/templ2\\/menu2.jpg\\"><img src=\\"images\\/templ2\\/menu2.jpg\\" alt=\\"\\" \\/><\\/a>","fulltext":"","state":1,"catid":"2","created":"2016-05-18 04:53:48","created_by":"41","created_by_alias":"","modified":"2016-05-18 04:58:27","modified_by":"41","checked_out":"41","checked_out_time":"2016-05-18 04:57:16","publish_up":"2016-05-18 04:53:48","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":3,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"5","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(33, 8, 1, '', '2016-05-18 04:59:07', 41, 2030, '4eee8699fce1a31a527f4dde35a46eda2b0c05b2', '{"id":8,"asset_id":"104","title":"\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430 \\u043c\\u0435\\u043d\\u044e","alias":"stranitse-menyu","introtext":"<h1>\\u041c\\u0435\\u043d\\u044e \\u0431\\u043b\\u044e\\u0434<\\/h1>\\r\\n<a style=\\"margin-bottom:10px;\\" href=\\"images\\/templ2\\/menu1.jpg\\"><img src=\\"images\\/templ2\\/menu1.jpg\\" alt=\\"\\" \\/><\\/a>\\r\\n<a href=\\"images\\/templ2\\/menu2.jpg\\"><img src=\\"images\\/templ2\\/menu2.jpg\\" alt=\\"\\" \\/><\\/a>","fulltext":"","state":1,"catid":"2","created":"2016-05-18 04:53:48","created_by":"41","created_by_alias":"","modified":"2016-05-18 04:59:07","modified_by":"41","checked_out":"41","checked_out_time":"2016-05-18 04:58:27","publish_up":"2016-05-18 04:53:48","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":4,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"7","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(34, 8, 1, '', '2016-05-18 04:59:44', 41, 2009, '92d00f68165581ef669f9f48ece45fcf0fd9a955', '{"id":8,"asset_id":"104","title":"\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430 \\u043c\\u0435\\u043d\\u044e","alias":"stranitse-menyu","introtext":"<h1>\\u041c\\u0435\\u043d\\u044e \\u0431\\u043b\\u044e\\u0434<\\/h1>\\r\\n<a href=\\"images\\/templ2\\/menu1.jpg\\"><img src=\\"images\\/templ2\\/menu1.jpg\\" alt=\\"\\" \\/><\\/a>\\r\\n<br>\\r\\n<a href=\\"images\\/templ2\\/menu2.jpg\\"><img src=\\"images\\/templ2\\/menu2.jpg\\" alt=\\"\\" \\/><\\/a>","fulltext":"","state":1,"catid":"2","created":"2016-05-18 04:53:48","created_by":"41","created_by_alias":"","modified":"2016-05-18 04:59:44","modified_by":"41","checked_out":"41","checked_out_time":"2016-05-18 04:59:07","publish_up":"2016-05-18 04:53:48","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":5,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"10","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(35, 8, 1, '', '2016-05-18 04:59:56', 41, 2013, '41e111d9b957af8d827343769b198cc7e4b3750c', '{"id":8,"asset_id":"104","title":"\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430 \\u043c\\u0435\\u043d\\u044e","alias":"stranitse-menyu","introtext":"<h1>\\u041c\\u0435\\u043d\\u044e \\u0431\\u043b\\u044e\\u0434<\\/h1>\\r\\n<a href=\\"images\\/templ2\\/menu1.jpg\\"><img src=\\"images\\/templ2\\/menu1.jpg\\" alt=\\"\\" \\/><\\/a>\\r\\n<p><\\/p>\\r\\n<a href=\\"images\\/templ2\\/menu2.jpg\\"><img src=\\"images\\/templ2\\/menu2.jpg\\" alt=\\"\\" \\/><\\/a>","fulltext":"","state":1,"catid":"2","created":"2016-05-18 04:53:48","created_by":"41","created_by_alias":"","modified":"2016-05-18 04:59:56","modified_by":"41","checked_out":"41","checked_out_time":"2016-05-18 04:59:44","publish_up":"2016-05-18 04:53:48","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":6,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"11","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(36, 9, 1, '', '2016-05-18 07:55:13', 41, 1676, '8fda0f8dea8bb238f4e635eebdf79440711e8e27', '{"id":9,"asset_id":105,"title":"\\u0414\\u0435\\u0442\\u044f\\u043c","alias":"detyam","introtext":"","fulltext":"","state":1,"catid":"2","created":"2016-05-18 07:55:13","created_by":"41","created_by_alias":"","modified":"2016-05-18 07:55:13","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-05-18 07:55:13","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(37, 9, 1, '', '2016-05-18 08:04:10', 41, 1818, '538ae7046621333aa441195b0f6a1838d8f5a2b9', '{"id":9,"asset_id":"105","title":"\\u0414\\u0435\\u0442\\u044f\\u043c","alias":"detyam","introtext":"<p><img style=\\"display: block; margin-left: auto; margin-right: auto;\\" src=\\"images\\/templ2\\/detmen.jpg\\" alt=\\"\\" \\/><\\/p>","fulltext":"","state":1,"catid":"2","created":"2016-05-18 07:55:13","created_by":"41","created_by_alias":"","modified":"2016-05-18 08:04:10","modified_by":"41","checked_out":"41","checked_out_time":"2016-05-18 08:03:55","publish_up":"2016-05-18 07:55:13","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"9","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(38, 10, 1, '', '2016-05-18 08:09:44', 41, 1925, '128cea3366eb87b90b9ea042f7f523bd27137489', '{"id":10,"asset_id":108,"title":"\\u0414\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430","alias":"dostavka","introtext":"<h1>\\u041c\\u0415\\u041d\\u042e \\u0411\\u041b\\u042e\\u0414 \\u0414\\u041e\\u0421\\u0422\\u0410\\u0412\\u041a\\u0418<\\/h1>\\r\\n<img src=\\"images\\/templ2\\/menu_dost1.jpg\\" alt=\\"\\" \\/>\\r\\n<img src=\\"images\\/templ2\\/menu_dost1.jpg\\" alt=\\"\\" \\/>","fulltext":"","state":1,"catid":"2","created":"2016-05-18 08:09:44","created_by":"41","created_by_alias":"","modified":"2016-05-18 08:09:44","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-05-18 08:09:44","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(39, 10, 1, '', '2016-05-18 08:18:44', 41, 2072, 'c45795eee7bb4f6c3481f0ad48fbf2948fa41e27', '{"id":10,"asset_id":"108","title":"\\u0414\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430","alias":"dostavka","introtext":"<h1>\\u041c\\u0415\\u041d\\u042e \\u0411\\u041b\\u042e\\u0414 \\u0414\\u041e\\u0421\\u0422\\u0410\\u0412\\u041a\\u0418<\\/h1>\\r\\n<img style=\\"display: block; margin-left: auto; margin-right: auto;\\" src=\\"images\\/templ2\\/menu_dost1.jpg\\" alt=\\"\\" \\/>\\r\\n<img style=\\"display: block; margin-left: auto; margin-right: auto;\\" src=\\"images\\/templ2\\/menu_dost1.jpg\\" alt=\\"\\" \\/>","fulltext":"","state":1,"catid":"2","created":"2016-05-18 08:09:44","created_by":"41","created_by_alias":"","modified":"2016-05-18 08:18:44","modified_by":"41","checked_out":"41","checked_out_time":"2016-05-18 08:18:34","publish_up":"2016-05-18 08:09:44","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"9","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(40, 10, 1, '', '2016-05-18 08:19:39', 41, 2093, '07894ae20bb8abfc5a81d1ad56e745e45f6a6d82', '{"id":10,"asset_id":"108","title":"\\u0414\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430","alias":"dostavka","introtext":"<h1>\\u041c\\u0415\\u041d\\u042e \\u0411\\u041b\\u042e\\u0414 \\u0414\\u041e\\u0421\\u0422\\u0410\\u0412\\u041a\\u0418<\\/h1>\\r\\n<img style=\\"display: block; margin-left: auto; margin-right: auto; margin-bottom:20px;\\" src=\\"images\\/templ2\\/menu_dost1.jpg\\" alt=\\"\\" \\/>\\r\\n<img style=\\"display: block; margin-left: auto; margin-right: auto;\\" src=\\"images\\/templ2\\/menu_dost1.jpg\\" alt=\\"\\" \\/>","fulltext":"","state":1,"catid":"2","created":"2016-05-18 08:09:44","created_by":"41","created_by_alias":"","modified":"2016-05-18 08:19:39","modified_by":"41","checked_out":"41","checked_out_time":"2016-05-18 08:18:56","publish_up":"2016-05-18 08:09:44","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":3,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"10","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(41, 7, 1, '', '2016-05-18 08:20:21', 41, 2007, 'eaecf731054cc0eb13986aec61c02345976e2426', '{"id":7,"asset_id":"91","title":"\\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f","alias":"glavnaya","introtext":"<h2>\\u0411\\u0443\\u043c\\u0430\\u0436\\u043d\\u043e\\u0435 \\u0428\\u041e\\u0423. 20 \\u043c\\u0430\\u0440\\u0442\\u0430 2016<\\/h2>\\r\\n{gallery}gal2{\\/gallery}\\r\\n<h2>\\u041c\\u0430\\u0441\\u0442\\u0435\\u0440\\u043a\\u043b\\u0430\\u0441\\u0441. 4 \\u0430\\u043f\\u0440\\u0435\\u043b\\u044f 2016<\\/h2>\\r\\n{gallery}gal3{\\/gallery}","fulltext":"","state":1,"catid":"2","created":"2016-05-16 11:33:33","created_by":"41","created_by_alias":"","modified":"2016-05-18 08:20:21","modified_by":"41","checked_out":"41","checked_out_time":"2016-05-18 08:20:02","publish_up":"2016-05-16 11:33:33","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":10,"ordering":"3","metakey":"","metadesc":"","access":"1","hits":"130","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(42, 11, 1, '', '2016-05-18 11:00:16', 41, 1697, '17100e2bcf93a44eb7e18c21412edda7c4384a31', '{"id":11,"asset_id":111,"title":"\\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u044b","alias":"kontakty","introtext":"","fulltext":"","state":1,"catid":"2","created":"2016-05-18 11:00:16","created_by":"41","created_by_alias":"","modified":"2016-05-18 11:00:16","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-05-18 11:00:16","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(43, 6, 1, '', '2016-06-08 05:13:59', 41, 1708, '495009e8ef0c851763b3f8dba8503e580be832c8', '{"id":6,"asset_id":"90","title":"\\u0411\\u0430\\u043d\\u043a\\u0435\\u0442\\u044b","alias":"bankety","introtext":"","fulltext":"","state":1,"catid":"2","created":"2016-05-16 11:25:30","created_by":"41","created_by_alias":"","modified":"2016-06-08 05:13:59","modified_by":"41","checked_out":"41","checked_out_time":"2016-06-08 05:13:46","publish_up":"2016-05-16 11:25:30","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":14,"ordering":"5","metakey":"","metadesc":"","access":"1","hits":"154","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(44, 10, 5, '', '2016-07-31 05:47:33', 41, 670, '6c1103b66d2e62d01bfa0e2d8138b6ba690cfd11', '{"id":10,"asset_id":123,"parent_id":"1","lft":"15","rgt":16,"level":1,"path":null,"extension":"com_content","title":"\\u0413\\u043e\\u0440\\u044f\\u0447\\u0438\\u0435 \\u043f\\u0440\\u0435\\u0434\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u044f","alias":"goryachie-predlozheniya","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"41","created_time":"2016-07-31 05:47:33","modified_user_id":null,"modified_time":"2016-07-31 05:47:33","hits":"0","language":"*","version":null}', 0),
(45, 11, 5, '', '2016-07-31 05:47:54', 41, 584, 'fe9929dea40ec8ea2697816f2089bf9ffd35309f', '{"id":11,"asset_id":124,"parent_id":"1","lft":"17","rgt":18,"level":1,"path":null,"extension":"com_content","title":"\\u041d\\u043e\\u0432\\u043e\\u0441\\u0442\\u0438","alias":"news","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"41","created_time":"2016-07-31 05:47:54","modified_user_id":null,"modified_time":"2016-07-31 05:47:54","hits":"0","language":"*","version":null}', 0),
(46, 12, 1, '', '2016-07-31 05:49:29', 41, 1954, '149f324c49735401e256708c44e63f90813a89cf', '{"id":12,"asset_id":125,"title":"\\u0418\\u0437\\u043c\\u0435\\u043d\\u0435\\u043d\\u0438\\u044f \\u0432 \\u043a\\u0440\\u0443\\u0438\\u0437\\u0435 \\u0441 20.06 \\u043d\\u0430 \\u0442\\/\\u0445 \\u00ab\\u041c\\u0438\\u0445\\u0430\\u0438\\u043b \\u041a\\u0443\\u0442\\u0443\\u0437\\u043e\\u0432\\u00bb","alias":"izmeneniya-v-kruize-s-20-06-na-t-kh-mikhail-kutuzov","introtext":"\\u0422\\u0435\\u043a\\u0441\\u0442","fulltext":"","state":1,"catid":"11","created":"2016-07-31 05:49:29","created_by":"41","created_by_alias":"","modified":"2016-07-31 05:49:29","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-07-31 05:49:29","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(47, 12, 5, '', '2016-07-31 05:50:25', 41, 574, '0a5e52104a3e427ac611f0f3a0d0c6de70879ac3', '{"id":12,"asset_id":126,"parent_id":"1","lft":"19","rgt":20,"level":1,"path":null,"extension":"com_content","title":"\\u0410\\u043a\\u0446\\u0438\\u0438","alias":"aktsii","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"41","created_time":"2016-07-31 05:50:25","modified_user_id":null,"modified_time":"2016-07-31 05:50:25","hits":"0","language":"*","version":null}', 0),
(48, 13, 1, '', '2016-07-31 05:50:47', 41, 1960, '432d88ed24783c8461ab466fbcd6ee0881ea041c', '{"id":13,"asset_id":127,"title":"\\u0418\\u0437\\u043c\\u0435\\u043d\\u0435\\u043d\\u0438\\u044f \\u0432 \\u043a\\u0440\\u0443\\u0438\\u0437\\u0435 \\u0441 20.06 \\u043d\\u0430 \\u0442\\/\\u0445 \\u00ab\\u041c\\u0438\\u0445\\u0430\\u0438\\u043b \\u041a\\u0443\\u0442\\u0443\\u0437\\u043e\\u0432\\u00bb 2","alias":"izmeneniya-v-kruize-s-20-06-na-t-kh-mikhail-kutuzov-2","introtext":"\\u0422\\u0435\\u043a\\u0441\\u0442 2","fulltext":"","state":1,"catid":"12","created":"2016-07-31 05:50:47","created_by":"41","created_by_alias":"","modified":"2016-07-31 05:50:47","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-07-31 05:50:47","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(49, 14, 1, '', '2016-07-31 06:11:48', 41, 2401, '9f4d2a560a3b53da82d4e4437bdd091c7aac615b', '{"id":14,"asset_id":131,"title":" \\u0420\\u041e\\u0421\\u0421\\u0418\\u042f. \\u0421\\u041e\\u0427\\u0418 \\u041e\\u0442\\u0435\\u043b\\u044c: 1*-5* \\u0412\\u044b\\u043b\\u0435\\u0442 \\u0438\\u0437 \\u0415\\u043a\\u0430\\u0442\\u0435\\u0440\\u0438\\u043d\\u0431\\u0443\\u0440\\u0433\\u0430 \\u043e\\u0442 6 - 27 \\u043d\\u043e\\u0447\\u0435\\u0439 \\u041e\\u0442 18236 \\u0440\\u0443\\u0431.","alias":"rossiya-sochi-otel-1-5-vylet-iz-ekaterinburga-ot-6-27-nochej-ot-18236-rub","introtext":"\\u0422\\u0435\\u043a\\u0441\\u0442  \\u0420\\u041e\\u0421\\u0421\\u0418\\u042f. \\u0421\\u041e\\u0427\\u0418 \\u041e\\u0442\\u0435\\u043b\\u044c: 1*-5* \\u0412\\u044b\\u043b\\u0435\\u0442 \\u0438\\u0437 \\u0415\\u043a\\u0430\\u0442\\u0435\\u0440\\u0438\\u043d\\u0431\\u0443\\u0440\\u0433\\u0430 \\u043e\\u0442 6 - 27 \\u043d\\u043e\\u0447\\u0435\\u0439 \\u041e\\u0442 18236 \\u0440\\u0443\\u0431.","fulltext":"","state":1,"catid":"10","created":"2016-07-31 06:11:48","created_by":"41","created_by_alias":"","modified":"2016-07-31 06:11:48","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-07-31 06:11:48","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/1\\\\\\/hot1.jpg\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"1\\",\\"link_titles\\":\\"1\\",\\"show_tags\\":\\"0\\",\\"show_intro\\":\\"0\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(50, 14, 1, '', '2016-07-31 06:12:38', 41, 2441, 'a446160d3b6b4e2504b320df99fe2961cccf1ada', '{"id":14,"asset_id":"131","title":" \\u0420\\u041e\\u0421\\u0421\\u0418\\u042f. \\u0421\\u041e\\u0427\\u0418 \\u041e\\u0442\\u0435\\u043b\\u044c: 1*-5* \\u0412\\u044b\\u043b\\u0435\\u0442 \\u0438\\u0437 \\u0415\\u043a\\u0430\\u0442\\u0435\\u0440\\u0438\\u043d\\u0431\\u0443\\u0440\\u0433\\u0430 \\u043e\\u0442 6 - 27 \\u043d\\u043e\\u0447\\u0435\\u0439 \\u041e\\u0442 18236 \\u0440\\u0443\\u0431.","alias":"rossiya-sochi-otel-1-5-vylet-iz-ekaterinburga-ot-6-27-nochej-ot-18236-rub","introtext":"\\u0422\\u0435\\u043a\\u0441\\u0442  \\u0420\\u041e\\u0421\\u0421\\u0418\\u042f. \\u0421\\u041e\\u0427\\u0418 \\u041e\\u0442\\u0435\\u043b\\u044c: 1*-5* \\u0412\\u044b\\u043b\\u0435\\u0442 \\u0438\\u0437 \\u0415\\u043a\\u0430\\u0442\\u0435\\u0440\\u0438\\u043d\\u0431\\u0443\\u0440\\u0433\\u0430 \\u043e\\u0442 6 - 27 \\u043d\\u043e\\u0447\\u0435\\u0439 \\u041e\\u0442 18236 \\u0440\\u0443\\u0431.","fulltext":"","state":1,"catid":"10","created":"2016-07-31 06:11:48","created_by":"41","created_by_alias":"","modified":"2016-07-31 06:12:38","modified_by":"41","checked_out":"41","checked_out_time":"2016-07-31 06:12:20","publish_up":"2016-07-31 06:11:48","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/1\\\\\\/hot1.jpg\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"images\\\\\\/1\\\\\\/hot1.jpg\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"1\\",\\"link_titles\\":\\"1\\",\\"show_tags\\":\\"0\\",\\"show_intro\\":\\"0\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"1","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);
INSERT INTO `iw0sl_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(51, 11, 1, '', '2016-07-31 07:52:59', 41, 11891, '2a58fb3863a304070c6b5bc702aadb231a77c005', '{"id":11,"asset_id":"111","title":"\\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u044b","alias":"kontakty","introtext":"<h1>\\u041e \\u043d\\u0430\\u0441<\\/h1>\\r\\n<p>\\u041f\\u0443\\u0448\\u043a\\u0438\\u043d-\\u0442\\u0443\\u0440 \\u2014 \\u044d\\u0442\\u043e online-\\u0441\\u0435\\u0440\\u0432\\u0438\\u0441 \\u0434\\u043b\\u044f \\u043f\\u043e\\u043a\\u0443\\u043f\\u043a\\u0438 \\u0430\\u0432\\u0438\\u0430\\u0431\\u0438\\u043b\\u0435\\u0442\\u043e\\u0432 \\u0432 \\u043b\\u044e\\u0431\\u0443\\u044e \\u0442\\u043e\\u0447\\u043a\\u0443 \\u043f\\u043b\\u0430\\u043d\\u0435\\u0442\\u044b.<\\/p>\\r\\n<p>\\u0421\\u043e\\u0431\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u0430\\u044f \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u0430 \\u043f\\u043e\\u0438\\u0441\\u043a\\u0430 \\u0438 \\u0430\\u043d\\u0430\\u043b\\u0438\\u0437\\u0430 \\u0430\\u0432\\u0438\\u0430\\u0431\\u0438\\u043b\\u0435\\u0442\\u043e\\u0432 \\u043f\\u043e\\u0437\\u0432\\u043e\\u043b\\u044f\\u0435\\u0442 \\u043d\\u0430\\u0439\\u0442\\u0438 \\u043b\\u0443\\u0447\\u0448\\u0438\\u0439 \\u0432\\u0430\\u0440\\u0438\\u0430\\u043d\\u0442 \\u043f\\u0435\\u0440\\u0435\\u043b\\u0435\\u0442\\u0430 \\u0438 \\u043b\\u0443\\u0447\\u0448\\u0443\\u044e \\u0446\\u0435\\u043d\\u0443 \\u043f\\u043e \\u043b\\u044e\\u0431\\u043e\\u043c\\u0443 \\u0437\\u0430\\u0434\\u0430\\u043d\\u043d\\u043e\\u043c\\u0443 \\u043d\\u0430\\u043f\\u0440\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u044e \\u0438 \\u0434\\u0430\\u0442\\u0435.<\\/p>\\r\\n<p>\\u041f\\u0443\\u0448\\u043a\\u0438\\u043d-\\u0442\\u0443\\u0440 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0430\\u0435\\u0442 \\u0441 \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u043e\\u0439 \\u043e\\u043d\\u043b\\u0430\\u0439\\u043d \\u0431\\u0440\\u043e\\u043d\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f \\u0430\\u0432\\u0438\\u0430\\u0431\\u0438\\u043b\\u0435\\u0442\\u043e\\u0432 Galileo, \\u0431\\u043b\\u0430\\u0433\\u043e\\u0434\\u0430\\u0440\\u044f \\u0447\\u0435\\u043c\\u0443 \\u0441\\u0435\\u0440\\u0432\\u0438\\u0441 \\u0438\\u043c\\u0435\\u0435\\u0442 \\u0434\\u043e\\u0441\\u0442\\u0443\\u043f \\u043a \\u0440\\u0430\\u0441\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u044e, \\u0446\\u0435\\u043d\\u0430\\u043c \\u0438 \\u0441\\u043f\\u0435\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u043c \\u043f\\u0440\\u0435\\u0434\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u044f\\u043c \\u043f\\u043e\\u0447\\u0442\\u0438 \\u0432\\u0441\\u0435\\u0445 \\u0430\\u0432\\u0438\\u0430\\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u0439 \\u043c\\u0438\\u0440\\u0430. \\u041f\\u043e\\u043c\\u0438\\u043c\\u043e \\u0430\\u0432\\u0438\\u0430\\u0431\\u0438\\u043b\\u0435\\u0442\\u043e\\u0432 \\u0431\\u043e\\u043b\\u0435\\u0435 500 \\u0440\\u043e\\u0441\\u0441\\u0438\\u0439\\u0441\\u043a\\u0438\\u0445 \\u0438 \\u0437\\u0430\\u0440\\u0443\\u0431\\u0435\\u0436\\u043d\\u044b\\u0445 \\u0430\\u0432\\u0438\\u0430\\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u0439, \\u041f\\u0443\\u0448\\u043a\\u0438\\u043d-\\u0442\\u0443\\u0440 \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u0442 \\u0431\\u0438\\u043b\\u0435\\u0442\\u044b \\u043d\\u0430 \\u0410\\u044d\\u0440\\u043e\\u044d\\u043a\\u0441\\u043f\\u0440\\u0435\\u0441\\u0441. \\u041f\\u0440\\u0438 \\u044d\\u0442\\u043e\\u043c \\u043f\\u043e\\u043a\\u0443\\u043f\\u043a\\u0430 \\u0438 \\u0432\\u044b\\u043f\\u0438\\u0441\\u043a\\u0430 \\u044d\\u043b\\u0435\\u043a\\u0442\\u0440\\u043e\\u043d\\u043d\\u044b\\u0445 \\u0430\\u0432\\u0438\\u0430\\u0431\\u0438\\u043b\\u0435\\u0442\\u043e\\u0432 \\u043f\\u0440\\u043e\\u0438\\u0441\\u0445\\u043e\\u0434\\u0438\\u0442 \\u0437\\u0430 \\u0441\\u0447\\u0438\\u0442\\u0430\\u043d\\u043d\\u044b\\u0435 \\u043c\\u0438\\u043d\\u0443\\u0442\\u044b.<\\/p>\\r\\n<p>\\u0423\\u0434\\u043e\\u0431\\u043d\\u0430\\u044f \\u0444\\u0443\\u043d\\u043a\\u0446\\u0438\\u044f \\u043f\\u043e\\u0438\\u0441\\u043a\\u0430 \\u043f\\u0435\\u0440\\u0435\\u043b\\u0435\\u0442\\u043e\\u0432 \\u2014 \\u0441\\u043e\\u0441\\u0442\\u0430\\u0432\\u043d\\u043e\\u0439 \\u043c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442 \\u2013 \\u043f\\u043e\\u0437\\u0432\\u043e\\u043b\\u044f\\u0435\\u0442 \\u043a\\u0443\\u043f\\u0438\\u0442\\u044c \\u0431\\u0438\\u043b\\u0435\\u0442\\u044b \\u0441\\u0440\\u0430\\u0437\\u0443 \\u043d\\u0430 \\u043d\\u0435\\u0441\\u043a\\u043e\\u043b\\u044c\\u043a\\u043e \\u043d\\u0443\\u0436\\u043d\\u044b\\u0445 \\u043d\\u0430\\u043f\\u0440\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u0439 \\u2014 \\u0447\\u0430\\u0441\\u0442\\u0435\\u0439 \\u0435\\u0434\\u0438\\u043d\\u043e\\u0433\\u043e \\u043c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442\\u0430. \\u0411\\u043b\\u0430\\u0433\\u043e\\u0434\\u0430\\u0440\\u044f \\u044d\\u0442\\u043e\\u0439 \\u0444\\u0443\\u043d\\u043a\\u0446\\u0438\\u0438, \\u043c\\u043e\\u0436\\u043d\\u043e \\u043a\\u0443\\u043f\\u0438\\u0442\\u044c \\u0430\\u0432\\u0438\\u0430\\u0431\\u0438\\u043b\\u0435\\u0442\\u044b \\u043d\\u0430 \\u043a\\u043e\\u043c\\u043f\\u043b\\u0435\\u043a\\u0441\\u043d\\u044b\\u0439 \\u043c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442 \\u0434\\u043b\\u044f \\u043f\\u0443\\u0442\\u0435\\u0448\\u0435\\u0441\\u0442\\u0432\\u0438\\u044f \\u0438\\u043b\\u0438 \\u043a\\u043e\\u043c\\u0430\\u043d\\u0434\\u0438\\u0440\\u043e\\u0432\\u043a\\u0438 \\u0432\\u0441\\u0435\\u0433\\u043e \\u0437\\u0430 \\u043e\\u0434\\u0438\\u043d \\u043f\\u043e\\u0438\\u0441\\u043a\\u043e\\u0432\\u043e\\u0439 \\u0437\\u0430\\u043f\\u0440\\u043e\\u0441.<\\/p>\\r\\n<p>\\u041f\\u0440\\u043e\\u0441\\u0442\\u043e\\u0439 \\u0438\\u043d\\u0442\\u0435\\u0440\\u0444\\u0435\\u0439\\u0441, \\u043d\\u0438\\u0437\\u043a\\u0438\\u0435 \\u0446\\u0435\\u043d\\u044b, \\u0432\\u044b\\u0441\\u043e\\u043a\\u043e\\u0435 \\u043a\\u0430\\u0447\\u0435\\u0441\\u0442\\u0432\\u043e \\u043f\\u0440\\u0435\\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043b\\u044f\\u0435\\u043c\\u044b\\u0445 \\u0443\\u0441\\u043b\\u0443\\u0433, \\u043e\\u0442\\u0437\\u044b\\u0432\\u0447\\u0438\\u0432\\u0430\\u044f \\u0441\\u043b\\u0443\\u0436\\u0431\\u0430 \\u043f\\u043e\\u0434\\u0434\\u0435\\u0440\\u0436\\u043a\\u0438 \\u2014 \\u0432 \\u041f\\u0443\\u0448\\u043a\\u0438\\u043d-\\u0442\\u0443\\u0440 \\u0441\\u043e\\u0437\\u0434\\u0430\\u043d\\u044b \\u0432\\u0441\\u0435 \\u0443\\u0441\\u043b\\u043e\\u0432\\u0438\\u044f \\u0434\\u043b\\u044f \\u0438\\u0434\\u0435\\u0430\\u043b\\u044c\\u043d\\u043e\\u0433\\u043e \\u043f\\u0443\\u0442\\u0435\\u0448\\u0435\\u0441\\u0442\\u0432\\u0438\\u044f.<\\/p>\\r\\n<h2>\\u0421\\u043e\\u0442\\u0440\\u0443\\u0434\\u043d\\u0438\\u043a\\u0438<\\/h2>\\r\\n<div class=\\"staff\\">\\r\\n<div class=\\"staf\\">\\r\\n<span class=\\"imgs\\"><\\/span>\\r\\n<img src=\\"img\\/marina.jpg\\" alt=\\"\\">\\r\\n<p><span>\\u041c\\u0430\\u0440\\u0438\\u043d\\u0430<\\/span> \\u043d\\u0430\\u0439\\u0434\\u0435\\u0442 \\u0441\\u0440\\u043e\\u0447\\u043d\\u044b\\u0439 \\u0440\\u0435\\u0439\\u0441<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"staf\\">\\r\\n<span class=\\"imgs\\"><\\/span>\\r\\n<img src=\\"img\\/valera.jpg\\" alt=\\"\\">\\r\\n<p><span>\\u0412\\u0430\\u043b\\u0435\\u0440\\u0430<\\/span> \\u043d\\u0430\\u0439\\u0434\\u0435\\u0442 \\u0441\\u0440\\u043e\\u0447\\u043d\\u044b\\u0439 \\u0440\\u0435\\u0439\\u0441<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"staf\\">\\r\\n<span class=\\"imgs\\"><\\/span>\\r\\n<img src=\\"img\\/denis.jpg\\" alt=\\"\\">\\r\\n<p><span>\\u0414\\u0435\\u043d\\u0438\\u0441<\\/span> \\u043d\\u0430\\u0439\\u0434\\u0435\\u0442 \\u0441\\u0440\\u043e\\u0447\\u043d\\u044b\\u0439 \\u0440\\u0435\\u0439\\u0441<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"staf\\">\\r\\n<span class=\\"imgs\\"><\\/span>\\r\\n<img src=\\"img\\/albert.jpg\\" alt=\\"\\">\\r\\n<p><span>\\u0410\\u043b\\u044c\\u0431\\u0435\\u0440\\u0442<\\/span> \\u043d\\u0430\\u0439\\u0434\\u0435\\u0442 \\u0441\\u0440\\u043e\\u0447\\u043d\\u044b\\u0439 \\u0440\\u0435\\u0439\\u0441<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<h2 class=\\"floatleft\\">\\u0421\\u043f\\u043e\\u0441\\u043e\\u0431\\u044b \\u043e\\u043f\\u043b\\u0430\\u0442\\u044b<\\/h2>\\r\\n<img src=\\"img\\/money.png\\" alt=\\"\\">\\t\\r\\n<div class=\\"clear\\"><\\/div>\\t\\t\\t\\t\\r\\n<p><i>\\u041e\\u043f\\u043b\\u0430\\u0447\\u0438\\u0432\\u0430\\u0439\\u0442\\u0435 \\u0430\\u0432\\u0438\\u0430\\u0431\\u0438\\u043b\\u0435\\u0442\\u044b \\u0441\\u043f\\u043e\\u0441\\u043e\\u0431\\u043e\\u043c, \\u043f\\u043e\\u0434\\u0445\\u043e\\u0434\\u044f\\u0449\\u0438\\u043c \\u0438\\u043c\\u0435\\u043d\\u043d\\u043e \\u0432\\u0430\\u043c. \\u0427\\u0442\\u043e\\u0431\\u044b \\u043a\\u0443\\u043f\\u0438\\u0442\\u044c \\u0430\\u0432\\u0438\\u0430\\u0431\\u0438\\u043b\\u0435\\u0442\\u044b \\u043e\\u043d\\u043b\\u0430\\u0439\\u043d, \\u0432\\u044b \\u043c\\u043e\\u0436\\u0435\\u0442\\u0435 \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u0435\\u0441\\u0442\\u0438 \\u043e\\u043f\\u043b\\u0430\\u0442\\u0443 \\u0447\\u0435\\u0440\\u0435\\u0437 \\u0442\\u0435\\u0440\\u043c\\u0438\\u043d\\u0430\\u043b\\u044b JUST.travel, \\u0430 \\u0442\\u0430\\u043a\\u0436\\u0435 \\u0447\\u0435\\u0440\\u0435\\u0437 \\u043f\\u043b\\u0430\\u0442\\u0435\\u0436\\u043d\\u044b\\u0435 \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u044b QIWI.\\u041a\\u043e\\u0448\\u0435\\u043b\\u0435\\u043a, WebMoney, \\u042f\\u043d\\u0434\\u0435\\u043a\\u0441.\\u0414\\u0435\\u043d\\u044c\\u0433\\u0438 \\u0438\\u043b\\u0438 \\u041c\\u043e\\u043d\\u0435\\u0442\\u0430.\\u0420\\u0443. \\u041a\\u0440\\u043e\\u043c\\u0435 \\u0442\\u043e\\u0433\\u043e, \\u043f\\u043e\\u043a\\u0443\\u043f\\u043a\\u0443 \\u044d\\u043b\\u0435\\u043a\\u0442\\u0440\\u043e\\u043d\\u043d\\u043e\\u0433\\u043e \\u0430\\u0432\\u0438\\u0430\\u0431\\u0438\\u043b\\u0435\\u0442\\u0430 \\u0447\\u0435\\u0440\\u0435\\u0437 \\u0438\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442 \\u043c\\u043e\\u0436\\u043d\\u043e \\u043e\\u0441\\u0443\\u0449\\u0435\\u0441\\u0442\\u0432\\u0438\\u0442\\u044c \\u0441 \\u043f\\u043e\\u043c\\u043e\\u0449\\u044c\\u044e \\u0431\\u0430\\u043d\\u043a\\u043e\\u0432\\u0441\\u043a\\u0438\\u0445 \\u043a\\u0430\\u0440\\u0442 Visa \\u0438 MasterCard.<\\/i><\\/p>\\r\\n<div class=\\"contacts\\">\\r\\n<h2>\\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u044b<\\/h2>\\t\\r\\n<p>\\u0415\\u0441\\u043b\\u0438 \\u0443 \\u0432\\u0430\\u0441 \\u0435\\u0441\\u0442\\u044c \\u043f\\u043e\\u0436\\u0435\\u043b\\u0430\\u043d\\u0438\\u044f \\u043f\\u043e \\u0440\\u0430\\u0431\\u043e\\u0442\\u0435 \\u043d\\u0430\\u0448\\u0435\\u0433\\u043e \\u0441\\u0435\\u0440\\u0432\\u0438\\u0441\\u0430 \\u0438\\u043b\\u0438 \\u0432\\u044b \\u0445\\u043e\\u0442\\u0438\\u0442\\u0435 \\u0441\\u0442\\u0430\\u0442\\u044c \\u043f\\u0430\\u0440\\u0442\\u043d\\u0435\\u0440\\u043e\\u043c \\u0442\\u0435\\u0440\\u043c\\u0438\\u043d\\u0430\\u043b\\u044c\\u043d\\u043e\\u0439 \\u0441\\u0435\\u0442\\u0438 \\u041f\\u0443\\u0448\\u043a\\u0438\\u043d-\\u0442\\u0443\\u0440, \\u043d\\u0430\\u043f\\u0438\\u0448\\u0438\\u0442\\u0435 \\u043d\\u0430\\u043c \\u043f\\u0438\\u0441\\u044c\\u043c\\u043e \\u0438\\u043b\\u0438 \\u043f\\u043e\\u0437\\u0432\\u043e\\u043d\\u0438\\u0442\\u0435 \\u043f\\u043e \\u0442\\u0435\\u043b\\u0435\\u0444\\u043e\\u043d\\u0443 <br>\\r\\n+7 495 647-00-92<br>\\r\\n\\u0422\\u0435\\u043b\\u0435\\u0444\\u043e\\u043d<br>\\r\\n+7 495 647-00-92<br>\\r\\n\\u0412\\u0440\\u0435\\u043c\\u044f \\u0440\\u0430\\u0431\\u043e\\u0442\\u044b \\u0441\\u043b\\u0443\\u0436\\u0431\\u044b \\u043f\\u043e\\u0434\\u0434\\u0435\\u0440\\u0436\\u043a\\u0438: <br>\\r\\n09:00 \\u2014 18:00 \\u043f\\u043e \\u043c\\u043e\\u0441\\u043a\\u043e\\u0432\\u0441\\u043a\\u043e\\u043c\\u0443 \\u0432\\u0440\\u0435\\u043c\\u0435\\u043d\\u0438<br>\\r\\n\\u042d\\u043b\\u0435\\u043a\\u0442\\u0440\\u043e\\u043d\\u043d\\u0430\\u044f \\u043f\\u043e\\u0447\\u0442\\u0430<br>\\r\\nmail@push.ru<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"adresses\\">\\r\\n<h2>\\u0410\\u0434\\u0440\\u0435\\u0441\\u0430<\\/h2>\\r\\n<img src=\\"img\\/cart.jpg\\" alt=\\"\\">\\r\\n<\\/div>","fulltext":"","state":1,"catid":"2","created":"2016-05-18 11:00:16","created_by":"41","created_by_alias":"","modified":"2016-07-31 07:52:59","modified_by":"41","checked_out":"41","checked_out_time":"2016-07-31 07:52:15","publish_up":"2016-05-18 11:00:16","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"233","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(52, 11, 1, '', '2016-07-31 07:55:09', 41, 11927, '2f31e37be64518e40bbcd16c9571170e03f7c74f', '{"id":11,"asset_id":"111","title":"\\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u044b","alias":"kontakty","introtext":"<h1>\\u041e \\u043d\\u0430\\u0441<\\/h1>\\r\\n<p>\\u041f\\u0443\\u0448\\u043a\\u0438\\u043d-\\u0442\\u0443\\u0440 \\u2014 \\u044d\\u0442\\u043e online-\\u0441\\u0435\\u0440\\u0432\\u0438\\u0441 \\u0434\\u043b\\u044f \\u043f\\u043e\\u043a\\u0443\\u043f\\u043a\\u0438 \\u0430\\u0432\\u0438\\u0430\\u0431\\u0438\\u043b\\u0435\\u0442\\u043e\\u0432 \\u0432 \\u043b\\u044e\\u0431\\u0443\\u044e \\u0442\\u043e\\u0447\\u043a\\u0443 \\u043f\\u043b\\u0430\\u043d\\u0435\\u0442\\u044b.<\\/p>\\r\\n<p>\\u0421\\u043e\\u0431\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u0430\\u044f \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u0430 \\u043f\\u043e\\u0438\\u0441\\u043a\\u0430 \\u0438 \\u0430\\u043d\\u0430\\u043b\\u0438\\u0437\\u0430 \\u0430\\u0432\\u0438\\u0430\\u0431\\u0438\\u043b\\u0435\\u0442\\u043e\\u0432 \\u043f\\u043e\\u0437\\u0432\\u043e\\u043b\\u044f\\u0435\\u0442 \\u043d\\u0430\\u0439\\u0442\\u0438 \\u043b\\u0443\\u0447\\u0448\\u0438\\u0439 \\u0432\\u0430\\u0440\\u0438\\u0430\\u043d\\u0442 \\u043f\\u0435\\u0440\\u0435\\u043b\\u0435\\u0442\\u0430 \\u0438 \\u043b\\u0443\\u0447\\u0448\\u0443\\u044e \\u0446\\u0435\\u043d\\u0443 \\u043f\\u043e \\u043b\\u044e\\u0431\\u043e\\u043c\\u0443 \\u0437\\u0430\\u0434\\u0430\\u043d\\u043d\\u043e\\u043c\\u0443 \\u043d\\u0430\\u043f\\u0440\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u044e \\u0438 \\u0434\\u0430\\u0442\\u0435.<\\/p>\\r\\n<p>\\u041f\\u0443\\u0448\\u043a\\u0438\\u043d-\\u0442\\u0443\\u0440 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0430\\u0435\\u0442 \\u0441 \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u043e\\u0439 \\u043e\\u043d\\u043b\\u0430\\u0439\\u043d \\u0431\\u0440\\u043e\\u043d\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f \\u0430\\u0432\\u0438\\u0430\\u0431\\u0438\\u043b\\u0435\\u0442\\u043e\\u0432 Galileo, \\u0431\\u043b\\u0430\\u0433\\u043e\\u0434\\u0430\\u0440\\u044f \\u0447\\u0435\\u043c\\u0443 \\u0441\\u0435\\u0440\\u0432\\u0438\\u0441 \\u0438\\u043c\\u0435\\u0435\\u0442 \\u0434\\u043e\\u0441\\u0442\\u0443\\u043f \\u043a \\u0440\\u0430\\u0441\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u044e, \\u0446\\u0435\\u043d\\u0430\\u043c \\u0438 \\u0441\\u043f\\u0435\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u043c \\u043f\\u0440\\u0435\\u0434\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u044f\\u043c \\u043f\\u043e\\u0447\\u0442\\u0438 \\u0432\\u0441\\u0435\\u0445 \\u0430\\u0432\\u0438\\u0430\\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u0439 \\u043c\\u0438\\u0440\\u0430. \\u041f\\u043e\\u043c\\u0438\\u043c\\u043e \\u0430\\u0432\\u0438\\u0430\\u0431\\u0438\\u043b\\u0435\\u0442\\u043e\\u0432 \\u0431\\u043e\\u043b\\u0435\\u0435 500 \\u0440\\u043e\\u0441\\u0441\\u0438\\u0439\\u0441\\u043a\\u0438\\u0445 \\u0438 \\u0437\\u0430\\u0440\\u0443\\u0431\\u0435\\u0436\\u043d\\u044b\\u0445 \\u0430\\u0432\\u0438\\u0430\\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u0439, \\u041f\\u0443\\u0448\\u043a\\u0438\\u043d-\\u0442\\u0443\\u0440 \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u0442 \\u0431\\u0438\\u043b\\u0435\\u0442\\u044b \\u043d\\u0430 \\u0410\\u044d\\u0440\\u043e\\u044d\\u043a\\u0441\\u043f\\u0440\\u0435\\u0441\\u0441. \\u041f\\u0440\\u0438 \\u044d\\u0442\\u043e\\u043c \\u043f\\u043e\\u043a\\u0443\\u043f\\u043a\\u0430 \\u0438 \\u0432\\u044b\\u043f\\u0438\\u0441\\u043a\\u0430 \\u044d\\u043b\\u0435\\u043a\\u0442\\u0440\\u043e\\u043d\\u043d\\u044b\\u0445 \\u0430\\u0432\\u0438\\u0430\\u0431\\u0438\\u043b\\u0435\\u0442\\u043e\\u0432 \\u043f\\u0440\\u043e\\u0438\\u0441\\u0445\\u043e\\u0434\\u0438\\u0442 \\u0437\\u0430 \\u0441\\u0447\\u0438\\u0442\\u0430\\u043d\\u043d\\u044b\\u0435 \\u043c\\u0438\\u043d\\u0443\\u0442\\u044b.<\\/p>\\r\\n<p>\\u0423\\u0434\\u043e\\u0431\\u043d\\u0430\\u044f \\u0444\\u0443\\u043d\\u043a\\u0446\\u0438\\u044f \\u043f\\u043e\\u0438\\u0441\\u043a\\u0430 \\u043f\\u0435\\u0440\\u0435\\u043b\\u0435\\u0442\\u043e\\u0432 \\u2014 \\u0441\\u043e\\u0441\\u0442\\u0430\\u0432\\u043d\\u043e\\u0439 \\u043c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442 \\u2013 \\u043f\\u043e\\u0437\\u0432\\u043e\\u043b\\u044f\\u0435\\u0442 \\u043a\\u0443\\u043f\\u0438\\u0442\\u044c \\u0431\\u0438\\u043b\\u0435\\u0442\\u044b \\u0441\\u0440\\u0430\\u0437\\u0443 \\u043d\\u0430 \\u043d\\u0435\\u0441\\u043a\\u043e\\u043b\\u044c\\u043a\\u043e \\u043d\\u0443\\u0436\\u043d\\u044b\\u0445 \\u043d\\u0430\\u043f\\u0440\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u0439 \\u2014 \\u0447\\u0430\\u0441\\u0442\\u0435\\u0439 \\u0435\\u0434\\u0438\\u043d\\u043e\\u0433\\u043e \\u043c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442\\u0430. \\u0411\\u043b\\u0430\\u0433\\u043e\\u0434\\u0430\\u0440\\u044f \\u044d\\u0442\\u043e\\u0439 \\u0444\\u0443\\u043d\\u043a\\u0446\\u0438\\u0438, \\u043c\\u043e\\u0436\\u043d\\u043e \\u043a\\u0443\\u043f\\u0438\\u0442\\u044c \\u0430\\u0432\\u0438\\u0430\\u0431\\u0438\\u043b\\u0435\\u0442\\u044b \\u043d\\u0430 \\u043a\\u043e\\u043c\\u043f\\u043b\\u0435\\u043a\\u0441\\u043d\\u044b\\u0439 \\u043c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442 \\u0434\\u043b\\u044f \\u043f\\u0443\\u0442\\u0435\\u0448\\u0435\\u0441\\u0442\\u0432\\u0438\\u044f \\u0438\\u043b\\u0438 \\u043a\\u043e\\u043c\\u0430\\u043d\\u0434\\u0438\\u0440\\u043e\\u0432\\u043a\\u0438 \\u0432\\u0441\\u0435\\u0433\\u043e \\u0437\\u0430 \\u043e\\u0434\\u0438\\u043d \\u043f\\u043e\\u0438\\u0441\\u043a\\u043e\\u0432\\u043e\\u0439 \\u0437\\u0430\\u043f\\u0440\\u043e\\u0441.<\\/p>\\r\\n<p>\\u041f\\u0440\\u043e\\u0441\\u0442\\u043e\\u0439 \\u0438\\u043d\\u0442\\u0435\\u0440\\u0444\\u0435\\u0439\\u0441, \\u043d\\u0438\\u0437\\u043a\\u0438\\u0435 \\u0446\\u0435\\u043d\\u044b, \\u0432\\u044b\\u0441\\u043e\\u043a\\u043e\\u0435 \\u043a\\u0430\\u0447\\u0435\\u0441\\u0442\\u0432\\u043e \\u043f\\u0440\\u0435\\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043b\\u044f\\u0435\\u043c\\u044b\\u0445 \\u0443\\u0441\\u043b\\u0443\\u0433, \\u043e\\u0442\\u0437\\u044b\\u0432\\u0447\\u0438\\u0432\\u0430\\u044f \\u0441\\u043b\\u0443\\u0436\\u0431\\u0430 \\u043f\\u043e\\u0434\\u0434\\u0435\\u0440\\u0436\\u043a\\u0438 \\u2014 \\u0432 \\u041f\\u0443\\u0448\\u043a\\u0438\\u043d-\\u0442\\u0443\\u0440 \\u0441\\u043e\\u0437\\u0434\\u0430\\u043d\\u044b \\u0432\\u0441\\u0435 \\u0443\\u0441\\u043b\\u043e\\u0432\\u0438\\u044f \\u0434\\u043b\\u044f \\u0438\\u0434\\u0435\\u0430\\u043b\\u044c\\u043d\\u043e\\u0433\\u043e \\u043f\\u0443\\u0442\\u0435\\u0448\\u0435\\u0441\\u0442\\u0432\\u0438\\u044f.<\\/p>\\r\\n<h2>\\u0421\\u043e\\u0442\\u0440\\u0443\\u0434\\u043d\\u0438\\u043a\\u0438<\\/h2>\\r\\n<div class=\\"staff\\">\\r\\n<div class=\\"staf\\">\\r\\n<span class=\\"imgs\\"><\\/span>\\r\\n<img src=\\"images\\/1\\/marina.jpg\\" alt=\\"\\">\\r\\n<p><span>\\u041c\\u0430\\u0440\\u0438\\u043d\\u0430<\\/span> \\u043d\\u0430\\u0439\\u0434\\u0435\\u0442 \\u0441\\u0440\\u043e\\u0447\\u043d\\u044b\\u0439 \\u0440\\u0435\\u0439\\u0441<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"staf\\">\\r\\n<span class=\\"imgs\\"><\\/span>\\r\\n<img src=\\"images\\/1\\/valera.jpg\\" alt=\\"\\">\\r\\n<p><span>\\u0412\\u0430\\u043b\\u0435\\u0440\\u0430<\\/span> \\u043d\\u0430\\u0439\\u0434\\u0435\\u0442 \\u0441\\u0440\\u043e\\u0447\\u043d\\u044b\\u0439 \\u0440\\u0435\\u0439\\u0441<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"staf\\">\\r\\n<span class=\\"imgs\\"><\\/span>\\r\\n<img src=\\"images\\/1\\/denis.jpg\\" alt=\\"\\">\\r\\n<p><span>\\u0414\\u0435\\u043d\\u0438\\u0441<\\/span> \\u043d\\u0430\\u0439\\u0434\\u0435\\u0442 \\u0441\\u0440\\u043e\\u0447\\u043d\\u044b\\u0439 \\u0440\\u0435\\u0439\\u0441<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"staf\\">\\r\\n<span class=\\"imgs\\"><\\/span>\\r\\n<img src=\\"images\\/1\\/albert.jpg\\" alt=\\"\\">\\r\\n<p><span>\\u0410\\u043b\\u044c\\u0431\\u0435\\u0440\\u0442<\\/span> \\u043d\\u0430\\u0439\\u0434\\u0435\\u0442 \\u0441\\u0440\\u043e\\u0447\\u043d\\u044b\\u0439 \\u0440\\u0435\\u0439\\u0441<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<h2 class=\\"floatleft\\">\\u0421\\u043f\\u043e\\u0441\\u043e\\u0431\\u044b \\u043e\\u043f\\u043b\\u0430\\u0442\\u044b<\\/h2>\\r\\n<img src=\\"images\\/1\\/money.png\\" alt=\\"\\">\\t\\r\\n<div class=\\"clear\\"><\\/div>\\t\\t\\t\\t\\r\\n<p><i>\\u041e\\u043f\\u043b\\u0430\\u0447\\u0438\\u0432\\u0430\\u0439\\u0442\\u0435 \\u0430\\u0432\\u0438\\u0430\\u0431\\u0438\\u043b\\u0435\\u0442\\u044b \\u0441\\u043f\\u043e\\u0441\\u043e\\u0431\\u043e\\u043c, \\u043f\\u043e\\u0434\\u0445\\u043e\\u0434\\u044f\\u0449\\u0438\\u043c \\u0438\\u043c\\u0435\\u043d\\u043d\\u043e \\u0432\\u0430\\u043c. \\u0427\\u0442\\u043e\\u0431\\u044b \\u043a\\u0443\\u043f\\u0438\\u0442\\u044c \\u0430\\u0432\\u0438\\u0430\\u0431\\u0438\\u043b\\u0435\\u0442\\u044b \\u043e\\u043d\\u043b\\u0430\\u0439\\u043d, \\u0432\\u044b \\u043c\\u043e\\u0436\\u0435\\u0442\\u0435 \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u0435\\u0441\\u0442\\u0438 \\u043e\\u043f\\u043b\\u0430\\u0442\\u0443 \\u0447\\u0435\\u0440\\u0435\\u0437 \\u0442\\u0435\\u0440\\u043c\\u0438\\u043d\\u0430\\u043b\\u044b JUST.travel, \\u0430 \\u0442\\u0430\\u043a\\u0436\\u0435 \\u0447\\u0435\\u0440\\u0435\\u0437 \\u043f\\u043b\\u0430\\u0442\\u0435\\u0436\\u043d\\u044b\\u0435 \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u044b QIWI.\\u041a\\u043e\\u0448\\u0435\\u043b\\u0435\\u043a, WebMoney, \\u042f\\u043d\\u0434\\u0435\\u043a\\u0441.\\u0414\\u0435\\u043d\\u044c\\u0433\\u0438 \\u0438\\u043b\\u0438 \\u041c\\u043e\\u043d\\u0435\\u0442\\u0430.\\u0420\\u0443. \\u041a\\u0440\\u043e\\u043c\\u0435 \\u0442\\u043e\\u0433\\u043e, \\u043f\\u043e\\u043a\\u0443\\u043f\\u043a\\u0443 \\u044d\\u043b\\u0435\\u043a\\u0442\\u0440\\u043e\\u043d\\u043d\\u043e\\u0433\\u043e \\u0430\\u0432\\u0438\\u0430\\u0431\\u0438\\u043b\\u0435\\u0442\\u0430 \\u0447\\u0435\\u0440\\u0435\\u0437 \\u0438\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442 \\u043c\\u043e\\u0436\\u043d\\u043e \\u043e\\u0441\\u0443\\u0449\\u0435\\u0441\\u0442\\u0432\\u0438\\u0442\\u044c \\u0441 \\u043f\\u043e\\u043c\\u043e\\u0449\\u044c\\u044e \\u0431\\u0430\\u043d\\u043a\\u043e\\u0432\\u0441\\u043a\\u0438\\u0445 \\u043a\\u0430\\u0440\\u0442 Visa \\u0438 MasterCard.<\\/i><\\/p>\\r\\n<div class=\\"contacts\\">\\r\\n<h2>\\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u044b<\\/h2>\\t\\r\\n<p>\\u0415\\u0441\\u043b\\u0438 \\u0443 \\u0432\\u0430\\u0441 \\u0435\\u0441\\u0442\\u044c \\u043f\\u043e\\u0436\\u0435\\u043b\\u0430\\u043d\\u0438\\u044f \\u043f\\u043e \\u0440\\u0430\\u0431\\u043e\\u0442\\u0435 \\u043d\\u0430\\u0448\\u0435\\u0433\\u043e \\u0441\\u0435\\u0440\\u0432\\u0438\\u0441\\u0430 \\u0438\\u043b\\u0438 \\u0432\\u044b \\u0445\\u043e\\u0442\\u0438\\u0442\\u0435 \\u0441\\u0442\\u0430\\u0442\\u044c \\u043f\\u0430\\u0440\\u0442\\u043d\\u0435\\u0440\\u043e\\u043c \\u0442\\u0435\\u0440\\u043c\\u0438\\u043d\\u0430\\u043b\\u044c\\u043d\\u043e\\u0439 \\u0441\\u0435\\u0442\\u0438 \\u041f\\u0443\\u0448\\u043a\\u0438\\u043d-\\u0442\\u0443\\u0440, \\u043d\\u0430\\u043f\\u0438\\u0448\\u0438\\u0442\\u0435 \\u043d\\u0430\\u043c \\u043f\\u0438\\u0441\\u044c\\u043c\\u043e \\u0438\\u043b\\u0438 \\u043f\\u043e\\u0437\\u0432\\u043e\\u043d\\u0438\\u0442\\u0435 \\u043f\\u043e \\u0442\\u0435\\u043b\\u0435\\u0444\\u043e\\u043d\\u0443 <br>\\r\\n+7 495 647-00-92<br>\\r\\n\\u0422\\u0435\\u043b\\u0435\\u0444\\u043e\\u043d<br>\\r\\n+7 495 647-00-92<br>\\r\\n\\u0412\\u0440\\u0435\\u043c\\u044f \\u0440\\u0430\\u0431\\u043e\\u0442\\u044b \\u0441\\u043b\\u0443\\u0436\\u0431\\u044b \\u043f\\u043e\\u0434\\u0434\\u0435\\u0440\\u0436\\u043a\\u0438: <br>\\r\\n09:00 \\u2014 18:00 \\u043f\\u043e \\u043c\\u043e\\u0441\\u043a\\u043e\\u0432\\u0441\\u043a\\u043e\\u043c\\u0443 \\u0432\\u0440\\u0435\\u043c\\u0435\\u043d\\u0438<br>\\r\\n\\u042d\\u043b\\u0435\\u043a\\u0442\\u0440\\u043e\\u043d\\u043d\\u0430\\u044f \\u043f\\u043e\\u0447\\u0442\\u0430<br>\\r\\nmail@push.ru<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"adresses\\">\\r\\n<h2>\\u0410\\u0434\\u0440\\u0435\\u0441\\u0430<\\/h2>\\r\\n<img src=\\"images\\/1\\/cart.jpg\\" alt=\\"\\">\\r\\n<\\/div>","fulltext":"","state":1,"catid":"2","created":"2016-05-18 11:00:16","created_by":"41","created_by_alias":"","modified":"2016-07-31 07:55:09","modified_by":"41","checked_out":"41","checked_out_time":"2016-07-31 07:54:34","publish_up":"2016-05-18 11:00:16","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":3,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"235","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(53, 7, 1, '', '2016-07-31 07:57:37', 41, 1709, '29220ed8c0797cc68edbd1301c18836214f0c145', '{"id":7,"asset_id":"91","title":"\\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f","alias":"glavnaya","introtext":"","fulltext":"","state":1,"catid":"2","created":"2016-05-16 11:33:33","created_by":"41","created_by_alias":"","modified":"2016-07-31 07:57:37","modified_by":"41","checked_out":"41","checked_out_time":"2016-07-31 07:57:29","publish_up":"2016-05-16 11:33:33","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":11,"ordering":"4","metakey":"","metadesc":"","access":"1","hits":"441","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(54, 7, 1, '', '2016-08-15 08:44:51', 41, 1759, 'b0606a0b20ebf2f7db401ac55b3df55a99ace242', '{"id":7,"asset_id":"91","title":"\\u0424\\u043e\\u0442\\u043e \\u043f\\u043e\\u0441\\u0435\\u043b\\u043a\\u0430","alias":"glavnaya","introtext":"{gallery}photo{\\/gallery}","fulltext":"","state":1,"catid":"2","created":"2016-05-16 11:33:33","created_by":"41","created_by_alias":"","modified":"2016-08-15 08:44:51","modified_by":"41","checked_out":"41","checked_out_time":"2016-08-15 08:44:29","publish_up":"2016-05-16 11:33:33","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":12,"ordering":"4","metakey":"","metadesc":"","access":"1","hits":"605","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(55, 15, 1, '', '2016-08-23 06:52:23', 41, 1735, '7480d2b0d56fc3800d4116a3abed39500343f2f6', '{"id":15,"asset_id":173,"title":"\\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f","alias":"glavnaya-2","introtext":"\\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f","fulltext":"","state":1,"catid":"2","created":"2016-08-23 06:52:23","created_by":"41","created_by_alias":"","modified":"2016-08-23 06:52:23","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-08-23 06:52:23","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"1","language":"*","xreference":""}', 0),
(56, 15, 1, '', '2016-08-23 07:58:23', 41, 4538, '42399f890829a9c0744d988ec2c31cae364a1ecd', '{"id":15,"asset_id":"173","title":"\\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f","alias":"glavnaya-2","introtext":"<div class=\\"bloquot\\">\\r\\n<p><b><a href=\\"#\\">\\u041a\\u043e\\u043c\\u0430\\u043d\\u0434\\u0430 \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u0438 \\u00ab\\u041c\\u043e\\u0441\\u041f\\u0440\\u043e\\u0444\\u00bb<\\/a> \\u043f\\u0440\\u0435\\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043b\\u044f\\u0435\\u0442 \\u0443\\u0447\\u0430\\u0449\\u0438\\u043c\\u0441\\u044f \\u043f\\u043e\\u0442\\u0440\\u044f\\u0441\\u0430\\u044e\\u0449\\u0438\\u0435 \\u0432\\u043e\\u0437\\u043c\\u043e\\u0436\\u043d\\u043e\\u0441\\u0442\\u0438 \\u0434\\u043b\\u044f \\u043f\\u043e\\u043b\\u0443\\u0447\\u0435\\u043d\\u0438\\u044f \\u0437\\u043d\\u0430\\u043d\\u0438\\u0439. \\u0422\\u0435\\u043f\\u0435\\u0440\\u044c \\u0440\\u0430\\u0431\\u043e\\u0447\\u0438\\u0439 \\u0438\\u043d\\u0441\\u0442\\u0440\\u0443\\u043c\\u0435\\u043d\\u0442 \\u0448\\u043a\\u043e\\u043b\\u044c\\u043d\\u0438\\u043a\\u0430 \\u0438\\u043b\\u0438 \\u0441\\u0442\\u0443\\u0434\\u0435\\u043d\\u0442\\u0430 \\u2013 \\u044d\\u0442\\u043e \\u043d\\u0435 \\u0442\\u043e\\u043b\\u044c\\u043a\\u043e \\u043a\\u043e\\u043d\\u0441\\u043f\\u0435\\u043a\\u0442 \\u0438 \\u0443\\u0447\\u0435\\u0431\\u043d\\u0438\\u043a, \\u043d\\u043e \\u0438 \\u0441\\u043e\\u0432\\u0440\\u0435\\u043c\\u0435\\u043d\\u043d\\u044b\\u0435 \\u043c\\u0443\\u043b\\u044c\\u0442\\u0438\\u043c\\u0435\\u0434\\u0438\\u0430 \\u0441\\u0440\\u0435\\u0434\\u0441\\u0442\\u0432\\u0430, \\u0438\\u043d\\u0442\\u0435\\u0440\\u0435\\u0441\\u043d\\u044b\\u0435 \\u043d\\u0430\\u0433\\u043b\\u044f\\u0434\\u043d\\u044b\\u0435 \\u043c\\u0430\\u0442\\u0435\\u0440\\u0438\\u0430\\u043b\\u044b \\u0438 \\u0434\\u0435\\u043c\\u043e\\u043d\\u0441\\u0442\\u0440\\u0430\\u0446\\u0438\\u043e\\u043d\\u043d\\u044b\\u0435 \\u043c\\u043e\\u0434\\u0435\\u043b\\u0438, \\u043a\\u0430\\u0447\\u0435\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u043e\\u0435 \\u043e\\u0431\\u043e\\u0440\\u0443\\u0434\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435 \\u0434\\u043b\\u044f \\u0443\\u0447\\u0435\\u0431\\u043d\\u044b\\u0445 \\u043a\\u0430\\u0431\\u0438\\u043d\\u0435\\u0442\\u043e\\u0432 \\u0438 \\u043c\\u0430\\u0441\\u0442\\u0435\\u0440\\u0441\\u043a\\u0438\\u0445 \\u0438 \\u043c\\u043d\\u043e\\u0433\\u043e\\u0435 \\u0434\\u0440\\u0443\\u0433\\u043e\\u0435.<\\/b><\\/p>\\r\\n<p>\\u041a\\u043e\\u043c\\u043f\\u043b\\u0435\\u043a\\u0442\\u0430\\u0446\\u0438\\u044f \\u0433\\u043e\\u0441\\u0443\\u0434\\u0430\\u0440\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u044b\\u0445 \\u0443\\u0447\\u0440\\u0435\\u0436\\u0434\\u0435\\u043d\\u0438\\u0439 \\u043e\\u0431\\u043e\\u0440\\u0443\\u0434\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435\\u043c \\u0438 \\u0440\\u0430\\u0441\\u0445\\u043e\\u0434\\u043d\\u044b\\u043c\\u0438 \\u043c\\u0430\\u0442\\u0435\\u0440\\u0438\\u0430\\u043b\\u0430\\u043c\\u0438 \\r\\n\\u2013 \\u043e\\u0441\\u043d\\u043e\\u0432\\u043d\\u043e\\u0435 \\u043d\\u0430\\u043f\\u0440\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u0435 \\u0434\\u0435\\u044f\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0441\\u0442\\u0438 \\u0413\\u041a \\u00ab\\u041c\\u043e\\u0441\\u041f\\u0440\\u043e\\u0444\\u00bb \\u043d\\u0430 \\u043f\\u0440\\u043e\\u0442\\u044f\\u0436\\u0435\\u043d\\u0438\\u0438 \\u0431\\u043e\\u043b\\u0435\\u0435 \\u0447\\u0435\\u043c 8 \\u043b\\u0435\\u0442.<\\/p>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"2","created":"2016-08-23 06:52:23","created_by":"41","created_by_alias":"","modified":"2016-08-23 07:58:23","modified_by":"41","checked_out":"41","checked_out_time":"2016-08-23 07:57:57","publish_up":"2016-08-23 06:52:23","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"62","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"1","language":"*","xreference":""}', 0),
(57, 13, 5, '', '2016-08-23 12:23:33', 41, 618, '8c0e3671326362368b9f75fb3d8d08f3c85e8b55', '{"id":13,"asset_id":186,"parent_id":"1","lft":"21","rgt":22,"level":1,"path":null,"extension":"com_content","title":"\\u041d\\u0430\\u0448\\u0438 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u044b","alias":"nashi-proekty","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"41","created_time":"2016-08-23 12:23:33","modified_user_id":null,"modified_time":"2016-08-23 12:23:33","hits":"0","language":"*","version":null}', 0),
(58, 16, 1, '', '2016-08-23 12:24:40', 41, 1744, 'e3e96b1ded217cd8a082d40c65f2bf5265e692b0', '{"id":16,"asset_id":187,"title":"\\u041c\\u041e\\u0423 13","alias":"mou-13","introtext":"\\u041c\\u041e\\u0423 13","fulltext":"","state":1,"catid":"13","created":"2016-08-23 12:24:40","created_by":"41","created_by_alias":"","modified":"2016-08-23 12:24:40","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-08-23 12:24:40","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/1\\\\\\/project1.png\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"images\\\\\\/1\\\\\\/project1.png\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(59, 17, 1, '', '2016-08-23 12:25:21', 41, 1722, 'b7a7d8019cee202848e74c40a74d7f941bed9db9', '{"id":17,"asset_id":188,"title":"\\u041c\\u041e\\u0423 14","alias":"mou-14","introtext":"","fulltext":"","state":1,"catid":"2","created":"2016-08-23 12:25:21","created_by":"41","created_by_alias":"","modified":"2016-08-23 12:25:21","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-08-23 12:25:21","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/1\\\\\\/project1.png\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"images\\\\\\/1\\\\\\/project1.png\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(60, 18, 1, '', '2016-08-23 12:26:03', 41, 1723, '51518b9b1c75ae3d473b0ae0e8f4d35b1fed500a', '{"id":18,"asset_id":189,"title":"\\u041c\\u041e\\u0423 15","alias":"mou-15","introtext":"","fulltext":"","state":1,"catid":"13","created":"2016-08-23 12:26:03","created_by":"41","created_by_alias":"","modified":"2016-08-23 12:26:03","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-08-23 12:26:03","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/1\\\\\\/project1.png\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"images\\\\\\/1\\\\\\/project1.png\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(61, 17, 1, '', '2016-08-23 12:26:21', 41, 1740, '55ac82f49766b9b11bacd7e180014b91b8906307', '{"id":17,"asset_id":"188","title":"\\u041c\\u041e\\u0423 14","alias":"mou-14","introtext":"","fulltext":"","state":1,"catid":"13","created":"2016-08-23 12:25:21","created_by":"41","created_by_alias":"","modified":"2016-08-23 12:26:21","modified_by":"41","checked_out":"41","checked_out_time":"2016-08-23 12:26:11","publish_up":"2016-08-23 12:25:21","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/1\\\\\\/project1.png\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"images\\\\\\/1\\\\\\/project1.png\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);
INSERT INTO `iw0sl_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(62, 19, 1, '', '2016-08-23 12:26:57', 41, 1723, 'fcf86b9ed133af33d2ec159fa798bf5fc0b9d653', '{"id":19,"asset_id":190,"title":"\\u041c\\u041e\\u0423 16","alias":"mou-16","introtext":"","fulltext":"","state":1,"catid":"13","created":"2016-08-23 12:26:57","created_by":"41","created_by_alias":"","modified":"2016-08-23 12:26:57","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-08-23 12:26:57","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/1\\\\\\/project1.png\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"images\\\\\\/1\\\\\\/project1.png\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_updates`
--

CREATE TABLE IF NOT EXISTS `iw0sl_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  `extra_query` varchar(1000) DEFAULT '',
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Available Updates' AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `iw0sl_updates`
--

INSERT INTO `iw0sl_updates` (`update_id`, `update_site_id`, `extension_id`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`, `extra_query`) VALUES
(1, 1, 700, 'Joomla', '', 'joomla', 'file', '', 0, '3.6.0', '', 'https://update.joomla.org/core/sts/extension_sts.xml', '', ''),
(2, 12, 10028, 'VirtueMart', 'VirtueMart Component', 'com_virtuemart', 'component', '', 1, '3.0.16', '', 'http://virtuemart.net/releases/vm3/virtuemart_update.xml', 'http://virtuemart.net/news/latest-news/476-virtuemart-releases-vm3-0-14-and-announces-a-new-collaboration-with-2checkout-to-provide-seamless-international-payments-for-online-retailers', ''),
(3, 13, 10029, 'TcPdf Library', 'TcPdf library for VirtueMart', 'com_tcpdf', 'component', '', 1, '1.0.2', '', 'http://virtuemart.net/releases/TCPDF/tcpdf.xml', 'http://virtuemart.net/news/latest-news/466-klik-pay-is-included-in-virtuemart-2-6-14-and-virtuemart-3-0-2', ''),
(4, 42, 10030, 'VirtueMart AIO', 'VirtueMart AIO Component', 'com_virtuemart_allinone', 'component', '', 1, '3.0.16', '', 'http://virtuemart.net/releases/vm3/virtuemart_aio_update.xml', 'http://virtuemart.net/news/latest-news/476-virtuemart-releases-vm3-0-14-and-announces-a-new-collaboration-with-2checkout-to-provide-seamless-international-payments-for-online-retailers', '');

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_update_sites`
--

CREATE TABLE IF NOT EXISTS `iw0sl_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) DEFAULT '',
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Update Sites' AUTO_INCREMENT=43 ;

--
-- Дамп данных таблицы `iw0sl_update_sites`
--

INSERT INTO `iw0sl_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`) VALUES
(1, 'Joomla! Core', 'collection', 'http://update.joomla.org/core/list.xml', 1, 1471968945, ''),
(2, 'Joomla! Extension Directory', 'collection', 'http://update.joomla.org/jed/list.xml', 1, 1471968945, ''),
(3, 'Accredited Joomla! Translations', 'collection', 'http://update.joomla.org/language/translationlist_3.xml', 1, 0, ''),
(4, 'Joomla! Update Component Update Site', 'extension', 'http://update.joomla.org/core/extensions/com_joomlaupdate.xml', 1, 0, ''),
(6, 'WebInstaller Update Site', 'extension', 'http://appscdn.joomla.org/webapps/jedapps/webinstaller.xml', 1, 0, ''),
(7, 'Simple Image Gallery', 'extension', 'http://www.joomlaworks.net/updates/jw_sig.xml', 1, 1471968943, ''),
(10, 'AllForJoomla.ru', 'extension', 'http://allforjoomla.ru/updates/mod_simpleform2/j3.xml', 1, 1471968943, ''),
(11, 'Regular Labs Sourcerer', 'extension', 'http://download.regularlabs.com/updates.xml?e=sourcerer&type=.xml', 1, 1471968943, ''),
(12, 'VirtueMart3 Update Site', 'extension', 'http://virtuemart.net/releases/vm3/virtuemart_update.xml', 1, 1471968943, ''),
(13, 'TCPDF Update Site', 'extension', 'http://virtuemart.net/releases/TCPDF/tcpdf.xml', 1, 1471968943, ''),
(14, 'VirtueMart plg_vmpayment_standard Update Site', 'extension', 'http://virtuemart.net/releases/vm3/plg_vmpayment_standard_update.xml', 1, 1471968943, ''),
(15, 'VirtueMart plg_vmpayment_klarna Update Site', 'extension', 'http://virtuemart.net/releases/vm3/plg_vmpayment_klarna_update.xml', 1, 1471968943, ''),
(16, 'VirtueMart plg_vmpayment_klarnacheckout Update Site', 'extension', 'http://virtuemart.net/releases/vm3/plg_vmpayment_klarnacheckout_update.xml', 1, 1471968943, ''),
(17, 'VirtueMart plg_vmpayment_sofort Update Site', 'extension', 'http://virtuemart.net/releases/vm3/plg_vmpayment_sofort_update.xml', 1, 1471968943, ''),
(18, 'VirtueMart plg_vmpayment_paypal Update Site', 'extension', 'http://virtuemart.net/releases/vm3/plg_vmpayment_paypal_update.xml', 1, 1471968943, ''),
(19, 'VirtueMart plg_vmpayment_heidelpay Update Site', 'extension', 'http://virtuemart.net/releases/vm3/plg_vmpayment_heidelpay_update.xml', 1, 1471968943, ''),
(20, 'VirtueMart plg_vmpayment_paybox Update Site', 'extension', 'http://virtuemart.net/releases/vm3/plg_vmpayment_paybox_update.xml', 1, 1471968943, ''),
(21, 'VirtueMart3 plg_vmpayment_tco Update Site', 'extension', 'http://virtuemart.net/releases/vm3/plg_vmpayment_tco_update.xml', 1, 1471968943, ''),
(22, 'VirtueMart plg_vmpayment_amazon Update Site', 'extension', 'http://virtuemart.net/releases/vm3/plg_vmpayment_amazon_update.xml', 1, 1471968943, ''),
(23, 'VirtueMart plg_system_amazon Update Site', 'extension', 'http://virtuemart.net/releases/vm3/plg_system_amazon_update.xml', 1, 1471968943, ''),
(24, 'VirtueMart plg_vmpayment_realex_hpp_api Update Site', 'extension', 'http://virtuemart.net/releases/vm3/plg_vmpayment_realex_hpp_api_update.xml', 1, 1471968943, ''),
(25, 'VirtueMart plg_vmuserfield_realex_hpp_api Update Site', 'extension', '\n            http://virtuemart.net/releases/vm3/plg_vmuserfield_realex_hpp_api_update.xml', 1, 1471968943, ''),
(26, 'VirtueMart3 plg_vmpayment_skrill Update Site', 'extension', 'http://virtuemart.net/releases/vm3/plg_vmpayment_skrill_update.xml', 1, 1471968943, ''),
(27, 'VirtueMart plg_vmpayment_authorizenet Update Site', 'extension', 'http://virtuemart.net/releases/vm3/plg_vmpayment_authorisenet_update.xml', 1, 1471968943, ''),
(28, 'VirtueMart plg_vmpayment_sofort_ideal Update Site', 'extension', 'http://virtuemart.net/releases/vm3/plg_vmpayment_sofort_ideal_update.xml', 1, 1471968943, ''),
(29, 'VirtueMart plg_vmpayment_klikandpay Update Site', 'extension', 'http://virtuemart.net/releases/vm3/plg_vmpayment_klikandpay_update.xml', 1, 1471968943, ''),
(30, 'VirtueMart3 plg_vmshipment_weight_countries Update Site', 'extension', 'http://virtuemart.net/releases/vm3/plg_vmshipment_weight_countries_update.xml', 1, 1471968943, ''),
(31, 'VirtueMart3 plg_vmcustom_textinput Update Site', 'extension', 'http://virtuemart.net/releases/vm3/plg_vmcustom_textinput_update.xml', 1, 1471968943, ''),
(32, 'VirtueMart3 plg_vmcustom_specification Update Site', 'extension', 'http://virtuemart.net/releases/vm3/plg_vmcustom_specification_update.xml', 1, 1471968943, ''),
(33, 'VirtueMart3 plg_vmcalculation_avalara Update Site', 'extension', 'http://virtuemart.net/releases/vm3/plg_vmcalculation_avalara_update.xml', 1, 1471968943, ''),
(34, 'VirtueMart3 plg_search_virtuemart Update Site', 'extension', 'http://virtuemart.net/releases/vm3/plg_search_virtuemart_update.xml', 1, 1471968943, ''),
(35, 'VirtueMart3 MOD_VMENU Update Site', 'extension', 'http://virtuemart.net/releases/vm3/mod_vmmenu_update.xml', 1, 1471968943, ''),
(36, 'VirtueMart3 mod_virtuemart_currencies Update Site', 'extension', 'http://virtuemart.net/releases/vm3/mod_virtuemart_currencies_update.xml', 1, 1471968943, ''),
(37, 'VirtueMart3 mod_virtuemart_product Update Site', 'extension', 'http://virtuemart.net/releases/vm3/mod_virtuemart_product_update.xml', 1, 1471968943, ''),
(38, 'VirtueMart3 mod_virtuemart_search Update Site', 'extension', 'http://virtuemart.net/releases/vm3/mod_virtuemart_search_update.xml', 1, 1471968943, ''),
(39, 'VirtueMart3 mod_virtuemart_manufacturer Update Site', 'extension', 'http://virtuemart.net/releases/vm3/mod_virtuemart_manufacturer_update.xml', 1, 1471968943, ''),
(40, 'VirtueMart3 mod_virtuemart_cart Update Site', 'extension', 'http://virtuemart.net/releases/vm3/mod_virtuemart_cart_update.xml', 1, 1471968943, ''),
(41, 'VirtueMart3 mod_virtuemart_category Update Site', 'extension', 'http://virtuemart.net/releases/vm3/mod_virtuemart_category_update.xml', 1, 1471968943, ''),
(42, 'VirtueMart3 AIO Update Site', 'extension', 'http://virtuemart.net/releases/vm3/virtuemart_aio_update.xml', 1, 1471968943, '');

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_update_sites_extensions`
--

CREATE TABLE IF NOT EXISTS `iw0sl_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';

--
-- Дамп данных таблицы `iw0sl_update_sites_extensions`
--

INSERT INTO `iw0sl_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 700),
(3, 600),
(3, 10002),
(4, 28),
(6, 10007),
(7, 10008),
(10, 10015),
(11, 10024),
(12, 10028),
(13, 10029),
(14, 10031),
(15, 10032),
(16, 10033),
(17, 10034),
(18, 10035),
(19, 10036),
(20, 10037),
(21, 10038),
(22, 10039),
(23, 10040),
(24, 10041),
(25, 10042),
(26, 10043),
(27, 10044),
(28, 10045),
(29, 10046),
(30, 10047),
(31, 10048),
(32, 10049),
(33, 10050),
(34, 10051),
(35, 10052),
(36, 10053),
(37, 10054),
(38, 10055),
(39, 10056),
(40, 10057),
(41, 10058),
(42, 10030);

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_usergroups`
--

CREATE TABLE IF NOT EXISTS `iw0sl_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Дамп данных таблицы `iw0sl_usergroups`
--

INSERT INTO `iw0sl_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 18, 'Public'),
(2, 1, 8, 15, 'Registered'),
(3, 2, 9, 14, 'Author'),
(4, 3, 10, 13, 'Editor'),
(5, 4, 11, 12, 'Publisher'),
(6, 1, 4, 7, 'Manager'),
(7, 6, 5, 6, 'Administrator'),
(8, 1, 16, 17, 'Super Users'),
(9, 1, 2, 3, 'Guest');

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_users`
--

CREATE TABLE IF NOT EXISTS `iw0sl_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login',
  PRIMARY KEY (`id`),
  KEY `idx_name` (`name`),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=42 ;

--
-- Дамп данных таблицы `iw0sl_users`
--

INSERT INTO `iw0sl_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`, `requireReset`) VALUES
(41, 'Super User', 'admin', 'membship@ya.ru', '$2y$10$TKtppjseMHDWWxpGNaPgp.IsfG7do1STuKf4lU2K.nVqiPu22Zgxu', 0, 1, '2016-03-19 13:25:37', '2016-08-23 16:15:39', '0', '{"admin_style":"","admin_language":"","language":"","editor":"","helpsite":"","timezone":""}', '0000-00-00 00:00:00', 0, '', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_user_keys`
--

CREATE TABLE IF NOT EXISTS `iw0sl_user_keys` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `series` varchar(255) NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) NOT NULL,
  `uastring` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `series` (`series`),
  UNIQUE KEY `series_2` (`series`),
  UNIQUE KEY `series_3` (`series`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_user_notes`
--

CREATE TABLE IF NOT EXISTS `iw0sl_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_user_profiles`
--

CREATE TABLE IF NOT EXISTS `iw0sl_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_user_usergroup_map`
--

CREATE TABLE IF NOT EXISTS `iw0sl_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `iw0sl_user_usergroup_map`
--

INSERT INTO `iw0sl_user_usergroup_map` (`user_id`, `group_id`) VALUES
(41, 8);

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_viewlevels`
--

CREATE TABLE IF NOT EXISTS `iw0sl_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `iw0sl_viewlevels`
--

INSERT INTO `iw0sl_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 2, '[6,2,8]'),
(3, 'Special', 3, '[6,3,8]'),
(5, 'Guest', 1, '[9]'),
(6, 'Super Users', 4, '[8]');

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_virtuemart_adminmenuentries`
--

CREATE TABLE IF NOT EXISTS `iw0sl_virtuemart_adminmenuentries` (
  `id` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,
  `module_id` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'The ID of the VM Module, this Item is assigned to',
  `parent_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `name` char(64) NOT NULL DEFAULT '0',
  `link` char(64) NOT NULL DEFAULT '0',
  `depends` char(64) NOT NULL DEFAULT '' COMMENT 'Names of the Parameters, this Item depends on',
  `icon_class` char(96) DEFAULT NULL,
  `ordering` int(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `tooltip` char(128) DEFAULT NULL,
  `view` char(32) DEFAULT NULL,
  `task` char(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `module_id` (`module_id`),
  KEY `published` (`published`),
  KEY `ordering` (`ordering`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Administration Menu Items' AUTO_INCREMENT=30 ;

--
-- Дамп данных таблицы `iw0sl_virtuemart_adminmenuentries`
--

INSERT INTO `iw0sl_virtuemart_adminmenuentries` (`id`, `module_id`, `parent_id`, `name`, `link`, `depends`, `icon_class`, `ordering`, `published`, `tooltip`, `view`, `task`) VALUES
(1, 1, 0, 'COM_VIRTUEMART_CATEGORY_S', '', '', 'vmicon vmicon-16-folder_camera', 1, 1, '', 'category', ''),
(2, 1, 0, 'COM_VIRTUEMART_PRODUCT_S', '', '', 'vmicon vmicon-16-camera', 2, 1, '', 'product', ''),
(3, 1, 0, 'COM_VIRTUEMART_PRODUCT_CUSTOM_FIELD_S', '', '', 'vmicon vmicon-16-document_move', 5, 1, '', 'custom', ''),
(4, 1, 0, 'COM_VIRTUEMART_PRODUCT_INVENTORY', '', '', 'vmicon vmicon-16-price_watch', 7, 1, '', 'inventory', ''),
(5, 1, 0, 'COM_VIRTUEMART_CALC_S', '', '', 'vmicon vmicon-16-calculator', 8, 1, '', 'calc', ''),
(6, 1, 0, 'COM_VIRTUEMART_REVIEW_RATE_S', '', '', 'vmicon vmicon-16-comments', 9, 1, '', 'ratings', ''),
(7, 2, 0, 'COM_VIRTUEMART_ORDER_S', '', '', 'vmicon vmicon-16-page_white_stack', 1, 1, '', 'orders', ''),
(8, 2, 0, 'COM_VIRTUEMART_COUPON_S', '', '', 'vmicon vmicon-16-shopping', 10, 1, '', 'coupon', ''),
(9, 2, 0, 'COM_VIRTUEMART_REPORT', '', '', 'vmicon vmicon-16-chart_bar', 3, 1, '', 'report', ''),
(10, 2, 0, 'COM_VIRTUEMART_USER_S', '', '', 'vmicon vmicon-16-user', 4, 1, '', 'user', ''),
(11, 2, 0, 'COM_VIRTUEMART_SHOPPERGROUP_S', '', '', 'vmicon vmicon-16-user-group', 5, 1, '', 'shoppergroup', ''),
(12, 3, 0, 'COM_VIRTUEMART_MANUFACTURER_S', '', '', 'vmicon vmicon-16-wrench_orange', 1, 1, '', 'manufacturer', ''),
(13, 3, 0, 'COM_VIRTUEMART_MANUFACTURER_CATEGORY_S', '', '', 'vmicon vmicon-16-folder_wrench', 2, 1, '', 'manufacturercategories', ''),
(14, 4, 0, 'COM_VIRTUEMART_STORE', '', '', 'vmicon vmicon-16-reseller_account_template', 1, 1, '', 'user', 'editshop'),
(15, 4, 0, 'COM_VIRTUEMART_MEDIA_S', '', '', 'vmicon vmicon-16-pictures', 2, 1, '', 'media', ''),
(16, 4, 0, 'COM_VIRTUEMART_SHIPMENTMETHOD_S', '', '', 'vmicon vmicon-16-lorry', 3, 1, '', 'shipmentmethod', ''),
(17, 4, 0, 'COM_VIRTUEMART_PAYMENTMETHOD_S', '', '', 'vmicon vmicon-16-creditcards', 4, 1, '', 'paymentmethod', ''),
(18, 5, 0, 'COM_VIRTUEMART_CONFIGURATION', '', '', 'vmicon vmicon-16-config', 1, 1, '', 'config', ''),
(19, 5, 0, 'COM_VIRTUEMART_USERFIELD_S', '', '', 'vmicon vmicon-16-participation_rate', 2, 1, '', 'userfields', ''),
(20, 5, 0, 'COM_VIRTUEMART_ORDERSTATUS_S', '', '', 'vmicon vmicon-16-document_editing', 3, 1, '', 'orderstatus', ''),
(21, 5, 0, 'COM_VIRTUEMART_CURRENCY_S', '', '', 'vmicon vmicon-16-coins', 5, 1, '', 'currency', ''),
(22, 5, 0, 'COM_VIRTUEMART_COUNTRY_S', '', '', 'vmicon vmicon-16-globe', 6, 1, '', 'country', ''),
(23, 11, 0, 'COM_VIRTUEMART_MIGRATION_UPDATE', '', '', 'vmicon vmicon-16-installer_box', 0, 1, '', 'updatesmigration', ''),
(24, 11, 0, 'COM_VIRTUEMART_ABOUT', '', '', 'vmicon vmicon-16-info', 10, 1, '', 'about', ''),
(25, 11, 0, 'COM_VIRTUEMART_HELP_TOPICS', 'http://docs.virtuemart.net/', '', 'vmicon vmicon-16-help', 5, 1, '', '', ''),
(26, 11, 0, 'COM_VIRTUEMART_COMMUNITY_FORUM', 'http://forum.virtuemart.net/', '', 'vmicon vmicon-16-reseller_programm', 7, 1, '', '', ''),
(27, 11, 0, 'COM_VIRTUEMART_STATISTIC_SUMMARY', '', '', 'vmicon vmicon-16-info', 1, 1, '', 'virtuemart', ''),
(28, 11, 0, 'COM_VIRTUEMART_LOG', '', '', 'vmicon vmicon-16-info', 2, 1, '', 'log', ''),
(29, 11, 0, 'COM_VIRTUEMART_SUPPORT', '', '', 'vmicon vmicon-16-help', 3, 1, '', 'support', '');

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_virtuemart_calcs`
--

CREATE TABLE IF NOT EXISTS `iw0sl_virtuemart_calcs` (
  `virtuemart_calc_id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_vendor_id` int(1) unsigned NOT NULL DEFAULT '1' COMMENT 'Belongs to vendor',
  `calc_jplugin_id` int(1) NOT NULL DEFAULT '0',
  `calc_name` varchar(64) NOT NULL DEFAULT '' COMMENT 'Name of the rule',
  `calc_descr` varchar(128) NOT NULL DEFAULT '' COMMENT 'Description',
  `calc_kind` varchar(16) NOT NULL DEFAULT '' COMMENT 'Discount/Tax/Margin/Commission',
  `calc_value_mathop` varchar(8) NOT NULL DEFAULT '' COMMENT 'the mathematical operation like (+,-,+%,-%)',
  `calc_value` decimal(10,4) NOT NULL DEFAULT '0.0000' COMMENT 'The Amount',
  `calc_currency` smallint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Currency of the Rule',
  `calc_shopper_published` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Visible for Shoppers',
  `calc_vendor_published` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Visible for Vendors',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Startdate if nothing is set = permanent',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Enddate if nothing is set = permanent',
  `for_override` tinyint(1) NOT NULL DEFAULT '0',
  `calc_params` varchar(18000) NOT NULL DEFAULT '',
  `ordering` int(1) NOT NULL DEFAULT '0',
  `shared` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_calc_id`),
  KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`),
  KEY `published` (`published`),
  KEY `calc_kind` (`calc_kind`),
  KEY `shared` (`shared`),
  KEY `publish_up` (`publish_up`),
  KEY `publish_down` (`publish_down`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_virtuemart_calc_categories`
--

CREATE TABLE IF NOT EXISTS `iw0sl_virtuemart_calc_categories` (
  `id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_calc_id` int(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_category_id` int(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `virtuemart_calc_id` (`virtuemart_calc_id`,`virtuemart_category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_virtuemart_calc_countries`
--

CREATE TABLE IF NOT EXISTS `iw0sl_virtuemart_calc_countries` (
  `id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_calc_id` int(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_country_id` int(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `virtuemart_calc_id` (`virtuemart_calc_id`,`virtuemart_country_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_virtuemart_calc_manufacturers`
--

CREATE TABLE IF NOT EXISTS `iw0sl_virtuemart_calc_manufacturers` (
  `id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_calc_id` int(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_manufacturer_id` int(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `virtuemart_calc_id` (`virtuemart_calc_id`,`virtuemart_manufacturer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_virtuemart_calc_shoppergroups`
--

CREATE TABLE IF NOT EXISTS `iw0sl_virtuemart_calc_shoppergroups` (
  `id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_calc_id` int(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_shoppergroup_id` int(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `virtuemart_calc_id` (`virtuemart_calc_id`,`virtuemart_shoppergroup_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_virtuemart_calc_states`
--

CREATE TABLE IF NOT EXISTS `iw0sl_virtuemart_calc_states` (
  `id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_calc_id` int(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_state_id` int(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `virtuemart_calc_id` (`virtuemart_calc_id`,`virtuemart_state_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_virtuemart_carts`
--

CREATE TABLE IF NOT EXISTS `iw0sl_virtuemart_carts` (
  `virtuemart_cart_id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_user_id` int(1) unsigned NOT NULL,
  `virtuemart_vendor_id` int(1) unsigned NOT NULL,
  `cartData` varbinary(50000) DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_cart_id`),
  KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`),
  KEY `virtuemart_user_id` (`virtuemart_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Used to store the cart' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_virtuemart_categories`
--

CREATE TABLE IF NOT EXISTS `iw0sl_virtuemart_categories` (
  `virtuemart_category_id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_vendor_id` int(1) unsigned NOT NULL DEFAULT '1' COMMENT 'Belongs to vendor',
  `category_template` char(128) DEFAULT NULL,
  `category_layout` char(64) DEFAULT NULL,
  `category_product_layout` char(64) DEFAULT NULL,
  `products_per_row` tinyint(1) DEFAULT NULL,
  `limit_list_step` char(32) DEFAULT NULL,
  `limit_list_initial` smallint(1) unsigned DEFAULT NULL,
  `hits` int(1) unsigned NOT NULL DEFAULT '0',
  `metarobot` char(40) NOT NULL DEFAULT '',
  `metaauthor` char(64) NOT NULL DEFAULT '',
  `ordering` int(1) NOT NULL DEFAULT '0',
  `shared` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_category_id`),
  KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`),
  KEY `published` (`published`),
  KEY `shared` (`shared`),
  KEY `ordering` (`ordering`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Product Categories are stored here' AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `iw0sl_virtuemart_categories`
--

INSERT INTO `iw0sl_virtuemart_categories` (`virtuemart_category_id`, `virtuemart_vendor_id`, `category_template`, `category_layout`, `category_product_layout`, `products_per_row`, `limit_list_step`, `limit_list_initial`, `hits`, `metarobot`, `metaauthor`, `ordering`, `shared`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1, 1, '0', '0', '0', 0, '0', 0, 0, '', '', 0, 0, 1, '2016-08-23 08:00:19', 41, '2016-08-23 08:00:19', 41, '0000-00-00 00:00:00', 0),
(2, 1, '0', '0', '0', 0, '0', 0, 0, '', '', 0, 0, 1, '2016-08-23 08:00:39', 41, '2016-08-23 08:00:39', 41, '0000-00-00 00:00:00', 0),
(3, 1, '0', '0', '0', 0, '0', 0, 0, '', '', 0, 0, 1, '2016-08-23 08:00:54', 41, '2016-08-23 08:00:54', 41, '0000-00-00 00:00:00', 0),
(4, 1, '0', '0', '0', 0, '0', 0, 0, '', '', 0, 0, 1, '2016-08-23 08:01:09', 41, '2016-08-23 08:01:09', 41, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_virtuemart_categories_ru_ru`
--

CREATE TABLE IF NOT EXISTS `iw0sl_virtuemart_categories_ru_ru` (
  `virtuemart_category_id` int(1) unsigned NOT NULL,
  `category_name` varchar(180) NOT NULL DEFAULT '',
  `category_description` varchar(19000) NOT NULL DEFAULT '',
  `metadesc` varchar(400) NOT NULL DEFAULT '',
  `metakey` varchar(400) NOT NULL DEFAULT '',
  `customtitle` varchar(255) NOT NULL DEFAULT '',
  `slug` varchar(192) NOT NULL DEFAULT '',
  PRIMARY KEY (`virtuemart_category_id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `iw0sl_virtuemart_categories_ru_ru`
--

INSERT INTO `iw0sl_virtuemart_categories_ru_ru` (`virtuemart_category_id`, `category_name`, `category_description`, `metadesc`, `metakey`, `customtitle`, `slug`) VALUES
(1, 'Мебель', '', '', '', '', 'мебель'),
(2, 'Оборудование', '', '', '', '', 'оборудование'),
(3, 'Учебные материалы и пособия', '', '', '', '', 'учебные-материалы-и-пособия'),
(4, 'Канцелярия', '', '', '', '', 'канцелярия');

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_virtuemart_category_categories`
--

CREATE TABLE IF NOT EXISTS `iw0sl_virtuemart_category_categories` (
  `id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `category_parent_id` int(1) unsigned NOT NULL DEFAULT '0',
  `category_child_id` int(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `category_parent_id` (`category_parent_id`,`category_child_id`),
  KEY `category_child_id` (`category_child_id`),
  KEY `ordering` (`ordering`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Category child-parent relation list' AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `iw0sl_virtuemart_category_categories`
--

INSERT INTO `iw0sl_virtuemart_category_categories` (`id`, `category_parent_id`, `category_child_id`, `ordering`) VALUES
(1, 0, 1, 0),
(2, 0, 2, 0),
(3, 0, 3, 0),
(4, 0, 4, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_virtuemart_category_medias`
--

CREATE TABLE IF NOT EXISTS `iw0sl_virtuemart_category_medias` (
  `id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_category_id` int(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_media_id` int(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `virtuemart_category_id` (`virtuemart_category_id`,`virtuemart_media_id`),
  KEY `ordering` (`ordering`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_virtuemart_configs`
--

CREATE TABLE IF NOT EXISTS `iw0sl_virtuemart_configs` (
  `virtuemart_config_id` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,
  `config` text,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_config_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Holds configuration settings' AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `iw0sl_virtuemart_configs`
--

INSERT INTO `iw0sl_virtuemart_configs` (`virtuemart_config_id`, `config`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1, 'useSSL="0"|dangeroustools="0"|debug_enable="none"|vmdev="none"|google_jquery="0"|multix="none"|usefancy="1"|jchosen="1"|enableEnglish="1"|shop_is_offline="0"|offline_message="Our Shop is currently down for maintenance. Please check back again soon."|use_as_catalog="0"|currency_converter_module="convertECB.php"|order_mail_html="1"|useVendorEmail="0"|pdf_button_enable="1"|show_emailfriend="0"|show_printicon="1"|show_out_of_stock_products="1"|ask_captcha="1"|coupons_enable="1"|show_uncat_products="0"|show_uncat_child_products="0"|show_unpub_cat_products="1"|coupons_default_expire="1,M"|weight_unit_default="KG"|lwh_unit_default="M"|list_limit="30"|showReviewFor="all"|reviewMode="bought"|showRatingFor="all"|ratingMode="bought"|reviews_autopublish="1"|reviews_minimum_comment_length="0"|reviews_maximum_comment_length="2000"|product_navigation="1"|display_stock="1"|vmtemplate="default"|categorytemplate="default"|showCategory="1"|categorylayout="0"|categories_per_row="3"|productlayout="0"|products_per_row="3"|llimit_init_FE="24"|vmlayout="0"|show_store_desc="1"|show_categories="1"|homepage_categories_per_row="3"|homepage_products_per_row="3"|show_featured="1"|featured_products_rows="1"|show_topTen="1"|topTen_products_rows="1"|show_recent="1"|recent_products_rows="1"|show_latest="1"|latest_products_rows="1"|assets_general_path="components\\/com_virtuemart\\/assets\\/"|media_category_path="images\\/stories\\/virtuemart\\/category\\/"|media_product_path="images\\/stories\\/virtuemart\\/product\\/"|media_manufacturer_path="images\\/stories\\/virtuemart\\/manufacturer\\/"|media_vendor_path="images\\/stories\\/virtuemart\\/vendor\\/"|forSale_path_thumb="images\\/stories\\/virtuemart\\/forSale\\/resized\\/"|img_resize_enable="1"|img_width="231"|img_height="174"|no_image_set="noimage.gif"|no_image_found="warning.png"|browse_orderby_field="pc.ordering"|browse_cat_orderby_field="c.ordering,category_name"|browse_orderby_fields=["product_name","`p`.product_sku","category_name","mf_name","pc.ordering"]|browse_search_fields=["product_name","`p`.product_sku","product_s_desc","product_desc","category_name","category_description","mf_name"]|askprice="1"|roundindig="1"|show_prices="1"|price_show_packaging_pricelabel="0"|show_tax="1"|basePrice="0"|basePriceText="1"|basePriceRounding="-1"|variantModification="0"|variantModificationText="1"|variantModificationRounding="-1"|basePriceVariant="1"|basePriceVariantText="1"|basePriceVariantRounding="-1"|basePriceWithTax="0"|basePriceWithTaxText="1"|basePriceWithTaxRounding="-1"|discountedPriceWithoutTax="1"|discountedPriceWithoutTaxText="1"|discountedPriceWithoutTaxRounding="-1"|salesPriceWithDiscount="0"|salesPriceWithDiscountText="1"|salesPriceWithDiscountRounding="-1"|salesPrice="1"|salesPriceText="1"|salesPriceRounding="-1"|priceWithoutTax="1"|priceWithoutTaxText="1"|priceWithoutTaxRounding="-1"|discountAmount="1"|discountAmountText="1"|discountAmountRounding="-1"|taxAmount="1"|taxAmountText="1"|taxAmountRounding="-1"|unitPrice="1"|unitPriceText="1"|unitPriceRounding="-1"|addtocart_popup="1"|check_stock="0"|automatic_payment="0"|automatic_shipment="0"|oncheckout_opc="1"|oncheckout_ajax="1"|oncheckout_show_steps="0"|oncheckout_show_legal_info="1"|oncheckout_show_register="1"|oncheckout_show_register_text="COM_VIRTUEMART_ONCHECKOUT_DEFAULT_TEXT_REGISTER"|oncheckout_show_images="1"|inv_os=["C"]|email_os_s=["U","C","X","R","S"]|email_os_v=["U","C","X","R"]|seo_disabled="0"|seo_translate="0"|seo_use_id="0"|enable_content_plugin="0"|reg_captcha="0"|handle_404="1"|active_languages=["ru-RU"]|revproxvar=""|multixcart="0"|attach=""|attach_os=["U","C","X","R"]|pdf_icon="0"|recommend_unauth="0"|ask_question="0"|asks_minimum_comment_length="50"|asks_maximum_comment_length="2000"|cp_rm=["C"]|show_pcustoms="1"|show_uncat_parent_products="0"|latest_products_days="7"|latest_products_orderBy="created_on"|lstockmail="0"|stockhandle="none"|rised_availability=""|image=""|rr_os=["C"]|show_manufacturers="1"|cartlayout="default"|productsublayout="0"|manufacturer_per_row="3"|mediaLimit="20"|llimit_init_BE="30"|pagseq=""|pagseq_1=""|pagseq_2=""|pagseq_3=""|pagseq_4=""|pagseq_5=""|feed_cat_published="0"|feed_cat_show_images="0"|feed_cat_show_prices="0"|feed_cat_show_description="0"|feed_cat_description_type="product_s_desc"|feed_cat_max_text_length="500"|forSale_path="Z:\\\\home\\\\school\\\\vmfiles\\\\"|add_img_main="0"|feed_latest_published="0"|feed_latest_nb="5"|feed_topten_published="0"|feed_topten_nb="5"|feed_featured_published="0"|feed_featured_nb="5"|feed_home_show_images="1"|feed_home_show_prices="1"|feed_home_show_description="0"|feed_home_description_type="product_s_desc"|feed_home_max_text_length="500"|css="1"|jquery="1"|jprice="1"|jsite="1"|jdynupdate="1"|rappenrundung="0"|cVarswT="1"|popup_rel="1"|set_automatic_shipment="0"|set_automatic_payment="0"|agree_to_tos_onorder="1"|oncheckout_only_registered="0"|oncheckout_change_shopper="1"|del_date_type="m"|prd_brws_orderby_dir="ASC"|cat_brws_orderby_dir="ASC"|use_seo_suffix="1"|seo_sufix="-detail"|seo_full="1"|task="apply"|option="com_virtuemart"|view="config"|e313c1fedb5ef282d69034372e169ee3="1"', '0000-00-00 00:00:00', 0, '2016-08-23 10:36:55', 41, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_virtuemart_countries`
--

CREATE TABLE IF NOT EXISTS `iw0sl_virtuemart_countries` (
  `virtuemart_country_id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_worldzone_id` tinyint(1) NOT NULL DEFAULT '1',
  `country_name` char(64) DEFAULT NULL,
  `country_3_code` char(3) DEFAULT NULL,
  `country_2_code` char(2) DEFAULT NULL,
  `ordering` int(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_country_id`),
  KEY `country_3_code` (`country_3_code`),
  KEY `country_2_code` (`country_2_code`),
  KEY `country_name` (`country_name`),
  KEY `ordering` (`ordering`),
  KEY `published` (`published`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Country records' AUTO_INCREMENT=249 ;

--
-- Дамп данных таблицы `iw0sl_virtuemart_countries`
--

INSERT INTO `iw0sl_virtuemart_countries` (`virtuemart_country_id`, `virtuemart_worldzone_id`, `country_name`, `country_3_code`, `country_2_code`, `ordering`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1, 1, 'Afghanistan', 'AFG', 'AF', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(2, 1, 'Albania', 'ALB', 'AL', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(3, 1, 'Algeria', 'DZA', 'DZ', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(4, 1, 'American Samoa', 'ASM', 'AS', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(5, 1, 'Andorra', 'AND', 'AD', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(6, 1, 'Angola', 'AGO', 'AO', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(7, 1, 'Anguilla', 'AIA', 'AI', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(8, 1, 'Antarctica', 'ATA', 'AQ', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(9, 1, 'Antigua and Barbuda', 'ATG', 'AG', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(10, 1, 'Argentina', 'ARG', 'AR', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(11, 1, 'Armenia', 'ARM', 'AM', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(12, 1, 'Aruba', 'ABW', 'AW', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(13, 1, 'Australia', 'AUS', 'AU', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(14, 1, 'Austria', 'AUT', 'AT', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(15, 1, 'Azerbaijan', 'AZE', 'AZ', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(16, 1, 'Bahamas', 'BHS', 'BS', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(17, 1, 'Bahrain', 'BHR', 'BH', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(18, 1, 'Bangladesh', 'BGD', 'BD', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(19, 1, 'Barbados', 'BRB', 'BB', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(20, 1, 'Belarus', 'BLR', 'BY', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(21, 1, 'Belgium', 'BEL', 'BE', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(22, 1, 'Belize', 'BLZ', 'BZ', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(23, 1, 'Benin', 'BEN', 'BJ', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(24, 1, 'Bermuda', 'BMU', 'BM', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(25, 1, 'Bhutan', 'BTN', 'BT', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(26, 1, 'Bolivia', 'BOL', 'BO', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(27, 1, 'Bosnia and Herzegowina', 'BIH', 'BA', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(28, 1, 'Botswana', 'BWA', 'BW', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(29, 1, 'Bouvet Island', 'BVT', 'BV', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(30, 1, 'Brazil', 'BRA', 'BR', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(31, 1, 'British Indian Ocean Territory', 'IOT', 'IO', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(32, 1, 'Brunei Darussalam', 'BRN', 'BN', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(33, 1, 'Bulgaria', 'BGR', 'BG', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(34, 1, 'Burkina Faso', 'BFA', 'BF', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(35, 1, 'Burundi', 'BDI', 'BI', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(36, 1, 'Cambodia', 'KHM', 'KH', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(37, 1, 'Cameroon', 'CMR', 'CM', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(38, 1, 'Canada', 'CAN', 'CA', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(39, 1, 'Cape Verde', 'CPV', 'CV', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(40, 1, 'Cayman Islands', 'CYM', 'KY', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(41, 1, 'Central African Republic', 'CAF', 'CF', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(42, 1, 'Chad', 'TCD', 'TD', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(43, 1, 'Chile', 'CHL', 'CL', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(44, 1, 'China', 'CHN', 'CN', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(45, 1, 'Christmas Island', 'CXR', 'CX', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(46, 1, 'Cocos (Keeling) Islands', 'CCK', 'CC', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(47, 1, 'Colombia', 'COL', 'CO', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(48, 1, 'Comoros', 'COM', 'KM', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(49, 1, 'Congo', 'COG', 'CG', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(50, 1, 'Cook Islands', 'COK', 'CK', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(51, 1, 'Costa Rica', 'CRI', 'CR', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(52, 1, 'Cote D''Ivoire', 'CIV', 'CI', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(53, 1, 'Croatia', 'HRV', 'HR', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(54, 1, 'Cuba', 'CUB', 'CU', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(55, 1, 'Cyprus', 'CYP', 'CY', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(56, 1, 'Czech Republic', 'CZE', 'CZ', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(57, 1, 'Denmark', 'DNK', 'DK', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(58, 1, 'Djibouti', 'DJI', 'DJ', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(59, 1, 'Dominica', 'DMA', 'DM', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(60, 1, 'Dominican Republic', 'DOM', 'DO', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(61, 1, 'East Timor', 'TLS', 'TL', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(62, 1, 'Ecuador', 'ECU', 'EC', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(63, 1, 'Egypt', 'EGY', 'EG', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(64, 1, 'El Salvador', 'SLV', 'SV', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(65, 1, 'Equatorial Guinea', 'GNQ', 'GQ', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(66, 1, 'Eritrea', 'ERI', 'ER', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(67, 1, 'Estonia', 'EST', 'EE', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(68, 1, 'Ethiopia', 'ETH', 'ET', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(69, 1, 'Falkland Islands (Malvinas)', 'FLK', 'FK', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(70, 1, 'Faroe Islands', 'FRO', 'FO', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(71, 1, 'Fiji', 'FJI', 'FJ', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(72, 1, 'Finland', 'FIN', 'FI', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(73, 1, 'France', 'FRA', 'FR', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(75, 1, 'French Guiana', 'GUF', 'GF', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(76, 1, 'French Polynesia', 'PYF', 'PF', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(77, 1, 'French Southern Territories', 'ATF', 'TF', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(78, 1, 'Gabon', 'GAB', 'GA', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(79, 1, 'Gambia', 'GMB', 'GM', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(80, 1, 'Georgia', 'GEO', 'GE', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(81, 1, 'Germany', 'DEU', 'DE', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(82, 1, 'Ghana', 'GHA', 'GH', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(83, 1, 'Gibraltar', 'GIB', 'GI', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(84, 1, 'Greece', 'GRC', 'GR', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(85, 1, 'Greenland', 'GRL', 'GL', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(86, 1, 'Grenada', 'GRD', 'GD', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(87, 1, 'Guadeloupe', 'GLP', 'GP', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(88, 1, 'Guam', 'GUM', 'GU', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(89, 1, 'Guatemala', 'GTM', 'GT', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(90, 1, 'Guinea', 'GIN', 'GN', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(91, 1, 'Guinea-bissau', 'GNB', 'GW', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(92, 1, 'Guyana', 'GUY', 'GY', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(93, 1, 'Haiti', 'HTI', 'HT', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(94, 1, 'Heard and Mc Donald Islands', 'HMD', 'HM', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(95, 1, 'Honduras', 'HND', 'HN', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(96, 1, 'Hong Kong', 'HKG', 'HK', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(97, 1, 'Hungary', 'HUN', 'HU', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(98, 1, 'Iceland', 'ISL', 'IS', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(99, 1, 'India', 'IND', 'IN', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(100, 1, 'Indonesia', 'IDN', 'ID', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(101, 1, 'Iran (Islamic Republic of)', 'IRN', 'IR', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(102, 1, 'Iraq', 'IRQ', 'IQ', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(103, 1, 'Ireland', 'IRL', 'IE', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(104, 1, 'Israel', 'ISR', 'IL', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(105, 1, 'Italy', 'ITA', 'IT', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(106, 1, 'Jamaica', 'JAM', 'JM', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(107, 1, 'Japan', 'JPN', 'JP', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(108, 1, 'Jordan', 'JOR', 'JO', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(109, 1, 'Kazakhstan', 'KAZ', 'KZ', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(110, 1, 'Kenya', 'KEN', 'KE', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(111, 1, 'Kiribati', 'KIR', 'KI', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(112, 1, 'Korea, Democratic People''s Republic of', 'PRK', 'KP', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(113, 1, 'Korea, Republic of', 'KOR', 'KR', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(114, 1, 'Kuwait', 'KWT', 'KW', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(115, 1, 'Kyrgyzstan', 'KGZ', 'KG', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(116, 1, 'Lao People''s Democratic Republic', 'LAO', 'LA', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(117, 1, 'Latvia', 'LVA', 'LV', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(118, 1, 'Lebanon', 'LBN', 'LB', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(119, 1, 'Lesotho', 'LSO', 'LS', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(120, 1, 'Liberia', 'LBR', 'LR', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(121, 1, 'Libya', 'LBY', 'LY', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(122, 1, 'Liechtenstein', 'LIE', 'LI', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(123, 1, 'Lithuania', 'LTU', 'LT', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(124, 1, 'Luxembourg', 'LUX', 'LU', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(125, 1, 'Macau', 'MAC', 'MO', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(126, 1, 'Macedonia, The Former Yugoslav Republic of', 'MKD', 'MK', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(127, 1, 'Madagascar', 'MDG', 'MG', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(128, 1, 'Malawi', 'MWI', 'MW', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(129, 1, 'Malaysia', 'MYS', 'MY', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(130, 1, 'Maldives', 'MDV', 'MV', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(131, 1, 'Mali', 'MLI', 'ML', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(132, 1, 'Malta', 'MLT', 'MT', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(133, 1, 'Marshall Islands', 'MHL', 'MH', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(134, 1, 'Martinique', 'MTQ', 'MQ', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(135, 1, 'Mauritania', 'MRT', 'MR', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(136, 1, 'Mauritius', 'MUS', 'MU', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(137, 1, 'Mayotte', 'MYT', 'YT', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(138, 1, 'Mexico', 'MEX', 'MX', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(139, 1, 'Micronesia, Federated States of', 'FSM', 'FM', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(140, 1, 'Moldova, Republic of', 'MDA', 'MD', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(141, 1, 'Monaco', 'MCO', 'MC', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(142, 1, 'Mongolia', 'MNG', 'MN', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(143, 1, 'Montserrat', 'MSR', 'MS', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(144, 1, 'Morocco', 'MAR', 'MA', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(145, 1, 'Mozambique', 'MOZ', 'MZ', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(146, 1, 'Myanmar', 'MMR', 'MM', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(147, 1, 'Namibia', 'NAM', 'NA', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(148, 1, 'Nauru', 'NRU', 'NR', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(149, 1, 'Nepal', 'NPL', 'NP', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(150, 1, 'Netherlands', 'NLD', 'NL', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(151, 1, 'Netherlands Antilles', 'ANT', 'AN', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(152, 1, 'New Caledonia', 'NCL', 'NC', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(153, 1, 'New Zealand', 'NZL', 'NZ', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(154, 1, 'Nicaragua', 'NIC', 'NI', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(155, 1, 'Niger', 'NER', 'NE', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(156, 1, 'Nigeria', 'NGA', 'NG', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(157, 1, 'Niue', 'NIU', 'NU', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(158, 1, 'Norfolk Island', 'NFK', 'NF', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(159, 1, 'Northern Mariana Islands', 'MNP', 'MP', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(160, 1, 'Norway', 'NOR', 'NO', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(161, 1, 'Oman', 'OMN', 'OM', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(162, 1, 'Pakistan', 'PAK', 'PK', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(163, 1, 'Palau', 'PLW', 'PW', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(164, 1, 'Panama', 'PAN', 'PA', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(165, 1, 'Papua New Guinea', 'PNG', 'PG', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(166, 1, 'Paraguay', 'PRY', 'PY', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(167, 1, 'Peru', 'PER', 'PE', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(168, 1, 'Philippines', 'PHL', 'PH', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(169, 1, 'Pitcairn', 'PCN', 'PN', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(170, 1, 'Poland', 'POL', 'PL', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(171, 1, 'Portugal', 'PRT', 'PT', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(172, 1, 'Puerto Rico', 'PRI', 'PR', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(173, 1, 'Qatar', 'QAT', 'QA', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(174, 1, 'Reunion', 'REU', 'RE', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(175, 1, 'Romania', 'ROM', 'RO', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(176, 1, 'Russian Federation', 'RUS', 'RU', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(177, 1, 'Rwanda', 'RWA', 'RW', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(178, 1, 'Saint Kitts and Nevis', 'KNA', 'KN', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(179, 1, 'Saint Lucia', 'LCA', 'LC', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(180, 1, 'Saint Vincent and the Grenadines', 'VCT', 'VC', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(181, 1, 'Samoa', 'WSM', 'WS', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(182, 1, 'San Marino', 'SMR', 'SM', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(183, 1, 'Sao Tome and Principe', 'STP', 'ST', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(184, 1, 'Saudi Arabia', 'SAU', 'SA', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(185, 1, 'Senegal', 'SEN', 'SN', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(186, 1, 'Seychelles', 'SYC', 'SC', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(187, 1, 'Sierra Leone', 'SLE', 'SL', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(188, 1, 'Singapore', 'SGP', 'SG', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(189, 1, 'Slovakia', 'SVK', 'SK', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(190, 1, 'Slovenia', 'SVN', 'SI', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(191, 1, 'Solomon Islands', 'SLB', 'SB', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(192, 1, 'Somalia', 'SOM', 'SO', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(193, 1, 'South Africa', 'ZAF', 'ZA', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(194, 1, 'South Georgia and the South Sandwich Islands', 'SGS', 'GS', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(195, 1, 'Spain', 'ESP', 'ES', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(196, 1, 'Sri Lanka', 'LKA', 'LK', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(197, 1, 'St. Helena', 'SHN', 'SH', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(198, 1, 'St. Pierre and Miquelon', 'SPM', 'PM', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(199, 1, 'Sudan', 'SDN', 'SD', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(200, 1, 'Suriname', 'SUR', 'SR', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(201, 1, 'Svalbard and Jan Mayen Islands', 'SJM', 'SJ', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(202, 1, 'Swaziland', 'SWZ', 'SZ', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(203, 1, 'Sweden', 'SWE', 'SE', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(204, 1, 'Switzerland', 'CHE', 'CH', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(205, 1, 'Syrian Arab Republic', 'SYR', 'SY', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(206, 1, 'Taiwan', 'TWN', 'TW', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(207, 1, 'Tajikistan', 'TJK', 'TJ', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(208, 1, 'Tanzania, United Republic of', 'TZA', 'TZ', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(209, 1, 'Thailand', 'THA', 'TH', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(210, 1, 'Togo', 'TGO', 'TG', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(211, 1, 'Tokelau', 'TKL', 'TK', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(212, 1, 'Tonga', 'TON', 'TO', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(213, 1, 'Trinidad and Tobago', 'TTO', 'TT', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(214, 1, 'Tunisia', 'TUN', 'TN', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(215, 1, 'Turkey', 'TUR', 'TR', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(216, 1, 'Turkmenistan', 'TKM', 'TM', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(217, 1, 'Turks and Caicos Islands', 'TCA', 'TC', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(218, 1, 'Tuvalu', 'TUV', 'TV', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(219, 1, 'Uganda', 'UGA', 'UG', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(220, 1, 'Ukraine', 'UKR', 'UA', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(221, 1, 'United Arab Emirates', 'ARE', 'AE', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(222, 1, 'United Kingdom', 'GBR', 'GB', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(223, 1, 'United States', 'USA', 'US', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(224, 1, 'United States Minor Outlying Islands', 'UMI', 'UM', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(225, 1, 'Uruguay', 'URY', 'UY', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(226, 1, 'Uzbekistan', 'UZB', 'UZ', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(227, 1, 'Vanuatu', 'VUT', 'VU', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(228, 1, 'Vatican City State (Holy See)', 'VAT', 'VA', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(229, 1, 'Venezuela', 'VEN', 'VE', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(230, 1, 'Viet Nam', 'VNM', 'VN', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(231, 1, 'Virgin Islands (British)', 'VGB', 'VG', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(232, 1, 'Virgin Islands (U.S.)', 'VIR', 'VI', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(233, 1, 'Wallis and Futuna Islands', 'WLF', 'WF', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(234, 1, 'Western Sahara', 'ESH', 'EH', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(235, 1, 'Yemen', 'YEM', 'YE', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(237, 1, 'The Democratic Republic of Congo', 'RCB', 'CD', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(238, 1, 'Zambia', 'ZMB', 'ZM', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(239, 1, 'Zimbabwe', 'ZWE', 'ZW', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(241, 1, 'Jersey', 'JEY', 'JE', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(242, 1, 'St. Barthelemy', 'BLM', 'BL', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(243, 1, 'St. Eustatius', 'BES', 'BQ', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(244, 1, 'Canary Islands', 'XCA', 'IC', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(245, 1, 'Serbia', 'SRB', 'RS', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(246, 1, 'Sint Maarten (French Antilles)', 'MAF', 'MF', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(247, 1, 'Sint Maarten (Netherlands Antilles)', 'SXM', 'SX', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(248, 1, 'Palestinian Territory, occupied', 'PSE', 'PS', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_virtuemart_coupons`
--

CREATE TABLE IF NOT EXISTS `iw0sl_virtuemart_coupons` (
  `virtuemart_coupon_id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_vendor_id` int(1) unsigned NOT NULL,
  `coupon_code` char(32) NOT NULL DEFAULT '',
  `percent_or_total` enum('percent','total') NOT NULL DEFAULT 'percent',
  `coupon_type` enum('gift','permanent') NOT NULL DEFAULT 'gift',
  `coupon_value` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `coupon_start_date` datetime DEFAULT NULL,
  `coupon_expiry_date` datetime DEFAULT NULL,
  `coupon_value_valid` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `coupon_used` varchar(200) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_coupon_id`),
  KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`),
  KEY `coupon_code` (`coupon_code`),
  KEY `coupon_type` (`coupon_type`),
  KEY `published` (`published`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Used to store coupon codes' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_virtuemart_currencies`
--

CREATE TABLE IF NOT EXISTS `iw0sl_virtuemart_currencies` (
  `virtuemart_currency_id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_vendor_id` int(1) unsigned NOT NULL DEFAULT '1',
  `currency_name` char(64) DEFAULT NULL,
  `currency_code_2` char(2) DEFAULT NULL,
  `currency_code_3` char(3) DEFAULT NULL,
  `currency_numeric_code` int(4) DEFAULT NULL,
  `currency_exchange_rate` decimal(10,5) DEFAULT NULL,
  `currency_symbol` char(4) DEFAULT NULL,
  `currency_decimal_place` char(4) DEFAULT NULL,
  `currency_decimal_symbol` char(4) DEFAULT NULL,
  `currency_thousands` char(4) DEFAULT NULL,
  `currency_positive_style` char(64) DEFAULT NULL,
  `currency_negative_style` char(64) DEFAULT NULL,
  `ordering` int(1) NOT NULL DEFAULT '0',
  `shared` tinyint(1) NOT NULL DEFAULT '1',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_currency_id`),
  UNIQUE KEY `currency_code_3` (`currency_code_3`),
  KEY `ordering` (`ordering`),
  KEY `currency_name` (`currency_name`),
  KEY `published` (`published`),
  KEY `shared` (`shared`),
  KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`),
  KEY `currency_numeric_code` (`currency_numeric_code`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Used to store currencies' AUTO_INCREMENT=202 ;

--
-- Дамп данных таблицы `iw0sl_virtuemart_currencies`
--

INSERT INTO `iw0sl_virtuemart_currencies` (`virtuemart_currency_id`, `virtuemart_vendor_id`, `currency_name`, `currency_code_2`, `currency_code_3`, `currency_numeric_code`, `currency_exchange_rate`, `currency_symbol`, `currency_decimal_place`, `currency_decimal_symbol`, `currency_thousands`, `currency_positive_style`, `currency_negative_style`, `ordering`, `shared`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(2, 1, 'United Arab Emirates dirham', '', 'AED', 784, '0.00000', 'د.إ', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(4, 1, 'Albanian lek', '', 'ALL', 8, '0.00000', 'Lek', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(5, 1, 'Netherlands Antillean gulden', '', 'ANG', 532, '0.00000', 'ƒ', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(7, 1, 'Argentine peso', '', 'ARS', 32, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(9, 1, 'Australian dollar', '', 'AUD', 36, '0.00000', '$', '2', '.', '', '{symbol} {number}', '{sign}{symbol} {number}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(10, 1, 'Aruban florin', '', 'AWG', 533, '0.00000', 'ƒ', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(11, 1, 'Barbadian dollar', '', 'BBD', 52, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(12, 1, 'Bangladeshi taka', '', 'BDT', 50, '0.00000', '৳', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(15, 1, 'Bahraini dinar', '', 'BHD', 48, '0.00000', 'ب.د', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(16, 1, 'Burundian franc', '', 'BIF', 108, '0.00000', 'Fr', '0', '', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(17, 1, 'Bermudian dollar', '', 'BMD', 60, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(18, 1, 'Brunei dollar', '', 'BND', 96, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(19, 1, 'Bolivian boliviano', '', 'BOB', 68, '0.00000', '$b', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(20, 1, 'Brazilian real', '', 'BRL', 986, '0.00000', 'R$', '2', ',', '.', '{symbol} {number}', '{symbol} {sign}{number}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(21, 1, 'Bahamian dollar', '', 'BSD', 44, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(22, 1, 'Bhutanese ngultrum', '', 'BTN', 64, '0.00000', 'BTN', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(24, 1, 'Botswana pula', '', 'BWP', 72, '0.00000', 'P', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(25, 1, 'Belize dollar', '', 'BZD', 84, '0.00000', 'BZ$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(26, 1, 'Canadian dollar', '', 'CAD', 124, '0.00000', '$', '2', '.', ',', '{symbol}{number}', '{symbol}{sign}{number}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(27, 1, 'Swiss franc', '', 'CHF', 756, '0.00000', 'CHF', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(28, 1, 'Unidad de Fomento', '', 'CLF', 990, '0.00000', 'CLF', '0', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(29, 1, 'Chilean peso', '', 'CLP', 152, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(30, 1, 'Chinese renminbi yuan', '', 'CNY', 156, '0.00000', '元', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(31, 1, 'Colombian peso', '', 'COP', 170, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(32, 1, 'Costa Rican colón', '', 'CRC', 188, '0.00000', '₡', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(33, 1, 'Czech koruna', '', 'CZK', 203, '0.00000', 'Kč', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(34, 1, 'Cuban peso', '', 'CUP', 192, '0.00000', '₱', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(35, 1, 'Cape Verdean escudo', '', 'CVE', 132, '0.00000', '$', '0', '', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(40, 1, 'Danish krone', '', 'DKK', 208, '0.00000', 'kr', '2', '.', ',', '{symbol}{number}', '{symbol}{sign}{number}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(41, 1, 'Dominican peso', '', 'DOP', 214, '0.00000', 'RD$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(42, 1, 'Algerian dinar', '', 'DZD', 12, '0.00000', 'د.ج', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(44, 1, 'Egyptian pound', '', 'EGP', 818, '0.00000', '£', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(46, 1, 'Ethiopian birr', '', 'ETB', 230, '0.00000', 'ETB', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(47, 1, 'Euro', '', 'EUR', 978, '0.00000', '€', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(49, 1, 'Fijian dollar', '', 'FJD', 242, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(50, 1, 'Falkland pound', '', 'FKP', 238, '0.00000', '£', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(52, 1, 'British pound', '', 'GBP', 826, '0.00000', '£', '2', '.', ',', '{symbol}{number}', '{symbol}{sign}{number}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(54, 1, 'Gibraltar pound', '', 'GIP', 292, '0.00000', '£', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(55, 1, 'Gambian dalasi', '', 'GMD', 270, '0.00000', 'D', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(56, 1, 'Guinean franc', '', 'GNF', 324, '0.00000', 'Fr', '0', '', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(58, 1, 'Guatemalan quetzal', '', 'GTQ', 320, '0.00000', 'Q', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(60, 1, 'Guyanese dollar', '', 'GYD', 328, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(61, 1, 'Hong Kong dollar', '', 'HKD', 344, '0.00000', '元', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(62, 1, 'Honduran lempira', '', 'HNL', 340, '0.00000', 'L', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(63, 1, 'Haitian gourde', '', 'HTG', 332, '0.00000', 'G', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(64, 1, 'Hungarian forint', '', 'HUF', 348, '0.00000', 'Ft', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(65, 1, 'Indonesian rupiah', '', 'IDR', 360, '0.00000', 'Rp', '0', '', '', '{symbol}{number}', '{symbol}{sign}{number}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(67, 1, 'Israeli new sheqel', '', 'ILS', 376, '0.00000', '₪', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(68, 1, 'Indian rupee', '', 'INR', 356, '0.00000', '₨', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(69, 1, 'Iraqi dinar', '', 'IQD', 368, '0.00000', 'ع.د', '0', '', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(70, 1, 'Iranian rial', '', 'IRR', 364, '0.00000', '﷼', '2', ',', '', '{number} {symbol}', '{sign}{number}{symb0l}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(73, 1, 'Jamaican dollar', '', 'JMD', 388, '0.00000', 'J$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(74, 1, 'Jordanian dinar', '', 'JOD', 400, '0.00000', 'د.ا', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(75, 1, 'Japanese yen', '', 'JPY', 392, '0.00000', '¥', '0', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(76, 1, 'Kenyan shilling', '', 'KES', 404, '0.00000', 'Sh', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(77, 1, 'Cambodian riel', '', 'KHR', 116, '0.00000', '៛', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(78, 1, 'Comorian franc', '', 'KMF', 174, '0.00000', 'Fr', '0', '', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(79, 1, 'North Korean won', '', 'KPW', 408, '0.00000', '₩', '0', '', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(80, 1, 'South Korean won', '', 'KRW', 410, '0.00000', '₩', '0', '', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(81, 1, 'Kuwaiti dinar', '', 'KWD', 414, '0.00000', 'د.ك', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(82, 1, 'Cayman Islands dollar', '', 'KYD', 136, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(83, 1, 'Lao kip', '', 'LAK', 418, '0.00000', '₭', '0', '', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(84, 1, 'Lebanese pound', '', 'LBP', 422, '0.00000', '£', '0', '', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(85, 1, 'Sri Lankan rupee', '', 'LKR', 144, '0.00000', '₨', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(86, 1, 'Liberian dollar', '', 'LRD', 430, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(87, 1, 'Lesotho loti', '', 'LSL', 426, '0.00000', 'L', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(89, 1, 'Libyan dinar', '', 'LYD', 434, '0.00000', 'ل.د', '3', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(90, 1, 'Moroccan dirham', '', 'MAD', 504, '0.00000', 'د.م.', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(92, 1, 'Mongolian tögrög', '', 'MNT', 496, '0.00000', '₮', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(93, 1, 'Macanese pataca', '', 'MOP', 446, '0.00000', 'P', '1', ',', '', '{symbol}{number}', '{symbol}{sign}{number}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(94, 1, 'Mauritanian ouguiya', '', 'MRO', 478, '0.00000', 'UM', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(96, 1, 'Mauritian rupee', '', 'MUR', 480, '0.00000', '₨', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(97, 1, 'Maldivian rufiyaa', '', 'MVR', 462, '0.00000', 'ރ.', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(98, 1, 'Malawian kwacha', '', 'MWK', 454, '0.00000', 'MK', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(100, 1, 'Malaysian ringgit', '', 'MYR', 458, '0.00000', 'RM', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(102, 1, 'Nigerian naira', '', 'NGN', 566, '0.00000', '₦', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(105, 1, 'Norwegian krone', '', 'NOK', 578, '0.00000', 'kr', '2', ',', '', '{symbol}{number}', '{symbol}{sign}{number}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(106, 1, 'Nepalese rupee', '', 'NPR', 524, '0.00000', '₨', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(107, 1, 'New Zealand dollar', '', 'NZD', 554, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{symbol}{sign}{number}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(108, 1, 'Omani rial', '', 'OMR', 512, '0.00000', '﷼', '3', '.', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(109, 1, 'Panamanian balboa', '', 'PAB', 590, '0.00000', 'B/.', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(110, 1, 'Peruvian nuevo sol', '', 'PEN', 604, '0.00000', 'S/.', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(111, 1, 'Papua New Guinean kina', '', 'PGK', 598, '0.00000', 'K', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(112, 1, 'Philippine peso', '', 'PHP', 608, '0.00000', '₱', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(113, 1, 'Pakistani rupee', '', 'PKR', 586, '0.00000', '₨', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(114, 1, 'Polish Złoty', '', 'PLN', 985, '0.00000', 'zł', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(116, 1, 'Paraguayan guaraní', '', 'PYG', 600, '0.00000', '₲', '0', '', '.', '{symbol} {number}', '{symbol} {sign}{number}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(117, 1, 'Qatari riyal', '', 'QAR', 634, '0.00000', '﷼', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(118, 1, 'Romanian leu', '', 'RON', 946, '0.00000', 'lei', '2', ',', '.', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(119, 1, 'Rwandan franc', '', 'RWF', 646, '0.00000', 'Fr', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(120, 1, 'Saudi riyal', '', 'SAR', 682, '0.00000', '﷼', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(121, 1, 'Solomon Islands dollar', '', 'SBD', 90, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(122, 1, 'Seychellois rupee', '', 'SCR', 690, '0.00000', '₨', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(124, 1, 'Swedish krona', '', 'SEK', 752, '0.00000', 'kr', '2', ',', '.', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(125, 1, 'Singapore dollar', '', 'SGD', 702, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(126, 1, 'Saint Helenian pound', '', 'SHP', 654, '0.00000', '£', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(127, 1, 'Sierra Leonean leone', '', 'SLL', 694, '0.00000', 'Le', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(128, 1, 'Somali shilling', '', 'SOS', 706, '0.00000', 'S', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(130, 1, 'São Tomé and Príncipe dobra', '', 'STD', 678, '0.00000', 'Db', '0', '', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(131, 1, 'Russian ruble', '', 'RUB', 643, '0.00000', 'руб', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(132, 1, 'Salvadoran colón', '', 'SVC', 222, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(133, 1, 'Syrian pound', '', 'SYP', 760, '0.00000', '£', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(134, 1, 'Swazi lilangeni', '', 'SZL', 748, '0.00000', 'L', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(135, 1, 'Thai baht', '', 'THB', 764, '0.00000', '฿', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(136, 1, 'Tunisian dinar', '', 'TND', 788, '0.00000', 'د.ت', '3', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(137, 1, 'Tongan paʻanga', '', 'TOP', 776, '0.00000', 'T$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(139, 1, 'Türk Lirası', '', 'TRY', 949, '0.00000', 'TL', '2', ',', '.', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(140, 1, 'Trinidad and Tobago dollar', '', 'TTD', 780, '0.00000', 'TT$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(141, 1, 'New Taiwan dollar', '', 'TWD', 901, '0.00000', 'NT$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(142, 1, 'Tanzanian shilling', '', 'TZS', 834, '0.00000', 'Sh', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(144, 1, 'United States dollar', '', 'USD', 840, '0.00000', '$', '2', '.', ',', '{symbol}{number}', '{symbol}{sign}{number}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(147, 1, 'Vietnamese Dong', '', 'VND', 704, '0.00000', '₫', '0', '', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(148, 1, 'Vanuatu vatu', '', 'VUV', 548, '0.00000', 'Vt', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(149, 1, 'Samoan tala', '', 'WST', 882, '0.00000', 'T', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(151, 1, 'Yemeni rial', '', 'YER', 886, '0.00000', '﷼', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(152, 1, 'Serbian dinar', '', 'RSD', 941, '0.00000', 'Дин.', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(153, 1, 'South African rand', '', 'ZAR', 710, '0.00000', 'R', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(154, 1, 'Zambian kwacha', '', 'ZMK', 894, '0.00000', 'ZK', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(156, 1, 'Zimbabwean dollar', '', 'ZWD', 932, '0.00000', 'Z$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(158, 1, 'Armenian dram', '', 'AMD', 51, '0.00000', 'դր.', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(159, 1, 'Myanmar kyat', '', 'MMK', 104, '0.00000', 'K', '2', ',', '', '{number} {symbol}', '{symbol} {sign}{number}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(160, 1, 'Croatian kuna', '', 'HRK', 191, '0.00000', 'kn', '2', ',', '.', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(161, 1, 'Eritrean nakfa', '', 'ERN', 232, '0.00000', 'Nfk', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(162, 1, 'Djiboutian franc', '', 'DJF', 262, '0.00000', 'Fr', '0', '', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(163, 1, 'Icelandic króna', '', 'ISK', 352, '0.00000', 'kr', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(164, 1, 'Kazakhstani tenge', '', 'KZT', 398, '0.00000', 'лв', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(165, 1, 'Kyrgyzstani som', '', 'KGS', 417, '0.00000', 'лв', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(166, 1, 'Latvian lats', '', 'LVL', 428, '0.00000', 'Ls', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(167, 1, 'Lithuanian litas', '', 'LTL', 440, '0.00000', 'Lt', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(168, 1, 'Mexican peso', '', 'MXN', 484, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(169, 1, 'Moldovan leu', '', 'MDL', 498, '0.00000', 'L', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(170, 1, 'Namibian dollar', '', 'NAD', 516, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(171, 1, 'Nicaraguan córdoba', '', 'NIO', 558, '0.00000', 'C$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(172, 1, 'Ugandan shilling', '', 'UGX', 800, '0.00000', 'Sh', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(173, 1, 'Macedonian denar', '', 'MKD', 807, '0.00000', 'ден', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(174, 1, 'Uruguayan peso', '', 'UYU', 858, '0.00000', '$', '0', '', '', '{symbol}number}', '{symbol}{sign}{number}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(175, 1, 'Uzbekistani som', '', 'UZS', 860, '0.00000', 'лв', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(176, 1, 'Azerbaijani manat', '', 'AZN', 934, '0.00000', 'ман', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(177, 1, 'Ghanaian cedi', '', 'GHS', 936, '0.00000', '₵', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(178, 1, 'Venezuelan bolívar', '', 'VEF', 937, '0.00000', 'Bs', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(179, 1, 'Sudanese pound', '', 'SDG', 938, '0.00000', '£', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(180, 1, 'Uruguay Peso', '', 'UYI', 940, '0.00000', 'UYI', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(181, 1, 'Mozambican metical', '', 'MZN', 943, '0.00000', 'MT', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(182, 1, 'WIR Euro', '', 'CHE', 947, '0.00000', '€', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(183, 1, 'WIR Franc', '', 'CHW', 948, '0.00000', 'CHW', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(184, 1, 'Central African CFA franc', '', 'XAF', 950, '0.00000', 'Fr', '0', '', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(185, 1, 'East Caribbean dollar', '', 'XCD', 951, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(186, 1, 'West African CFA franc', '', 'XOF', 952, '0.00000', 'Fr', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(187, 1, 'CFP franc', '', 'XPF', 953, '0.00000', 'Fr', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(188, 1, 'Surinamese dollar', '', 'SRD', 968, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(189, 1, 'Malagasy ariary', '', 'MGA', 969, '0.00000', 'MGA', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(190, 1, 'Unidad de Valor Real', '', 'COU', 970, '0.00000', 'COU', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(191, 1, 'Afghan afghani', '', 'AFN', 971, '0.00000', '؋', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(192, 1, 'Tajikistani somoni', '', 'TJS', 972, '0.00000', 'ЅМ', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(193, 1, 'Angolan kwanza', '', 'AOA', 973, '0.00000', 'Kz', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(194, 1, 'Belarusian ruble', '', 'BYR', 974, '0.00000', 'p.', '0', '', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(195, 1, 'Bulgarian lev', '', 'BGN', 975, '0.00000', 'лв', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(196, 1, 'Congolese franc', '', 'CDF', 976, '0.00000', 'Fr', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(197, 1, 'Bosnia and Herzegovina convert', '', 'BAM', 977, '0.00000', 'KM', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(198, 1, 'Mexican Unid', '', 'MXV', 979, '0.00000', 'MXV', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(199, 1, 'Ukrainian hryvnia', '', 'UAH', 980, '0.00000', '₴', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(200, 1, 'Georgian lari', '', 'GEL', 981, '0.00000', 'ლ', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(201, 1, 'Mvdol', '', 'BOV', 984, '0.00000', 'BOV', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_virtuemart_customs`
--

CREATE TABLE IF NOT EXISTS `iw0sl_virtuemart_customs` (
  `virtuemart_custom_id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `custom_parent_id` int(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_vendor_id` int(1) NOT NULL DEFAULT '1',
  `custom_jplugin_id` int(1) NOT NULL DEFAULT '0',
  `custom_element` varchar(50) NOT NULL DEFAULT '',
  `admin_only` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1:Display in admin only',
  `custom_title` varchar(255) NOT NULL DEFAULT '' COMMENT 'field title',
  `show_title` tinyint(1) NOT NULL DEFAULT '1',
  `custom_tip` varchar(255) NOT NULL DEFAULT '' COMMENT 'tip',
  `custom_value` varchar(2200) DEFAULT NULL COMMENT 'default value',
  `custom_desc` varchar(255) DEFAULT NULL COMMENT 'description or unit',
  `field_type` varchar(2) NOT NULL DEFAULT '0' COMMENT 'S:string,I:int,P:parent, B:bool,D:date,T:time,H:hidden',
  `is_list` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'list of values',
  `is_hidden` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1:hidden',
  `is_cart_attribute` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Add attributes to cart',
  `is_input` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Add input to cart',
  `layout_pos` varchar(24) DEFAULT NULL COMMENT 'Layout Position',
  `custom_params` varchar(17000) NOT NULL DEFAULT '',
  `shared` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'valid for all vendors?',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `ordering` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_custom_id`),
  KEY `custom_parent_id` (`custom_parent_id`),
  KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`),
  KEY `custom_element` (`custom_element`),
  KEY `field_type` (`field_type`),
  KEY `is_cart_attribute` (`is_cart_attribute`),
  KEY `is_input` (`is_input`),
  KEY `shared` (`shared`),
  KEY `published` (`published`),
  KEY `ordering` (`ordering`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='custom fields definition' AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `iw0sl_virtuemart_customs`
--

INSERT INTO `iw0sl_virtuemart_customs` (`virtuemart_custom_id`, `custom_parent_id`, `virtuemart_vendor_id`, `custom_jplugin_id`, `custom_element`, `admin_only`, `custom_title`, `show_title`, `custom_tip`, `custom_value`, `custom_desc`, `field_type`, `is_list`, `is_hidden`, `is_cart_attribute`, `is_input`, `layout_pos`, `custom_params`, `shared`, `published`, `created_on`, `created_by`, `ordering`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1, 0, 0, 0, '0', 0, 'COM_VIRTUEMART_RELATED_PRODUCTS', 1, 'COM_VIRTUEMART_RELATED_PRODUCTS_TIP', 'related_products', 'COM_VIRTUEMART_RELATED_PRODUCTS_DESC', 'R', 0, 0, 0, 0, 'related_products', 'wPrice="1"|wImage="1"|wDescr="1"|', 0, 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(2, 0, 0, 0, '0', 0, 'COM_VIRTUEMART_RELATED_CATEGORIES', 1, 'COM_VIRTUEMART_RELATED_CATEGORIES_TIP', 'related_categories', 'COM_VIRTUEMART_RELATED_CATEGORIES_DESC', 'Z', 0, 0, 0, 0, 'related_categories', 'wImage="1"|wDescr="1"|', 0, 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_virtuemart_invoices`
--

CREATE TABLE IF NOT EXISTS `iw0sl_virtuemart_invoices` (
  `virtuemart_invoice_id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_vendor_id` int(1) unsigned NOT NULL DEFAULT '1',
  `virtuemart_order_id` int(1) unsigned DEFAULT NULL,
  `invoice_number` varchar(64) DEFAULT NULL,
  `order_status` char(2) DEFAULT NULL,
  `xhtml` text,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_invoice_id`),
  UNIQUE KEY `invoice_number` (`invoice_number`,`virtuemart_vendor_id`),
  KEY `virtuemart_order_id` (`virtuemart_order_id`),
  KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='custom fields definition' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_virtuemart_manufacturercategories`
--

CREATE TABLE IF NOT EXISTS `iw0sl_virtuemart_manufacturercategories` (
  `virtuemart_manufacturercategories_id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_manufacturercategories_id`),
  KEY `published` (`published`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Manufacturers are assigned to these categories' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_virtuemart_manufacturercategories_ru_ru`
--

CREATE TABLE IF NOT EXISTS `iw0sl_virtuemart_manufacturercategories_ru_ru` (
  `virtuemart_manufacturercategories_id` int(1) unsigned NOT NULL,
  `mf_category_name` varchar(180) NOT NULL DEFAULT '',
  `mf_category_desc` varchar(19000) NOT NULL DEFAULT '',
  `slug` varchar(192) NOT NULL DEFAULT '',
  PRIMARY KEY (`virtuemart_manufacturercategories_id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_virtuemart_manufacturers`
--

CREATE TABLE IF NOT EXISTS `iw0sl_virtuemart_manufacturers` (
  `virtuemart_manufacturer_id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_manufacturercategories_id` int(1) DEFAULT NULL,
  `hits` int(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_manufacturer_id`),
  UNIQUE KEY `virtuemart_manufacturercategories_id` (`virtuemart_manufacturer_id`,`virtuemart_manufacturercategories_id`),
  KEY `published` (`published`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Manufacturers are those who deliver products' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_virtuemart_manufacturers_ru_ru`
--

CREATE TABLE IF NOT EXISTS `iw0sl_virtuemart_manufacturers_ru_ru` (
  `virtuemart_manufacturer_id` int(1) unsigned NOT NULL,
  `mf_name` varchar(180) NOT NULL DEFAULT '',
  `mf_email` varchar(255) NOT NULL DEFAULT '',
  `mf_desc` varchar(19000) NOT NULL DEFAULT '',
  `mf_url` varchar(255) NOT NULL DEFAULT '',
  `slug` varchar(192) NOT NULL DEFAULT '',
  PRIMARY KEY (`virtuemart_manufacturer_id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_virtuemart_manufacturer_medias`
--

CREATE TABLE IF NOT EXISTS `iw0sl_virtuemart_manufacturer_medias` (
  `id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_manufacturer_id` int(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_media_id` int(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `virtuemart_manufacturer_id` (`virtuemart_manufacturer_id`,`virtuemart_media_id`),
  KEY `ordering` (`ordering`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_virtuemart_medias`
--

CREATE TABLE IF NOT EXISTS `iw0sl_virtuemart_medias` (
  `virtuemart_media_id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_vendor_id` int(1) NOT NULL DEFAULT '1',
  `file_title` char(126) NOT NULL DEFAULT '',
  `file_description` char(254) NOT NULL DEFAULT '',
  `file_meta` char(254) NOT NULL DEFAULT '',
  `file_class` char(64) NOT NULL DEFAULT '',
  `file_mimetype` char(64) NOT NULL DEFAULT '',
  `file_type` char(32) NOT NULL DEFAULT '',
  `file_url` varchar(900) NOT NULL DEFAULT '',
  `file_url_thumb` varchar(900) NOT NULL DEFAULT '',
  `file_is_product_image` tinyint(1) NOT NULL DEFAULT '0',
  `file_is_downloadable` tinyint(1) NOT NULL DEFAULT '0',
  `file_is_forSale` tinyint(1) NOT NULL DEFAULT '0',
  `file_params` varchar(17000) NOT NULL DEFAULT '',
  `file_lang` varchar(500) NOT NULL DEFAULT '',
  `shared` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_media_id`),
  KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`),
  KEY `published` (`published`),
  KEY `file_type` (`file_type`),
  KEY `shared` (`shared`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Additional Images and Files which are assigned to products' AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `iw0sl_virtuemart_medias`
--

INSERT INTO `iw0sl_virtuemart_medias` (`virtuemart_media_id`, `virtuemart_vendor_id`, `file_title`, `file_description`, `file_meta`, `file_class`, `file_mimetype`, `file_type`, `file_url`, `file_url_thumb`, `file_is_product_image`, `file_is_downloadable`, `file_is_forSale`, `file_params`, `file_lang`, `shared`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1, 1, 'pop1.png', '', '', '', 'image/png', 'product', 'images/stories/virtuemart/product/pop1.png', '', 0, 0, 0, '', '', 0, 1, '2016-08-23 09:31:53', 41, '2016-08-23 10:25:43', 41, '0000-00-00 00:00:00', 0),
(2, 1, 'pop14.png', '', '', '', 'image/png', 'product', 'images/stories/virtuemart/product/pop14.png', '', 0, 0, 0, '', '', 0, 1, '2016-08-23 10:23:45', 41, '2016-08-23 10:25:05', 41, '0000-00-00 00:00:00', 0),
(3, 1, 'pop12.png', '', '', '', 'image/png', 'product', 'images/stories/virtuemart/product/pop12.png', '', 0, 0, 0, '', '', 0, 1, '2016-08-23 10:28:31', 41, '2016-08-23 10:28:47', 41, '0000-00-00 00:00:00', 0),
(4, 1, 'pop18.png', '', '', '', 'image/png', 'product', 'images/stories/virtuemart/product/pop18.png', '', 0, 0, 0, '', '', 0, 1, '2016-08-23 10:30:22', 41, '2016-08-23 10:30:22', 41, '0000-00-00 00:00:00', 0),
(5, 1, 'pop17.png', '', '', '', 'image/png', 'product', 'images/stories/virtuemart/product/pop17.png', '', 0, 0, 0, '', '', 0, 1, '2016-08-23 10:38:34', 41, '2016-08-23 10:39:09', 41, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_virtuemart_migration_oldtonew_ids`
--

CREATE TABLE IF NOT EXISTS `iw0sl_virtuemart_migration_oldtonew_ids` (
  `id` smallint(1) unsigned NOT NULL AUTO_INCREMENT,
  `cats` longblob,
  `catsxref` blob,
  `manus` longblob,
  `mfcats` blob,
  `shoppergroups` longblob,
  `products` longblob,
  `products_start` int(1) DEFAULT NULL,
  `orderstates` blob,
  `orders` longblob,
  `attributes` longblob,
  `relatedproducts` longblob,
  `orders_start` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='xref table for vm1 ids to vm2 ids' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_virtuemart_modules`
--

CREATE TABLE IF NOT EXISTS `iw0sl_virtuemart_modules` (
  `module_id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `module_name` char(255) DEFAULT NULL,
  `module_description` varchar(21000) DEFAULT NULL,
  `module_perms` char(255) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `is_admin` enum('0','1') NOT NULL DEFAULT '0',
  `ordering` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`module_id`),
  KEY `module_name` (`module_name`),
  KEY `ordering` (`ordering`),
  KEY `published` (`published`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='VirtueMart Core Modules, not: Joomla modules' AUTO_INCREMENT=14 ;

--
-- Дамп данных таблицы `iw0sl_virtuemart_modules`
--

INSERT INTO `iw0sl_virtuemart_modules` (`module_id`, `module_name`, `module_description`, `module_perms`, `published`, `is_admin`, `ordering`) VALUES
(1, 'product', 'Here you can administer your online catalog of products.  Categories , Products (view=product), Attributes, Product Types, Product Files (view=media), Inventory, Calculation Rules, Customer Reviews  ', 'storeadmin,admin', 1, '', 1),
(2, 'order', 'View Order and Update Order Status:    Orders , Coupons , Revenue Report ,Shopper , Shopper Groups ', 'admin,storeadmin', 1, '', 2),
(3, 'manufacturer', 'Manage the manufacturers of products in your store.', 'storeadmin,admin', 1, '', 3),
(4, 'store', 'Store Configuration: Store Information, Payment Methods , Shipment, Shipment Rates', 'storeadmin,admin', 1, '', 4),
(5, 'configuration', 'Configuration: shop configuration , currencies (view=currency), Credit Card List, Countries, userfields, order status  ', 'admin,storeadmin', 1, '0', 5),
(6, 'msgs', 'This module is unprotected an used for displaying system messages to users.  We need to have an area that does not require authorization when things go wrong.', 'none', 0, '', 99),
(7, 'shop', 'This is the Washupito store module.  This is the demo store included with the VirtueMart distribution.', 'none', 1, '', 99),
(8, 'store', 'Store Configuration: Store Information, Payment Methods , Shipment, Shipment Rates', 'storeadmin,admin', 1, '', 4),
(9, 'account', 'This module allows shoppers to update their account information and view previously placed orders.', 'shopper,storeadmin,admin,demo', 1, '', 99),
(10, 'checkout', '', 'none', 0, '', 99),
(11, 'tools', 'Tools', 'admin', 1, '0', 8),
(13, 'zone', 'This is the zone-shipment module. Here you can manage your shipment costs according to Zones.', 'admin,storeadmin', 0, '', 11);

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_virtuemart_orders`
--

CREATE TABLE IF NOT EXISTS `iw0sl_virtuemart_orders` (
  `virtuemart_order_id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_user_id` int(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_vendor_id` int(1) unsigned NOT NULL DEFAULT '0',
  `order_number` varchar(64) DEFAULT NULL,
  `customer_number` varchar(32) DEFAULT NULL,
  `order_pass` varchar(34) DEFAULT NULL,
  `order_create_invoice_pass` varchar(32) DEFAULT NULL,
  `order_total` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `order_salesPrice` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `order_billTaxAmount` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `order_billTax` varchar(400) DEFAULT NULL,
  `order_billDiscountAmount` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `order_discountAmount` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `order_subtotal` decimal(15,5) DEFAULT NULL,
  `order_tax` decimal(10,5) DEFAULT NULL,
  `order_shipment` decimal(10,5) DEFAULT NULL,
  `order_shipment_tax` decimal(10,5) DEFAULT NULL,
  `order_payment` decimal(10,2) DEFAULT NULL,
  `order_payment_tax` decimal(10,5) DEFAULT NULL,
  `coupon_discount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `coupon_code` char(32) DEFAULT NULL,
  `order_discount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `order_currency` smallint(1) DEFAULT NULL,
  `order_status` char(1) DEFAULT NULL,
  `user_currency_id` smallint(1) DEFAULT NULL,
  `user_currency_rate` decimal(10,5) NOT NULL DEFAULT '1.00000',
  `virtuemart_paymentmethod_id` int(1) unsigned DEFAULT NULL,
  `virtuemart_shipmentmethod_id` int(1) unsigned DEFAULT NULL,
  `delivery_date` varchar(200) DEFAULT NULL,
  `order_language` varchar(7) DEFAULT NULL,
  `ip_address` char(15) NOT NULL DEFAULT '',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_order_id`),
  KEY `virtuemart_user_id` (`virtuemart_user_id`),
  KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`),
  KEY `order_number` (`order_number`),
  KEY `virtuemart_paymentmethod_id` (`virtuemart_paymentmethod_id`),
  KEY `virtuemart_shipmentmethod_id` (`virtuemart_shipmentmethod_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Used to store all orders' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_virtuemart_orderstates`
--

CREATE TABLE IF NOT EXISTS `iw0sl_virtuemart_orderstates` (
  `virtuemart_orderstate_id` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_vendor_id` int(1) NOT NULL DEFAULT '1',
  `order_status_code` char(1) NOT NULL DEFAULT '',
  `order_status_name` varchar(64) DEFAULT NULL,
  `order_status_description` varchar(20000) DEFAULT NULL,
  `order_stock_handle` char(1) NOT NULL DEFAULT 'A',
  `ordering` int(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_orderstate_id`),
  KEY `ordering` (`ordering`),
  KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`),
  KEY `published` (`published`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='All available order statuses' AUTO_INCREMENT=9 ;

--
-- Дамп данных таблицы `iw0sl_virtuemart_orderstates`
--

INSERT INTO `iw0sl_virtuemart_orderstates` (`virtuemart_orderstate_id`, `virtuemart_vendor_id`, `order_status_code`, `order_status_name`, `order_status_description`, `order_stock_handle`, `ordering`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1, 1, 'P', 'COM_VIRTUEMART_ORDER_STATUS_PENDING', '', 'R', 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(2, 1, 'U', 'COM_VIRTUEMART_ORDER_STATUS_CONFIRMED_BY_SHOPPER', '', 'R', 2, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(3, 1, 'C', 'COM_VIRTUEMART_ORDER_STATUS_CONFIRMED', '', 'R', 3, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(4, 1, 'X', 'COM_VIRTUEMART_ORDER_STATUS_CANCELLED', '', 'A', 4, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(5, 1, 'R', 'COM_VIRTUEMART_ORDER_STATUS_REFUNDED', '', 'A', 5, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(6, 1, 'S', 'COM_VIRTUEMART_ORDER_STATUS_SHIPPED', '', 'O', 6, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(7, 1, 'F', 'COM_VIRTUEMART_ORDER_STATUS_COMPLETED', '', 'R', 7, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(8, 1, 'D', 'COM_VIRTUEMART_ORDER_STATUS_DENIED', '', 'A', 8, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_virtuemart_order_calc_rules`
--

CREATE TABLE IF NOT EXISTS `iw0sl_virtuemart_order_calc_rules` (
  `virtuemart_order_calc_rule_id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_calc_id` int(1) DEFAULT NULL,
  `virtuemart_order_id` int(1) DEFAULT NULL,
  `virtuemart_vendor_id` int(1) NOT NULL DEFAULT '1',
  `virtuemart_order_item_id` int(1) DEFAULT NULL,
  `calc_rule_name` varchar(64) NOT NULL DEFAULT '' COMMENT 'Name of the rule',
  `calc_kind` varchar(16) NOT NULL DEFAULT '' COMMENT 'Discount/Tax/Margin/Commission',
  `calc_mathop` varchar(16) NOT NULL DEFAULT '' COMMENT 'Discount/Tax/Margin/Commission',
  `calc_amount` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `calc_result` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `calc_value` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `calc_currency` int(1) DEFAULT NULL,
  `calc_params` varchar(18000) NOT NULL DEFAULT '',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_order_calc_rule_id`),
  KEY `virtuemart_calc_id` (`virtuemart_calc_id`),
  KEY `virtuemart_order_id` (`virtuemart_order_id`),
  KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stores all calculation rules which are part of an order' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_virtuemart_order_histories`
--

CREATE TABLE IF NOT EXISTS `iw0sl_virtuemart_order_histories` (
  `virtuemart_order_history_id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_order_id` int(1) unsigned NOT NULL DEFAULT '0',
  `order_status_code` char(1) NOT NULL DEFAULT '0',
  `customer_notified` tinyint(1) NOT NULL DEFAULT '0',
  `comments` varchar(21000) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_order_history_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Stores all actions and changes that occur to an order' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_virtuemart_order_items`
--

CREATE TABLE IF NOT EXISTS `iw0sl_virtuemart_order_items` (
  `virtuemart_order_item_id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_order_id` int(1) DEFAULT NULL,
  `virtuemart_vendor_id` int(1) NOT NULL DEFAULT '1',
  `virtuemart_product_id` int(1) DEFAULT NULL,
  `order_item_sku` varchar(255) NOT NULL DEFAULT '',
  `order_item_name` varchar(4096) NOT NULL DEFAULT '',
  `product_quantity` int(1) DEFAULT NULL,
  `product_item_price` decimal(15,5) DEFAULT NULL,
  `product_priceWithoutTax` decimal(15,5) DEFAULT NULL,
  `product_tax` decimal(15,5) DEFAULT NULL,
  `product_basePriceWithTax` decimal(15,5) DEFAULT NULL,
  `product_discountedPriceWithoutTax` decimal(15,5) DEFAULT NULL,
  `product_final_price` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `product_subtotal_discount` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `product_subtotal_with_tax` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `order_item_currency` int(1) DEFAULT NULL,
  `order_status` char(1) DEFAULT NULL,
  `product_attribute` mediumtext,
  `delivery_date` varchar(200) DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_order_item_id`),
  KEY `virtuemart_product_id` (`virtuemart_product_id`),
  KEY `virtuemart_order_id` (`virtuemart_order_id`),
  KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`),
  KEY `order_status` (`order_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Stores all items (products) which are part of an order' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_virtuemart_order_userinfos`
--

CREATE TABLE IF NOT EXISTS `iw0sl_virtuemart_order_userinfos` (
  `virtuemart_order_userinfo_id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_order_id` int(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_user_id` int(1) unsigned NOT NULL DEFAULT '0',
  `address_type` char(2) DEFAULT NULL,
  `address_type_name` varchar(32) DEFAULT NULL,
  `company` varchar(64) DEFAULT NULL,
  `title` varchar(32) DEFAULT NULL,
  `last_name` varchar(96) DEFAULT NULL,
  `first_name` varchar(96) DEFAULT NULL,
  `middle_name` varchar(96) DEFAULT NULL,
  `phone_1` varchar(32) DEFAULT NULL,
  `phone_2` varchar(32) DEFAULT NULL,
  `fax` varchar(32) DEFAULT NULL,
  `address_1` varchar(96) NOT NULL DEFAULT '',
  `address_2` varchar(64) DEFAULT NULL,
  `city` varchar(96) NOT NULL DEFAULT '',
  `virtuemart_state_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_country_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `zip` varchar(32) NOT NULL DEFAULT '',
  `email` varchar(128) DEFAULT NULL,
  `agreed` tinyint(1) NOT NULL DEFAULT '0',
  `tos` tinyint(1) NOT NULL DEFAULT '0',
  `customer_note` varchar(5000) NOT NULL DEFAULT '',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_order_userinfo_id`),
  KEY `virtuemart_order_id` (`virtuemart_order_id`),
  KEY `virtuemart_user_id` (`virtuemart_user_id`,`address_type`),
  KEY `address_type` (`address_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Stores the BillTo and ShipTo Information at order time' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_virtuemart_paymentmethods`
--

CREATE TABLE IF NOT EXISTS `iw0sl_virtuemart_paymentmethods` (
  `virtuemart_paymentmethod_id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_vendor_id` int(1) NOT NULL DEFAULT '1',
  `payment_jplugin_id` int(1) NOT NULL DEFAULT '0',
  `payment_element` char(50) NOT NULL DEFAULT '',
  `payment_params` varchar(19000) NOT NULL DEFAULT '',
  `shared` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'valide for all vendors?',
  `ordering` int(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_paymentmethod_id`),
  KEY `payment_jplugin_id` (`payment_jplugin_id`),
  KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`),
  KEY `payment_element` (`payment_element`,`virtuemart_vendor_id`),
  KEY `ordering` (`ordering`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='The payment methods of your store' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_virtuemart_paymentmethods_ru_ru`
--

CREATE TABLE IF NOT EXISTS `iw0sl_virtuemart_paymentmethods_ru_ru` (
  `virtuemart_paymentmethod_id` int(1) unsigned NOT NULL,
  `payment_name` varchar(180) NOT NULL DEFAULT '',
  `payment_desc` varchar(19000) NOT NULL DEFAULT '',
  `slug` varchar(192) NOT NULL DEFAULT '',
  PRIMARY KEY (`virtuemart_paymentmethod_id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_virtuemart_paymentmethod_shoppergroups`
--

CREATE TABLE IF NOT EXISTS `iw0sl_virtuemart_paymentmethod_shoppergroups` (
  `id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_paymentmethod_id` int(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_shoppergroup_id` int(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `virtuemart_paymentmethod_id` (`virtuemart_paymentmethod_id`,`virtuemart_shoppergroup_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='xref table for paymentmethods to shoppergroup' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_virtuemart_products`
--

CREATE TABLE IF NOT EXISTS `iw0sl_virtuemart_products` (
  `virtuemart_product_id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_vendor_id` int(1) unsigned NOT NULL DEFAULT '1',
  `product_parent_id` int(1) unsigned NOT NULL DEFAULT '0',
  `product_sku` varchar(255) DEFAULT NULL,
  `product_gtin` varchar(64) DEFAULT NULL,
  `product_mpn` varchar(64) DEFAULT NULL,
  `product_weight` decimal(10,4) DEFAULT NULL,
  `product_weight_uom` varchar(7) DEFAULT NULL,
  `product_length` decimal(10,4) DEFAULT NULL,
  `product_width` decimal(10,4) DEFAULT NULL,
  `product_height` decimal(10,4) DEFAULT NULL,
  `product_lwh_uom` varchar(7) DEFAULT NULL,
  `product_url` varchar(255) DEFAULT NULL,
  `product_in_stock` int(1) NOT NULL DEFAULT '0',
  `product_ordered` int(1) NOT NULL DEFAULT '0',
  `low_stock_notification` int(1) unsigned NOT NULL DEFAULT '0',
  `product_available_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_availability` char(32) DEFAULT NULL,
  `product_special` tinyint(1) DEFAULT NULL,
  `product_sales` int(1) unsigned NOT NULL DEFAULT '0',
  `product_unit` varchar(8) DEFAULT NULL,
  `product_packaging` decimal(8,4) unsigned DEFAULT NULL,
  `product_params` varchar(2000) NOT NULL DEFAULT '',
  `hits` int(1) unsigned DEFAULT NULL,
  `intnotes` varchar(18000) DEFAULT NULL,
  `metarobot` varchar(400) DEFAULT NULL,
  `metaauthor` varchar(400) DEFAULT NULL,
  `layout` char(16) DEFAULT NULL,
  `published` tinyint(1) DEFAULT NULL,
  `pordering` int(1) unsigned NOT NULL DEFAULT '0',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_product_id`),
  KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`),
  KEY `product_parent_id` (`product_parent_id`),
  KEY `product_special` (`product_special`),
  KEY `product_in_stock` (`product_in_stock`),
  KEY `product_ordered` (`product_ordered`),
  KEY `published` (`published`),
  KEY `pordering` (`pordering`),
  KEY `created_on` (`created_on`),
  KEY `modified_on` (`modified_on`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='All products are stored here.' AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `iw0sl_virtuemart_products`
--

INSERT INTO `iw0sl_virtuemart_products` (`virtuemart_product_id`, `virtuemart_vendor_id`, `product_parent_id`, `product_sku`, `product_gtin`, `product_mpn`, `product_weight`, `product_weight_uom`, `product_length`, `product_width`, `product_height`, `product_lwh_uom`, `product_url`, `product_in_stock`, `product_ordered`, `low_stock_notification`, `product_available_date`, `product_availability`, `product_special`, `product_sales`, `product_unit`, `product_packaging`, `product_params`, `hits`, `intnotes`, `metarobot`, `metaauthor`, `layout`, `published`, `pordering`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(2, 1, 0, '', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 100, 0, 0, '2016-08-23 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2016-08-23 10:23:45', 41, '2016-08-23 10:25:05', 41, '0000-00-00 00:00:00', 0),
(3, 1, 0, '', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 80, 0, 0, '2016-08-23 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2016-08-23 10:28:31', 41, '2016-08-23 10:28:47', 41, '0000-00-00 00:00:00', 0),
(4, 1, 0, '', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 1551, 0, 0, '2016-08-23 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2016-08-23 10:30:22', 41, '2016-08-23 10:30:22', 41, '0000-00-00 00:00:00', 0),
(5, 1, 0, '', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 465675, 0, 0, '2016-08-23 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2016-08-23 10:38:34', 41, '2016-08-23 10:39:09', 41, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_virtuemart_products_ru_ru`
--

CREATE TABLE IF NOT EXISTS `iw0sl_virtuemart_products_ru_ru` (
  `virtuemart_product_id` int(1) unsigned NOT NULL,
  `product_s_desc` varchar(2000) NOT NULL DEFAULT '',
  `product_desc` varchar(18400) NOT NULL DEFAULT '',
  `product_name` varchar(180) NOT NULL DEFAULT '',
  `metadesc` varchar(400) NOT NULL DEFAULT '',
  `metakey` varchar(400) NOT NULL DEFAULT '',
  `customtitle` varchar(255) NOT NULL DEFAULT '',
  `slug` varchar(192) NOT NULL DEFAULT '',
  PRIMARY KEY (`virtuemart_product_id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `iw0sl_virtuemart_products_ru_ru`
--

INSERT INTO `iw0sl_virtuemart_products_ru_ru` (`virtuemart_product_id`, `product_s_desc`, `product_desc`, `product_name`, `metadesc`, `metakey`, `customtitle`, `slug`) VALUES
(2, '', '', 'Тумба школьная трехсекционная 2', '', '', '', 'тумба-школьная-трехсекционная-2'),
(3, '', '', 'Тумба школьная трехсекционная 3', '', '', '', 'тумба-школьная-трехсекционная-3'),
(4, '', '', 'Тумба школьная трехсекционная 4', '', '', '', 'тумба-школьная-трехсекционная-4'),
(5, '', '', 'Тумба школьная трехсекционная 5', '', '', '', 'тумба-школьная-трехсекционная-5');

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_virtuemart_product_categories`
--

CREATE TABLE IF NOT EXISTS `iw0sl_virtuemart_product_categories` (
  `id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_product_id` int(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_category_id` int(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `virtuemart_product_id` (`virtuemart_product_id`,`virtuemart_category_id`),
  KEY `ordering` (`ordering`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Maps Products to Categories' AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `iw0sl_virtuemart_product_categories`
--

INSERT INTO `iw0sl_virtuemart_product_categories` (`id`, `virtuemart_product_id`, `virtuemart_category_id`, `ordering`) VALUES
(2, 2, 1, 0),
(3, 3, 1, 0),
(4, 4, 1, 0),
(5, 5, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_virtuemart_product_customfields`
--

CREATE TABLE IF NOT EXISTS `iw0sl_virtuemart_product_customfields` (
  `virtuemart_customfield_id` int(1) unsigned NOT NULL AUTO_INCREMENT COMMENT 'field id',
  `virtuemart_product_id` int(1) NOT NULL DEFAULT '0',
  `virtuemart_custom_id` int(1) NOT NULL DEFAULT '1' COMMENT 'custom group id',
  `customfield_value` varchar(2500) DEFAULT NULL COMMENT 'field value',
  `customfield_price` decimal(15,6) DEFAULT NULL COMMENT 'price',
  `disabler` int(1) unsigned NOT NULL DEFAULT '0',
  `override` int(1) unsigned NOT NULL DEFAULT '0',
  `customfield_params` varchar(17000) NOT NULL DEFAULT '' COMMENT 'Param for Plugins',
  `product_sku` char(64) DEFAULT NULL,
  `product_gtin` char(64) DEFAULT NULL,
  `product_mpn` char(64) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) unsigned NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) unsigned NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_customfield_id`),
  KEY `virtuemart_product_id` (`virtuemart_product_id`),
  KEY `virtuemart_custom_id` (`virtuemart_custom_id`),
  KEY `published` (`published`),
  KEY `ordering` (`ordering`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='custom fields' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_virtuemart_product_manufacturers`
--

CREATE TABLE IF NOT EXISTS `iw0sl_virtuemart_product_manufacturers` (
  `id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_product_id` int(1) DEFAULT NULL,
  `virtuemart_manufacturer_id` int(1) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `virtuemart_product_id` (`virtuemart_product_id`,`virtuemart_manufacturer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Maps a product to a manufacturer' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_virtuemart_product_medias`
--

CREATE TABLE IF NOT EXISTS `iw0sl_virtuemart_product_medias` (
  `id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_product_id` int(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_media_id` int(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `virtuemart_product_id` (`virtuemart_product_id`,`virtuemart_media_id`),
  KEY `ordering` (`ordering`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `iw0sl_virtuemart_product_medias`
--

INSERT INTO `iw0sl_virtuemart_product_medias` (`id`, `virtuemart_product_id`, `virtuemart_media_id`, `ordering`) VALUES
(2, 2, 2, 1),
(3, 3, 3, 1),
(4, 4, 4, 1),
(5, 5, 5, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_virtuemart_product_prices`
--

CREATE TABLE IF NOT EXISTS `iw0sl_virtuemart_product_prices` (
  `virtuemart_product_price_id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_product_id` int(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_shoppergroup_id` int(1) unsigned NOT NULL DEFAULT '0',
  `product_price` decimal(15,6) DEFAULT NULL,
  `override` tinyint(1) DEFAULT NULL,
  `product_override_price` decimal(15,5) DEFAULT NULL,
  `product_tax_id` int(1) DEFAULT NULL,
  `product_discount_id` int(1) DEFAULT NULL,
  `product_currency` smallint(1) DEFAULT NULL,
  `product_price_publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_price_publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `price_quantity_start` int(1) unsigned NOT NULL DEFAULT '0',
  `price_quantity_end` int(1) unsigned NOT NULL DEFAULT '0',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_product_price_id`),
  KEY `virtuemart_product_id` (`virtuemart_product_id`),
  KEY `product_price` (`virtuemart_product_id`),
  KEY `virtuemart_shoppergroup_id` (`virtuemart_shoppergroup_id`),
  KEY `product_price_publish_up` (`product_price_publish_up`),
  KEY `product_price_publish_down` (`product_price_publish_down`),
  KEY `price_quantity_start` (`price_quantity_start`),
  KEY `price_quantity_end` (`price_quantity_end`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Holds price records for a product' AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `iw0sl_virtuemart_product_prices`
--

INSERT INTO `iw0sl_virtuemart_product_prices` (`virtuemart_product_price_id`, `virtuemart_product_id`, `virtuemart_shoppergroup_id`, `product_price`, `override`, `product_override_price`, `product_tax_id`, `product_discount_id`, `product_currency`, `product_price_publish_up`, `product_price_publish_down`, `price_quantity_start`, `price_quantity_end`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(2, 2, 0, '5000.000000', 0, '0.00000', 0, 0, 131, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2016-08-23 10:23:45', 41, '2016-08-23 10:25:05', 41, '0000-00-00 00:00:00', 0),
(3, 3, 0, '7000.000000', 0, '0.00000', 0, 0, 131, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2016-08-23 10:28:31', 41, '2016-08-23 10:28:47', 41, '0000-00-00 00:00:00', 0),
(4, 4, 0, '8070.000000', 0, '0.00000', 0, 0, 131, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2016-08-23 10:30:22', 41, '2016-08-23 10:30:22', 41, '0000-00-00 00:00:00', 0),
(5, 5, 0, '2346466.000000', 0, '0.00000', 0, 0, 131, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2016-08-23 10:38:34', 41, '2016-08-23 10:39:09', 41, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_virtuemart_product_shoppergroups`
--

CREATE TABLE IF NOT EXISTS `iw0sl_virtuemart_product_shoppergroups` (
  `id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_product_id` int(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_shoppergroup_id` int(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `virtuemart_product_id` (`virtuemart_product_id`,`virtuemart_shoppergroup_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Maps Products to Categories' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_virtuemart_ratings`
--

CREATE TABLE IF NOT EXISTS `iw0sl_virtuemart_ratings` (
  `virtuemart_rating_id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_product_id` int(1) unsigned NOT NULL DEFAULT '0',
  `rates` int(1) NOT NULL DEFAULT '0',
  `ratingcount` int(1) unsigned NOT NULL DEFAULT '0',
  `rating` decimal(10,1) NOT NULL DEFAULT '0.0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_rating_id`),
  UNIQUE KEY `virtuemart_product_id` (`virtuemart_product_id`,`virtuemart_rating_id`),
  KEY `published` (`published`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stores all ratings for a product' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_virtuemart_rating_reviews`
--

CREATE TABLE IF NOT EXISTS `iw0sl_virtuemart_rating_reviews` (
  `virtuemart_rating_review_id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_product_id` int(1) unsigned NOT NULL DEFAULT '0',
  `comment` varchar(18000) DEFAULT NULL,
  `review_ok` tinyint(1) NOT NULL DEFAULT '0',
  `review_rates` int(1) unsigned NOT NULL DEFAULT '0',
  `review_ratingcount` int(1) unsigned NOT NULL DEFAULT '0',
  `review_rating` decimal(10,2) NOT NULL DEFAULT '0.00',
  `review_editable` tinyint(1) NOT NULL DEFAULT '1',
  `lastip` char(50) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_rating_review_id`),
  UNIQUE KEY `virtuemart_product_id` (`virtuemart_product_id`,`created_by`),
  KEY `created_on` (`created_on`),
  KEY `created_by` (`created_by`),
  KEY `published` (`published`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_virtuemart_rating_votes`
--

CREATE TABLE IF NOT EXISTS `iw0sl_virtuemart_rating_votes` (
  `virtuemart_rating_vote_id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_product_id` int(1) unsigned NOT NULL DEFAULT '0',
  `vote` int(1) NOT NULL DEFAULT '0',
  `lastip` char(50) NOT NULL DEFAULT '0',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_rating_vote_id`),
  UNIQUE KEY `virtuemart_product_id` (`virtuemart_product_id`,`created_by`),
  KEY `created_by` (`created_by`),
  KEY `created_on` (`created_on`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stores all ratings for a product' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_virtuemart_shipmentmethods`
--

CREATE TABLE IF NOT EXISTS `iw0sl_virtuemart_shipmentmethods` (
  `virtuemart_shipmentmethod_id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_vendor_id` int(1) NOT NULL DEFAULT '1',
  `shipment_jplugin_id` int(1) NOT NULL DEFAULT '0',
  `shipment_element` char(50) NOT NULL DEFAULT '',
  `shipment_params` varchar(19000) NOT NULL DEFAULT '',
  `ordering` int(1) NOT NULL DEFAULT '0',
  `shared` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_shipmentmethod_id`),
  KEY `shipment_jplugin_id` (`shipment_jplugin_id`),
  KEY `shipment_element` (`shipment_element`,`virtuemart_vendor_id`),
  KEY `ordering` (`ordering`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Shipment created from the shipment plugins' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_virtuemart_shipmentmethods_ru_ru`
--

CREATE TABLE IF NOT EXISTS `iw0sl_virtuemart_shipmentmethods_ru_ru` (
  `virtuemart_shipmentmethod_id` int(1) unsigned NOT NULL,
  `shipment_name` varchar(180) NOT NULL DEFAULT '',
  `shipment_desc` varchar(19000) NOT NULL DEFAULT '',
  `slug` varchar(192) NOT NULL DEFAULT '',
  PRIMARY KEY (`virtuemart_shipmentmethod_id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_virtuemart_shipmentmethod_shoppergroups`
--

CREATE TABLE IF NOT EXISTS `iw0sl_virtuemart_shipmentmethod_shoppergroups` (
  `id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_shipmentmethod_id` int(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_shoppergroup_id` int(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `virtuemart_shipmentmethod_id` (`virtuemart_shipmentmethod_id`,`virtuemart_shoppergroup_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='xref table for shipment to shoppergroup' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_virtuemart_shoppergroups`
--

CREATE TABLE IF NOT EXISTS `iw0sl_virtuemart_shoppergroups` (
  `virtuemart_shoppergroup_id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_vendor_id` int(1) NOT NULL DEFAULT '1',
  `shopper_group_name` char(128) DEFAULT NULL,
  `shopper_group_desc` char(255) DEFAULT NULL,
  `custom_price_display` tinyint(1) NOT NULL DEFAULT '0',
  `price_display` blob NOT NULL,
  `default` tinyint(1) NOT NULL DEFAULT '0',
  `sgrp_additional` tinyint(1) NOT NULL DEFAULT '0',
  `ordering` int(1) NOT NULL DEFAULT '0',
  `shared` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_shoppergroup_id`),
  KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`),
  KEY `shopper_group_name` (`shopper_group_name`),
  KEY `ordering` (`ordering`),
  KEY `shared` (`shared`),
  KEY `published` (`published`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Shopper Groups that users can be assigned to' AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `iw0sl_virtuemart_shoppergroups`
--

INSERT INTO `iw0sl_virtuemart_shoppergroups` (`virtuemart_shoppergroup_id`, `virtuemart_vendor_id`, `shopper_group_name`, `shopper_group_desc`, `custom_price_display`, `price_display`, `default`, `sgrp_additional`, `ordering`, `shared`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(2, 1, 'COM_VIRTUEMART_SHOPPERGROUP_DEFAULT', 'COM_VIRTUEMART_SHOPPERGROUP_DEFAULT_TIP', 0, '', 1, 0, 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(1, 1, 'COM_VIRTUEMART_SHOPPERGROUP_GUEST', 'COM_VIRTUEMART_SHOPPERGROUP_GUEST_TIP', 0, '', 2, 0, 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_virtuemart_states`
--

CREATE TABLE IF NOT EXISTS `iw0sl_virtuemart_states` (
  `virtuemart_state_id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_vendor_id` int(1) unsigned NOT NULL DEFAULT '1',
  `virtuemart_country_id` int(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_worldzone_id` int(1) unsigned NOT NULL DEFAULT '0',
  `state_name` char(64) DEFAULT NULL,
  `state_3_code` char(3) DEFAULT NULL,
  `state_2_code` char(2) DEFAULT NULL,
  `ordering` int(1) NOT NULL DEFAULT '0',
  `shared` tinyint(1) NOT NULL DEFAULT '1',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_state_id`),
  UNIQUE KEY `state_3_code` (`virtuemart_vendor_id`,`virtuemart_country_id`,`state_3_code`),
  UNIQUE KEY `state_2_code` (`virtuemart_vendor_id`,`virtuemart_country_id`,`state_2_code`),
  KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`),
  KEY `virtuemart_country_id` (`virtuemart_country_id`),
  KEY `ordering` (`ordering`),
  KEY `shared` (`shared`),
  KEY `published` (`published`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='States that are assigned to a country' AUTO_INCREMENT=832 ;

--
-- Дамп данных таблицы `iw0sl_virtuemart_states`
--

INSERT INTO `iw0sl_virtuemart_states` (`virtuemart_state_id`, `virtuemart_vendor_id`, `virtuemart_country_id`, `virtuemart_worldzone_id`, `state_name`, `state_3_code`, `state_2_code`, `ordering`, `shared`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1, 1, 223, 0, 'Alabama', 'ALA', 'AL', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(2, 1, 223, 0, 'Alaska', 'ALK', 'AK', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(3, 1, 223, 0, 'Arizona', 'ARZ', 'AZ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(4, 1, 223, 0, 'Arkansas', 'ARK', 'AR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(5, 1, 223, 0, 'California', 'CAL', 'CA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(6, 1, 223, 0, 'Colorado', 'COL', 'CO', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(7, 1, 223, 0, 'Connecticut', 'CCT', 'CT', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(8, 1, 223, 0, 'Delaware', 'DEL', 'DE', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(9, 1, 223, 0, 'District Of Columbia', 'DOC', 'DC', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(10, 1, 223, 0, 'Florida', 'FLO', 'FL', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(11, 1, 223, 0, 'Georgia', 'GEA', 'GA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(12, 1, 223, 0, 'Hawaii', 'HWI', 'HI', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(13, 1, 223, 0, 'Idaho', 'IDA', 'ID', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(14, 1, 223, 0, 'Illinois', 'ILL', 'IL', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(15, 1, 223, 0, 'Indiana', 'IND', 'IN', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(16, 1, 223, 0, 'Iowa', 'IOA', 'IA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(17, 1, 223, 0, 'Kansas', 'KAS', 'KS', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(18, 1, 223, 0, 'Kentucky', 'KTY', 'KY', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(19, 1, 223, 0, 'Louisiana', 'LOA', 'LA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(20, 1, 223, 0, 'Maine', 'MAI', 'ME', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(21, 1, 223, 0, 'Maryland', 'MLD', 'MD', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(22, 1, 223, 0, 'Massachusetts', 'MSA', 'MA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(23, 1, 223, 0, 'Michigan', 'MIC', 'MI', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(24, 1, 223, 0, 'Minnesota', 'MIN', 'MN', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(25, 1, 223, 0, 'Mississippi', 'MIS', 'MS', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(26, 1, 223, 0, 'Missouri', 'MIO', 'MO', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(27, 1, 223, 0, 'Montana', 'MOT', 'MT', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(28, 1, 223, 0, 'Nebraska', 'NEB', 'NE', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(29, 1, 223, 0, 'Nevada', 'NEV', 'NV', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(30, 1, 223, 0, 'New Hampshire', 'NEH', 'NH', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(31, 1, 223, 0, 'New Jersey', 'NEJ', 'NJ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(32, 1, 223, 0, 'New Mexico', 'NEM', 'NM', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(33, 1, 223, 0, 'New York', 'NEY', 'NY', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(34, 1, 223, 0, 'North Carolina', 'NOC', 'NC', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(35, 1, 223, 0, 'North Dakota', 'NOD', 'ND', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(36, 1, 223, 0, 'Ohio', 'OHI', 'OH', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(37, 1, 223, 0, 'Oklahoma', 'OKL', 'OK', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(38, 1, 223, 0, 'Oregon', 'ORN', 'OR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(39, 1, 223, 0, 'Pennsylvania', 'PEA', 'PA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(40, 1, 223, 0, 'Rhode Island', 'RHI', 'RI', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(41, 1, 223, 0, 'South Carolina', 'SOC', 'SC', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(42, 1, 223, 0, 'South Dakota', 'SOD', 'SD', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(43, 1, 223, 0, 'Tennessee', 'TEN', 'TN', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(44, 1, 223, 0, 'Texas', 'TXS', 'TX', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(45, 1, 223, 0, 'Utah', 'UTA', 'UT', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(46, 1, 223, 0, 'Vermont', 'VMT', 'VT', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(47, 1, 223, 0, 'Virginia', 'VIA', 'VA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(48, 1, 223, 0, 'Washington', 'WAS', 'WA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(49, 1, 223, 0, 'West Virginia', 'WEV', 'WV', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(50, 1, 223, 0, 'Wisconsin', 'WIS', 'WI', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(51, 1, 223, 0, 'Wyoming', 'WYO', 'WY', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(52, 1, 38, 0, 'Alberta', 'ALB', 'AB', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(53, 1, 38, 0, 'British Columbia', 'BRC', 'BC', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(54, 1, 38, 0, 'Manitoba', 'MAB', 'MB', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(55, 1, 38, 0, 'New Brunswick', 'NEB', 'NB', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(56, 1, 38, 0, 'Newfoundland and Labrador', 'NFL', 'NL', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(57, 1, 38, 0, 'Northwest Territories', 'NWT', 'NT', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(58, 1, 38, 0, 'Nova Scotia', 'NOS', 'NS', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(59, 1, 38, 0, 'Nunavut', 'NUT', 'NU', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(60, 1, 38, 0, 'Ontario', 'ONT', 'ON', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(61, 1, 38, 0, 'Prince Edward Island', 'PEI', 'PE', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(62, 1, 38, 0, 'Quebec', 'QEC', 'QC', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(63, 1, 38, 0, 'Saskatchewan', 'SAK', 'SK', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(64, 1, 38, 0, 'Yukon', 'YUT', 'YT', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(65, 1, 222, 0, 'England', 'ENG', 'EN', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(66, 1, 222, 0, 'Northern Ireland', 'NOI', 'NI', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(67, 1, 222, 0, 'Scotland', 'SCO', 'SD', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(68, 1, 222, 0, 'Wales', 'WLS', 'WS', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(69, 1, 13, 0, 'Australian Capital Territory', 'ACT', 'AC', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(70, 1, 13, 0, 'New South Wales', 'NSW', 'NS', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(71, 1, 13, 0, 'Northern Territory', 'NOT', 'NT', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(72, 1, 13, 0, 'Queensland', 'QLD', 'QL', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(73, 1, 13, 0, 'South Australia', 'SOA', 'SA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(74, 1, 13, 0, 'Tasmania', 'TAS', 'TS', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(75, 1, 13, 0, 'Victoria', 'VIC', 'VI', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(76, 1, 13, 0, 'Western Australia', 'WEA', 'WA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(77, 1, 138, 0, 'Aguascalientes', 'AGS', 'AG', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(78, 1, 138, 0, 'Baja California Norte', 'BCN', 'BN', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(79, 1, 138, 0, 'Baja California Sur', 'BCS', 'BS', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(80, 1, 138, 0, 'Campeche', 'CAM', 'CA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(81, 1, 138, 0, 'Chiapas', 'CHI', 'CS', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(82, 1, 138, 0, 'Chihuahua', 'CHA', 'CH', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(83, 1, 138, 0, 'Coahuila', 'COA', 'CO', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(84, 1, 138, 0, 'Colima', 'COL', 'CM', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(85, 1, 138, 0, 'Distrito Federal', 'DFM', 'DF', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(86, 1, 138, 0, 'Durango', 'DGO', 'DO', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(87, 1, 138, 0, 'Guanajuato', 'GTO', 'GO', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(88, 1, 138, 0, 'Guerrero', 'GRO', 'GU', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(89, 1, 138, 0, 'Hidalgo', 'HGO', 'HI', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(90, 1, 138, 0, 'Jalisco', 'JAL', 'JA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(91, 1, 138, 0, 'M', 'EDM', 'EM', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(92, 1, 138, 0, 'Michoac', 'MCN', 'MI', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(93, 1, 138, 0, 'Morelos', 'MOR', 'MO', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(94, 1, 138, 0, 'Nayarit', 'NAY', 'NY', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(95, 1, 138, 0, 'Nuevo Le', 'NUL', 'NL', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(96, 1, 138, 0, 'Oaxaca', 'OAX', 'OA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(97, 1, 138, 0, 'Puebla', 'PUE', 'PU', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(98, 1, 138, 0, 'Quer', 'QRO', 'QU', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(99, 1, 138, 0, 'Quintana Roo', 'QUR', 'QR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(100, 1, 138, 0, 'San Luis Potos', 'SLP', 'SP', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(101, 1, 138, 0, 'Sinaloa', 'SIN', 'SI', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(102, 1, 138, 0, 'Sonora', 'SON', 'SO', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(103, 1, 138, 0, 'Tabasco', 'TAB', 'TA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(104, 1, 138, 0, 'Tamaulipas', 'TAM', 'TM', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(105, 1, 138, 0, 'Tlaxcala', 'TLX', 'TX', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(106, 1, 138, 0, 'Veracruz', 'VER', 'VZ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(107, 1, 138, 0, 'Yucat', 'YUC', 'YU', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(108, 1, 138, 0, 'Zacatecas', 'ZAC', 'ZA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(109, 1, 30, 0, 'Acre', 'ACR', 'AC', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(110, 1, 30, 0, 'Alagoas', 'ALG', 'AL', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(111, 1, 30, 0, 'Amapá', 'AMP', 'AP', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(112, 1, 30, 0, 'Amazonas', 'AMZ', 'AM', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(113, 1, 30, 0, 'Bahía', 'BAH', 'BA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(114, 1, 30, 0, 'Ceará', 'CEA', 'CE', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(115, 1, 30, 0, 'Distrito Federal', 'DFB', 'DF', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(116, 1, 30, 0, 'Espírito Santo', 'ESS', 'ES', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(117, 1, 30, 0, 'Goiás', 'GOI', 'GO', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(118, 1, 30, 0, 'Maranhão', 'MAR', 'MA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(119, 1, 30, 0, 'Mato Grosso', 'MAT', 'MT', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(120, 1, 30, 0, 'Mato Grosso do Sul', 'MGS', 'MS', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(121, 1, 30, 0, 'Minas Gerais', 'MIG', 'MG', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(122, 1, 30, 0, 'Paraná', 'PAR', 'PR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(123, 1, 30, 0, 'Paraíba', 'PRB', 'PB', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(124, 1, 30, 0, 'Pará', 'PAB', 'PA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(125, 1, 30, 0, 'Pernambuco', 'PER', 'PE', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(126, 1, 30, 0, 'Piauí', 'PIA', 'PI', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(127, 1, 30, 0, 'Rio Grande do Norte', 'RGN', 'RN', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(128, 1, 30, 0, 'Rio Grande do Sul', 'RGS', 'RS', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(129, 1, 30, 0, 'Rio de Janeiro', 'RDJ', 'RJ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(130, 1, 30, 0, 'Rondônia', 'RON', 'RO', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(131, 1, 30, 0, 'Roraima', 'ROR', 'RR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(132, 1, 30, 0, 'Santa Catarina', 'SAC', 'SC', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(133, 1, 30, 0, 'Sergipe', 'SER', 'SE', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(134, 1, 30, 0, 'São Paulo', 'SAP', 'SP', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(135, 1, 30, 0, 'Tocantins', 'TOC', 'TO', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(136, 1, 44, 0, 'Anhui', 'ANH', '34', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(137, 1, 44, 0, 'Beijing', 'BEI', '11', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(138, 1, 44, 0, 'Chongqing', 'CHO', '50', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(139, 1, 44, 0, 'Fujian', 'FUJ', '35', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(140, 1, 44, 0, 'Gansu', 'GAN', '62', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(141, 1, 44, 0, 'Guangdong', 'GUA', '44', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(142, 1, 44, 0, 'Guangxi Zhuang', 'GUZ', '45', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(143, 1, 44, 0, 'Guizhou', 'GUI', '52', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(144, 1, 44, 0, 'Hainan', 'HAI', '46', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(145, 1, 44, 0, 'Hebei', 'HEB', '13', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(146, 1, 44, 0, 'Heilongjiang', 'HEI', '23', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(147, 1, 44, 0, 'Henan', 'HEN', '41', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(148, 1, 44, 0, 'Hubei', 'HUB', '42', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(149, 1, 44, 0, 'Hunan', 'HUN', '43', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(150, 1, 44, 0, 'Jiangsu', 'JIA', '32', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(151, 1, 44, 0, 'Jiangxi', 'JIX', '36', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(152, 1, 44, 0, 'Jilin', 'JIL', '22', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(153, 1, 44, 0, 'Liaoning', 'LIA', '21', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(154, 1, 44, 0, 'Nei Mongol', 'NML', '15', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(155, 1, 44, 0, 'Ningxia Hui', 'NIH', '64', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(156, 1, 44, 0, 'Qinghai', 'QIN', '63', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(157, 1, 44, 0, 'Shandong', 'SNG', '37', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(158, 1, 44, 0, 'Shanghai', 'SHH', '31', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(159, 1, 44, 0, 'Shaanxi', 'SHX', '61', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(160, 1, 44, 0, 'Sichuan', 'SIC', '51', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(161, 1, 44, 0, 'Tianjin', 'TIA', '12', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(162, 1, 44, 0, 'Xinjiang Uygur', 'XIU', '65', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(163, 1, 44, 0, 'Xizang', 'XIZ', '54', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(164, 1, 44, 0, 'Yunnan', 'YUN', '53', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(165, 1, 44, 0, 'Zhejiang', 'ZHE', '33', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(166, 1, 104, 0, 'Israel', 'ISL', 'IL', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(167, 1, 104, 0, 'Gaza Strip', 'GZS', 'GZ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(168, 1, 104, 0, 'West Bank', 'WBK', 'WB', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(169, 1, 151, 0, 'St. Maarten', 'STM', 'SM', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(170, 1, 151, 0, 'Bonaire', 'BNR', 'BN', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(171, 1, 151, 0, 'Curacao', 'CUR', 'CR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(172, 1, 175, 0, 'Alba', 'ABA', 'AB', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(173, 1, 175, 0, 'Arad', 'ARD', 'AR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(174, 1, 175, 0, 'Arges', 'ARG', 'AG', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(175, 1, 175, 0, 'Bacau', 'BAC', 'BC', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(176, 1, 175, 0, 'Bihor', 'BIH', 'BH', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(177, 1, 175, 0, 'Bistrita-Nasaud', 'BIS', 'BN', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(178, 1, 175, 0, 'Botosani', 'BOT', 'BT', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(179, 1, 175, 0, 'Braila', 'BRL', 'BR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(180, 1, 175, 0, 'Brasov', 'BRA', 'BV', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(181, 1, 175, 0, 'Bucuresti', 'BUC', 'B', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(182, 1, 175, 0, 'Buzau', 'BUZ', 'BZ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(183, 1, 175, 0, 'Calarasi', 'CAL', 'CL', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(184, 1, 175, 0, 'Caras Severin', 'CRS', 'CS', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(185, 1, 175, 0, 'Cluj', 'CLJ', 'CJ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(186, 1, 175, 0, 'Constanta', 'CST', 'CT', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(187, 1, 175, 0, 'Covasna', 'COV', 'CV', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(188, 1, 175, 0, 'Dambovita', 'DAM', 'DB', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(189, 1, 175, 0, 'Dolj', 'DLJ', 'DJ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(190, 1, 175, 0, 'Galati', 'GAL', 'GL', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(191, 1, 175, 0, 'Giurgiu', 'GIU', 'GR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(192, 1, 175, 0, 'Gorj', 'GOR', 'GJ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(193, 1, 175, 0, 'Hargita', 'HRG', 'HR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(194, 1, 175, 0, 'Hunedoara', 'HUN', 'HD', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(195, 1, 175, 0, 'Ialomita', 'IAL', 'IL', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(196, 1, 175, 0, 'Iasi', 'IAS', 'IS', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(197, 1, 175, 0, 'Ilfov', 'ILF', 'IF', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(198, 1, 175, 0, 'Maramures', 'MAR', 'MM', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(199, 1, 175, 0, 'Mehedinti', 'MEH', 'MH', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(200, 1, 175, 0, 'Mures', 'MUR', 'MS', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(201, 1, 175, 0, 'Neamt', 'NEM', 'NT', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(202, 1, 175, 0, 'Olt', 'OLT', 'OT', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(203, 1, 175, 0, 'Prahova', 'PRA', 'PH', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(204, 1, 175, 0, 'Salaj', 'SAL', 'SJ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(205, 1, 175, 0, 'Satu Mare', 'SAT', 'SM', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(206, 1, 175, 0, 'Sibiu', 'SIB', 'SB', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(207, 1, 175, 0, 'Suceava', 'SUC', 'SV', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(208, 1, 175, 0, 'Teleorman', 'TEL', 'TR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(209, 1, 175, 0, 'Timis', 'TIM', 'TM', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(210, 1, 175, 0, 'Tulcea', 'TUL', 'TL', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(211, 1, 175, 0, 'Valcea', 'VAL', 'VL', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(212, 1, 175, 0, 'Vaslui', 'VAS', 'VS', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(213, 1, 175, 0, 'Vrancea', 'VRA', 'VN', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(214, 1, 105, 0, 'Agrigento', 'AGR', 'AG', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(215, 1, 105, 0, 'Alessandria', 'ALE', 'AL', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(216, 1, 105, 0, 'Ancona', 'ANC', 'AN', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(217, 1, 105, 0, 'Aosta', 'AOS', 'AO', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(218, 1, 105, 0, 'Arezzo', 'ARE', 'AR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(219, 1, 105, 0, 'Ascoli Piceno', 'API', 'AP', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(220, 1, 105, 0, 'Asti', 'AST', 'AT', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(221, 1, 105, 0, 'Avellino', 'AVE', 'AV', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(222, 1, 105, 0, 'Bari', 'BAR', 'BA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(223, 1, 105, 0, 'Belluno', 'BEL', 'BL', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(224, 1, 105, 0, 'Benevento', 'BEN', 'BN', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(225, 1, 105, 0, 'Bergamo', 'BEG', 'BG', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(226, 1, 105, 0, 'Biella', 'BIE', 'BI', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(227, 1, 105, 0, 'Bologna', 'BOL', 'BO', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(228, 1, 105, 0, 'Bolzano', 'BOZ', 'BZ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(229, 1, 105, 0, 'Brescia', 'BRE', 'BS', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(230, 1, 105, 0, 'Brindisi', 'BRI', 'BR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(231, 1, 105, 0, 'Cagliari', 'CAG', 'CA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(232, 1, 105, 0, 'Caltanissetta', 'CAL', 'CL', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(233, 1, 105, 0, 'Campobasso', 'CBO', 'CB', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(234, 1, 105, 0, 'Carbonia-Iglesias', 'CAR', 'CI', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(235, 1, 105, 0, 'Caserta', 'CAS', 'CE', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(236, 1, 105, 0, 'Catania', 'CAT', 'CT', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(237, 1, 105, 0, 'Catanzaro', 'CTZ', 'CZ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(238, 1, 105, 0, 'Chieti', 'CHI', 'CH', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(239, 1, 105, 0, 'Como', 'COM', 'CO', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(240, 1, 105, 0, 'Cosenza', 'COS', 'CS', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(241, 1, 105, 0, 'Cremona', 'CRE', 'CR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(242, 1, 105, 0, 'Crotone', 'CRO', 'KR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(243, 1, 105, 0, 'Cuneo', 'CUN', 'CN', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(244, 1, 105, 0, 'Enna', 'ENN', 'EN', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(245, 1, 105, 0, 'Ferrara', 'FER', 'FE', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(246, 1, 105, 0, 'Firenze', 'FIR', 'FI', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(247, 1, 105, 0, 'Foggia', 'FOG', 'FG', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(248, 1, 105, 0, 'Forli-Cesena', 'FOC', 'FC', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(249, 1, 105, 0, 'Frosinone', 'FRO', 'FR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(250, 1, 105, 0, 'Genova', 'GEN', 'GE', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(251, 1, 105, 0, 'Gorizia', 'GOR', 'GO', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(252, 1, 105, 0, 'Grosseto', 'GRO', 'GR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(253, 1, 105, 0, 'Imperia', 'IMP', 'IM', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(254, 1, 105, 0, 'Isernia', 'ISE', 'IS', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(255, 1, 105, 0, 'L''Aquila', 'AQU', 'AQ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(256, 1, 105, 0, 'La Spezia', 'LAS', 'SP', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(257, 1, 105, 0, 'Latina', 'LAT', 'LT', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(258, 1, 105, 0, 'Lecce', 'LEC', 'LE', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(259, 1, 105, 0, 'Lecco', 'LCC', 'LC', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(260, 1, 105, 0, 'Livorno', 'LIV', 'LI', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(261, 1, 105, 0, 'Lodi', 'LOD', 'LO', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(262, 1, 105, 0, 'Lucca', 'LUC', 'LU', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(263, 1, 105, 0, 'Macerata', 'MAC', 'MC', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(264, 1, 105, 0, 'Mantova', 'MAN', 'MN', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(265, 1, 105, 0, 'Massa-Carrara', 'MAS', 'MS', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(266, 1, 105, 0, 'Matera', 'MAA', 'MT', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(267, 1, 105, 0, 'Medio Campidano', 'MED', 'VS', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(268, 1, 105, 0, 'Messina', 'MES', 'ME', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(269, 1, 105, 0, 'Milano', 'MIL', 'MI', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(270, 1, 105, 0, 'Modena', 'MOD', 'MO', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(271, 1, 105, 0, 'Napoli', 'NAP', 'NA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(272, 1, 105, 0, 'Novara', 'NOV', 'NO', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(273, 1, 105, 0, 'Nuoro', 'NUR', 'NU', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(274, 1, 105, 0, 'Ogliastra', 'OGL', 'OG', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(275, 1, 105, 0, 'Olbia-Tempio', 'OLB', 'OT', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(276, 1, 105, 0, 'Oristano', 'ORI', 'OR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(277, 1, 105, 0, 'Padova', 'PDA', 'PD', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(278, 1, 105, 0, 'Palermo', 'PAL', 'PA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(279, 1, 105, 0, 'Parma', 'PAA', 'PR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(280, 1, 105, 0, 'Pavia', 'PAV', 'PV', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(281, 1, 105, 0, 'Perugia', 'PER', 'PG', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(282, 1, 105, 0, 'Pesaro e Urbino', 'PES', 'PU', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(283, 1, 105, 0, 'Pescara', 'PSC', 'PE', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(284, 1, 105, 0, 'Piacenza', 'PIA', 'PC', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(285, 1, 105, 0, 'Pisa', 'PIS', 'PI', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(286, 1, 105, 0, 'Pistoia', 'PIT', 'PT', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(287, 1, 105, 0, 'Pordenone', 'POR', 'PN', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(288, 1, 105, 0, 'Potenza', 'PTZ', 'PZ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(289, 1, 105, 0, 'Prato', 'PRA', 'PO', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(290, 1, 105, 0, 'Ragusa', 'RAG', 'RG', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(291, 1, 105, 0, 'Ravenna', 'RAV', 'RA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(292, 1, 105, 0, 'Reggio Calabria', 'REG', 'RC', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(293, 1, 105, 0, 'Reggio Emilia', 'REE', 'RE', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(294, 1, 105, 0, 'Rieti', 'RIE', 'RI', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(295, 1, 105, 0, 'Rimini', 'RIM', 'RN', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(296, 1, 105, 0, 'Roma', 'ROM', 'RM', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(297, 1, 105, 0, 'Rovigo', 'ROV', 'RO', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(298, 1, 105, 0, 'Salerno', 'SAL', 'SA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(299, 1, 105, 0, 'Sassari', 'SAS', 'SS', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(300, 1, 105, 0, 'Savona', 'SAV', 'SV', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(301, 1, 105, 0, 'Siena', 'SIE', 'SI', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(302, 1, 105, 0, 'Siracusa', 'SIR', 'SR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(303, 1, 105, 0, 'Sondrio', 'SOO', 'SO', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(304, 1, 105, 0, 'Taranto', 'TAR', 'TA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(305, 1, 105, 0, 'Teramo', 'TER', 'TE', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(306, 1, 105, 0, 'Terni', 'TRN', 'TR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(307, 1, 105, 0, 'Torino', 'TOR', 'TO', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(308, 1, 105, 0, 'Trapani', 'TRA', 'TP', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(309, 1, 105, 0, 'Trento', 'TRE', 'TN', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(310, 1, 105, 0, 'Treviso', 'TRV', 'TV', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(311, 1, 105, 0, 'Trieste', 'TRI', 'TS', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(312, 1, 105, 0, 'Udine', 'UDI', 'UD', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(313, 1, 105, 0, 'Varese', 'VAR', 'VA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(314, 1, 105, 0, 'Venezia', 'VEN', 'VE', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(315, 1, 105, 0, 'Verbano Cusio Ossola', 'VCO', 'VB', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(316, 1, 105, 0, 'Vercelli', 'VER', 'VC', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(317, 1, 105, 0, 'Verona', 'VRN', 'VR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(318, 1, 105, 0, 'Vibo Valenzia', 'VIV', 'VV', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(319, 1, 105, 0, 'Vicenza', 'VII', 'VI', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(320, 1, 105, 0, 'Viterbo', 'VIT', 'VT', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(321, 1, 195, 0, 'A Coru', 'ACO', '15', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(322, 1, 195, 0, 'Alava', 'ALA', '01', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(323, 1, 195, 0, 'Albacete', 'ALB', '02', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(324, 1, 195, 0, 'Alicante', 'ALI', '03', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(325, 1, 195, 0, 'Almeria', 'ALM', '04', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(326, 1, 195, 0, 'Asturias', 'AST', '33', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(327, 1, 195, 0, 'Avila', 'AVI', '05', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(328, 1, 195, 0, 'Badajoz', 'BAD', '06', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(329, 1, 195, 0, 'Baleares', 'BAL', '07', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(330, 1, 195, 0, 'Barcelona', 'BAR', '08', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(331, 1, 195, 0, 'Burgos', 'BUR', '09', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(332, 1, 195, 0, 'Caceres', 'CAC', '10', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(333, 1, 195, 0, 'Cadiz', 'CAD', '11', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(334, 1, 195, 0, 'Cantabria', 'CAN', '39', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(335, 1, 195, 0, 'Castellon', 'CAS', '12', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(336, 1, 195, 0, 'Ceuta', 'CEU', '51', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(337, 1, 195, 0, 'Ciudad Real', 'CIU', '13', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(338, 1, 195, 0, 'Cordoba', 'COR', '14', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(339, 1, 195, 0, 'Cuenca', 'CUE', '16', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(340, 1, 195, 0, 'Girona', 'GIR', '17', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(341, 1, 195, 0, 'Granada', 'GRA', '18', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(342, 1, 195, 0, 'Guadalajara', 'GUA', '19', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(343, 1, 195, 0, 'Guipuzcoa', 'GUI', '20', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(344, 1, 195, 0, 'Huelva', 'HUL', '21', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(345, 1, 195, 0, 'Huesca', 'HUS', '22', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(346, 1, 195, 0, 'Jaen', 'JAE', '23', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(347, 1, 195, 0, 'La Rioja', 'LRI', '26', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(348, 1, 195, 0, 'Las Palmas', 'LPA', '35', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(349, 1, 195, 0, 'Leon', 'LEO', '24', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(350, 1, 195, 0, 'Lleida', 'LLE', '25', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(351, 1, 195, 0, 'Lugo', 'LUG', '27', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(352, 1, 195, 0, 'Madrid', 'MAD', '28', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(353, 1, 195, 0, 'Malaga', 'MAL', '29', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(354, 1, 195, 0, 'Melilla', 'MEL', '52', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(355, 1, 195, 0, 'Murcia', 'MUR', '30', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(356, 1, 195, 0, 'Navarra', 'NAV', '31', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(357, 1, 195, 0, 'Ourense', 'OUR', '32', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(358, 1, 195, 0, 'Palencia', 'PAL', '34', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(359, 1, 195, 0, 'Pontevedra', 'PON', '36', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(360, 1, 195, 0, 'Salamanca', 'SAL', '37', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(361, 1, 195, 0, 'Santa Cruz de Tenerife', 'SCT', '38', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(362, 1, 195, 0, 'Segovia', 'SEG', '40', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(363, 1, 195, 0, 'Sevilla', 'SEV', '41', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(364, 1, 195, 0, 'Soria', 'SOR', '42', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(365, 1, 195, 0, 'Tarragona', 'TAR', '43', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(366, 1, 195, 0, 'Teruel', 'TER', '44', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(367, 1, 195, 0, 'Toledo', 'TOL', '45', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(368, 1, 195, 0, 'Valencia', 'VAL', '46', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(369, 1, 195, 0, 'Valladolid', 'VLL', '47', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(370, 1, 195, 0, 'Vizcaya', 'VIZ', '48', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(371, 1, 195, 0, 'Zamora', 'ZAM', '49', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(372, 1, 195, 0, 'Zaragoza', 'ZAR', '50', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(373, 1, 10, 0, 'Buenos Aires', 'BAS', 'BA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(374, 1, 10, 0, 'Ciudad Autonoma De Buenos Aires', 'CBA', 'CB', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(375, 1, 10, 0, 'Catamarca', 'CAT', 'CA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(376, 1, 10, 0, 'Chaco', 'CHO', 'CH', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(377, 1, 10, 0, 'Chubut', 'CTT', 'CT', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(378, 1, 10, 0, 'Cordoba', 'COD', 'CO', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(379, 1, 10, 0, 'Corrientes', 'CRI', 'CR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(380, 1, 10, 0, 'Entre Rios', 'ERS', 'ER', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(381, 1, 10, 0, 'Formosa', 'FRM', 'FR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(382, 1, 10, 0, 'Jujuy', 'JUJ', 'JU', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(383, 1, 10, 0, 'La Pampa', 'LPM', 'LP', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(384, 1, 10, 0, 'La Rioja', 'LRI', 'LR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(385, 1, 10, 0, 'Mendoza', 'MED', 'ME', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(386, 1, 10, 0, 'Misiones', 'MIS', 'MI', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(387, 1, 10, 0, 'Neuquen', 'NQU', 'NQ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(388, 1, 10, 0, 'Rio Negro', 'RNG', 'RN', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(389, 1, 10, 0, 'Salta', 'SAL', 'SA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0);
INSERT INTO `iw0sl_virtuemart_states` (`virtuemart_state_id`, `virtuemart_vendor_id`, `virtuemart_country_id`, `virtuemart_worldzone_id`, `state_name`, `state_3_code`, `state_2_code`, `ordering`, `shared`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(390, 1, 10, 0, 'San Juan', 'SJN', 'SJ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(391, 1, 10, 0, 'San Luis', 'SLU', 'SL', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(392, 1, 10, 0, 'Santa Cruz', 'SCZ', 'SC', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(393, 1, 10, 0, 'Santa Fe', 'SFE', 'SF', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(394, 1, 10, 0, 'Santiago Del Estero', 'SEN', 'SE', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(395, 1, 10, 0, 'Tierra Del Fuego', 'TFE', 'TF', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(396, 1, 10, 0, 'Tucuman', 'TUC', 'TU', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(397, 1, 11, 0, 'Aragatsotn', 'ARG', 'AG', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(398, 1, 11, 0, 'Ararat', 'ARR', 'AR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(399, 1, 11, 0, 'Armavir', 'ARM', 'AV', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(400, 1, 11, 0, 'Gegharkunik', 'GEG', 'GR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(401, 1, 11, 0, 'Kotayk', 'KOT', 'KT', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(402, 1, 11, 0, 'Lori', 'LOR', 'LO', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(403, 1, 11, 0, 'Shirak', 'SHI', 'SH', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(404, 1, 11, 0, 'Syunik', 'SYU', 'SU', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(405, 1, 11, 0, 'Tavush', 'TAV', 'TV', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(406, 1, 11, 0, 'Vayots-Dzor', 'VAD', 'VD', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(407, 1, 11, 0, 'Yerevan', 'YER', 'ER', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(408, 1, 99, 0, 'Andaman & Nicobar Islands', 'ANI', 'AI', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(409, 1, 99, 0, 'Andhra Pradesh', 'AND', 'AN', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(410, 1, 99, 0, 'Arunachal Pradesh', 'ARU', 'AR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(411, 1, 99, 0, 'Assam', 'ASS', 'AS', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(412, 1, 99, 0, 'Bihar', 'BIH', 'BI', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(413, 1, 99, 0, 'Chandigarh', 'CHA', 'CA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(414, 1, 99, 0, 'Chhatisgarh', 'CHH', 'CH', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(415, 1, 99, 0, 'Dadra & Nagar Haveli', 'DAD', 'DD', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(416, 1, 99, 0, 'Daman & Diu', 'DAM', 'DA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(417, 1, 99, 0, 'Delhi', 'DEL', 'DE', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(418, 1, 99, 0, 'Goa', 'GOA', 'GO', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(419, 1, 99, 0, 'Gujarat', 'GUJ', 'GU', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(420, 1, 99, 0, 'Haryana', 'HAR', 'HA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(421, 1, 99, 0, 'Himachal Pradesh', 'HIM', 'HI', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(422, 1, 99, 0, 'Jammu & Kashmir', 'JAM', 'JA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(423, 1, 99, 0, 'Jharkhand', 'JHA', 'JH', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(424, 1, 99, 0, 'Karnataka', 'KAR', 'KA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(425, 1, 99, 0, 'Kerala', 'KER', 'KE', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(426, 1, 99, 0, 'Lakshadweep', 'LAK', 'LA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(427, 1, 99, 0, 'Madhya Pradesh', 'MAD', 'MD', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(428, 1, 99, 0, 'Maharashtra', 'MAH', 'MH', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(429, 1, 99, 0, 'Manipur', 'MAN', 'MN', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(430, 1, 99, 0, 'Meghalaya', 'MEG', 'ME', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(431, 1, 99, 0, 'Mizoram', 'MIZ', 'MI', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(432, 1, 99, 0, 'Nagaland', 'NAG', 'NA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(433, 1, 99, 0, 'Orissa', 'ORI', 'OR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(434, 1, 99, 0, 'Pondicherry', 'PON', 'PO', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(435, 1, 99, 0, 'Punjab', 'PUN', 'PU', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(436, 1, 99, 0, 'Rajasthan', 'RAJ', 'RA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(437, 1, 99, 0, 'Sikkim', 'SIK', 'SI', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(438, 1, 99, 0, 'Tamil Nadu', 'TAM', 'TA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(439, 1, 99, 0, 'Tripura', 'TRI', 'TR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(440, 1, 99, 0, 'Uttaranchal', 'UAR', 'UA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(441, 1, 99, 0, 'Uttar Pradesh', 'UTT', 'UT', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(442, 1, 99, 0, 'West Bengal', 'WES', 'WE', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(443, 1, 101, 0, 'Ahmadi va Kohkiluyeh', 'BOK', 'BO', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(444, 1, 101, 0, 'Ardabil', 'ARD', 'AR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(445, 1, 101, 0, 'Azarbayjan-e Gharbi', 'AZG', 'AG', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(446, 1, 101, 0, 'Azarbayjan-e Sharqi', 'AZS', 'AS', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(447, 1, 101, 0, 'Bushehr', 'BUS', 'BU', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(448, 1, 101, 0, 'Chaharmahal va Bakhtiari', 'CMB', 'CM', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(449, 1, 101, 0, 'Esfahan', 'ESF', 'ES', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(450, 1, 101, 0, 'Fars', 'FAR', 'FA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(451, 1, 101, 0, 'Gilan', 'GIL', 'GI', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(452, 1, 101, 0, 'Gorgan', 'GOR', 'GO', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(453, 1, 101, 0, 'Hamadan', 'HAM', 'HA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(454, 1, 101, 0, 'Hormozgan', 'HOR', 'HO', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(455, 1, 101, 0, 'Ilam', 'ILA', 'IL', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(456, 1, 101, 0, 'Kerman', 'KER', 'KE', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(457, 1, 101, 0, 'Kermanshah', 'BAK', 'BA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(458, 1, 101, 0, 'Khorasan-e Junoubi', 'KHJ', 'KJ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(459, 1, 101, 0, 'Khorasan-e Razavi', 'KHR', 'KR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(460, 1, 101, 0, 'Khorasan-e Shomali', 'KHS', 'KS', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(461, 1, 101, 0, 'Khuzestan', 'KHU', 'KH', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(462, 1, 101, 0, 'Kordestan', 'KOR', 'KO', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(463, 1, 101, 0, 'Lorestan', 'LOR', 'LO', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(464, 1, 101, 0, 'Markazi', 'MAR', 'MR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(465, 1, 101, 0, 'Mazandaran', 'MAZ', 'MZ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(466, 1, 101, 0, 'Qazvin', 'QAS', 'QA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(467, 1, 101, 0, 'Qom', 'QOM', 'QO', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(468, 1, 101, 0, 'Semnan', 'SEM', 'SE', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(469, 1, 101, 0, 'Sistan va Baluchestan', 'SBA', 'SB', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(470, 1, 101, 0, 'Tehran', 'TEH', 'TE', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(471, 1, 101, 0, 'Yazd', 'YAZ', 'YA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(472, 1, 101, 0, 'Zanjan', 'ZAN', 'ZA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(535, 1, 84, 0, 'ΛΕΥΚΑΔΑΣ', 'ΛΕΥ', 'ΛΕ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(532, 1, 84, 0, 'ΛΑΡΙΣΑΣ', 'ΛΑΡ', 'ΛΡ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(504, 1, 84, 0, 'ΑΡΚΑΔΙΑΣ', 'ΑΡΚ', 'ΑΚ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(503, 1, 84, 0, 'ΑΡΓΟΛΙΔΑΣ', 'ΑΡΓ', 'ΑΡ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(533, 1, 84, 0, 'ΛΑΣΙΘΙΟΥ', 'ΛΑΣ', 'ΛΑ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(534, 1, 84, 0, 'ΛΕΣΒΟΥ', 'ΛΕΣ', 'ΛΣ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(530, 1, 84, 0, 'ΚΥΚΛΑΔΩΝ', 'ΚΥΚ', 'ΚΥ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(553, 1, 84, 0, 'ΑΙΤΩΛΟΑΚΑΡΝΑΝΙΑΣ', 'ΑΙΤ', 'ΑΙ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(529, 1, 84, 0, 'ΚΟΡΙΝΘΙΑΣ', 'ΚΟΡ', 'ΚΟ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(531, 1, 84, 0, 'ΛΑΚΩΝΙΑΣ', 'ΛΑΚ', 'ΛK', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(517, 1, 84, 0, 'ΗΜΑΘΙΑΣ', 'ΗΜΑ', 'ΗΜ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(518, 1, 84, 0, 'ΗΡΑΚΛΕΙΟΥ', 'ΗΡΑ', 'ΗΡ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(519, 1, 84, 0, 'ΘΕΣΠΡΩΤΙΑΣ', 'ΘΕΠ', 'ΘΠ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(520, 1, 84, 0, 'ΘΕΣΣΑΛΟΝΙΚΗΣ', 'ΘΕΣ', 'ΘΕ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(521, 1, 84, 0, 'ΙΩΑΝΝΙΝΩΝ', 'ΙΩΑ', 'ΙΩ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(522, 1, 84, 0, 'ΚΑΒΑΛΑΣ', 'ΚΑΒ', 'ΚΒ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(523, 1, 84, 0, 'ΚΑΡΔΙΤΣΑΣ', 'ΚΑΡ', 'ΚΡ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(524, 1, 84, 0, 'ΚΑΣΤΟΡΙΑΣ', 'ΚΑΣ', 'ΚΣ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(525, 1, 84, 0, 'ΚΕΡΚΥΡΑΣ', 'ΚΕΡ', 'ΚΕ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(526, 1, 84, 0, 'ΚΕΦΑΛΛΗΝΙΑΣ', 'ΚΕΦ', 'ΚΦ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(527, 1, 84, 0, 'ΚΙΛΚΙΣ', 'ΚΙΛ', 'ΚΙ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(528, 1, 84, 0, 'ΚΟΖΑΝΗΣ', 'ΚΟΖ', 'ΚZ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(507, 1, 84, 0, 'ΑΧΑΪΑΣ', 'ΑΧΑ', 'ΑΧ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(508, 1, 84, 0, 'ΒΟΙΩΤΙΑΣ', 'ΒΟΙ', 'ΒΟ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(509, 1, 84, 0, 'ΓΡΕΒΕΝΩΝ', 'ΓΡΕ', 'ΓΡ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(510, 1, 84, 0, 'ΔΡΑΜΑΣ', 'ΔΡΑ', 'ΔΡ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(511, 1, 84, 0, 'ΔΩΔΕΚΑΝΗΣΟΥ', 'ΔΩΔ', 'ΔΩ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(512, 1, 84, 0, 'ΕΒΡΟΥ', 'ΕΒΡ', 'ΕΒ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(513, 1, 84, 0, 'ΕΥΒΟΙΑΣ', 'ΕΥΒ', 'ΕΥ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(514, 1, 84, 0, 'ΕΥΡΥΤΑΝΙΑΣ', 'ΕΥΡ', 'ΕΡ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(515, 1, 84, 0, 'ΖΑΚΥΝΘΟΥ', 'ΖΑΚ', 'ΖΑ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(516, 1, 84, 0, 'ΗΛΕΙΑΣ', 'ΗΛΕ', 'ΗΛ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(505, 1, 84, 0, 'ΑΡΤΑΣ', 'ΑΡΤ', 'ΑΑ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(506, 1, 84, 0, 'ΑΤΤΙΚΗΣ', 'ΑΤΤ', 'ΑΤ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(536, 1, 84, 0, 'ΜΑΓΝΗΣΙΑΣ', 'ΜΑΓ', 'ΜΑ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(537, 1, 84, 0, 'ΜΕΣΣΗΝΙΑΣ', 'ΜΕΣ', 'ΜΕ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(538, 1, 84, 0, 'ΞΑΝΘΗΣ', 'ΞΑΝ', 'ΞΑ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(539, 1, 84, 0, 'ΠΕΛΛΗΣ', 'ΠΕΛ', 'ΠΕ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(540, 1, 84, 0, 'ΠΙΕΡΙΑΣ', 'ΠΙΕ', 'ΠΙ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(541, 1, 84, 0, 'ΠΡΕΒΕΖΑΣ', 'ΠΡΕ', 'ΠΡ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(542, 1, 84, 0, 'ΡΕΘΥΜΝΗΣ', 'ΡΕΘ', 'ΡΕ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(543, 1, 84, 0, 'ΡΟΔΟΠΗΣ', 'ΡΟΔ', 'ΡΟ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(544, 1, 84, 0, 'ΣΑΜΟΥ', 'ΣΑΜ', 'ΣΑ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(545, 1, 84, 0, 'ΣΕΡΡΩΝ', 'ΣΕΡ', 'ΣΕ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(546, 1, 84, 0, 'ΤΡΙΚΑΛΩΝ', 'ΤΡΙ', 'ΤΡ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(547, 1, 84, 0, 'ΦΘΙΩΤΙΔΑΣ', 'ΦΘΙ', 'ΦΘ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(548, 1, 84, 0, 'ΦΛΩΡΙΝΑΣ', 'ΦΛΩ', 'ΦΛ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(549, 1, 84, 0, 'ΦΩΚΙΔΑΣ', 'ΦΩΚ', 'ΦΩ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(550, 1, 84, 0, 'ΧΑΛΚΙΔΙΚΗΣ', 'ΧΑΛ', 'ΧΑ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(551, 1, 84, 0, 'ΧΑΝΙΩΝ', 'ΧΑΝ', 'ΧΝ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(552, 1, 84, 0, 'ΧΙΟΥ', 'ΧΙΟ', 'ΧΙ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(569, 1, 81, 0, 'Schleswig-Holstein', 'SHO', 'SH', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(554, 1, 81, 0, 'Freie und Hansestadt Hamburg', 'HAM', 'HH', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(555, 1, 81, 0, 'Niedersachsen', 'NIS', 'NI', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(556, 1, 81, 0, 'Freie Hansestadt Bremen', 'HBR', 'HB', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(557, 1, 81, 0, 'Nordrhein-Westfalen', 'NRW', 'NW', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(558, 1, 81, 0, 'Hessen', 'HES', 'HE', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(559, 1, 81, 0, 'Rheinland-Pfalz', 'RLP', 'RP', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(560, 1, 81, 0, 'Baden-Württemberg', 'BWÜ', 'BW', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(561, 1, 81, 0, 'Freistaat Bayern', 'BAV', 'BY', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(562, 1, 81, 0, 'Saarland', 'SLA', 'SL', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(563, 1, 81, 0, 'Berlin', 'BER', 'BE', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(564, 1, 81, 0, 'Brandenburg', 'BRB', 'BB', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(565, 1, 81, 0, 'Mecklenburg-Vorpommern', 'MVO', 'MV', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(566, 1, 81, 0, 'Freistaat Sachsen', 'SAC', 'SN', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(567, 1, 81, 0, 'Sachsen-Anhalt', 'SAA', 'ST', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(568, 1, 81, 0, 'Freistaat Thüringen', 'THÜ', 'TH', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(570, 1, 176, 0, 'Адыгея Республика', 'AD', '01', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(571, 1, 176, 0, 'Алтай Республика', 'AL', '04', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(572, 1, 176, 0, 'Алтайский край', 'ALT', '22', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(573, 1, 176, 0, 'Амурская область', 'AMU', '28', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(574, 1, 176, 0, 'Архангельская область', 'ARK', '29', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(575, 1, 176, 0, 'Астраханская область', 'AST', '30', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(576, 1, 176, 0, 'Башкортостан Республика', 'BA', '02', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(577, 1, 176, 0, 'Белгородская область', 'BEL', '31', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(578, 1, 176, 0, 'Брянская область', 'BRY', '32', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(579, 1, 176, 0, 'Бурятия Республика', 'BU', '03', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(580, 1, 176, 0, 'Владимирская область', 'VLA', '33', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(581, 1, 176, 0, 'Волгоградская область', 'VGG', '34', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(582, 1, 176, 0, 'Вологодская область', 'VLG', '35', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(583, 1, 176, 0, 'Воронежская область', 'VOR', '36', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(584, 1, 176, 0, 'Дагестан Республика', 'DA', '05', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(585, 1, 176, 0, 'Еврейская автономная область', 'YEV', '79', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(586, 1, 176, 0, 'Забайкальский край', 'ZAB', '75', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(587, 1, 176, 0, 'Ивановская область', 'IVA', '37', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(588, 1, 176, 0, 'Ингушетия Республика', 'IN', '06', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(589, 1, 176, 0, 'Иркутская область', 'IRK', '38', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(590, 1, 176, 0, 'Кабардино-Балкарская Республика', 'KB', '07', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(591, 1, 176, 0, 'Калининградская область', 'KGD', '39', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(592, 1, 176, 0, 'Калмыкия Республика', 'KL', '08', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(593, 1, 176, 0, 'Калужская область', 'KLU', '40', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(594, 1, 176, 0, 'Камчатский край', 'KAM', '41', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(595, 1, 176, 0, 'Карачаево-Черкесская Республика', 'KC', '09', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(596, 1, 176, 0, 'Карелия Республика', 'KR', '10', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(597, 1, 176, 0, 'Кемеровская область', 'KEM', '42', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(598, 1, 176, 0, 'Кировская область', 'KIR', '43', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(599, 1, 176, 0, 'Коми Республика', 'KO', '11', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(600, 1, 176, 0, 'Костромская область', 'KOS', '44', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(601, 1, 176, 0, 'Краснодарский край', 'KDA', '23', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(602, 1, 176, 0, 'Красноярский край', 'KIA', '24', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(603, 1, 176, 0, 'Курганская область', 'KGN', '45', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(604, 1, 176, 0, 'Курская область', 'KRS', '46', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(605, 1, 176, 0, 'Ленинградская область', 'LEN', '47', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(606, 1, 176, 0, 'Липецкая область', 'LIP', '48', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(607, 1, 176, 0, 'Магаданская область', 'MAG', '49', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(608, 1, 176, 0, 'Марий Эл Республика', 'ME', '12', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(609, 1, 176, 0, 'Мордовия Республика', 'MO', '13', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(610, 1, 176, 0, 'Москва', 'MOW', '77', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(611, 1, 176, 0, 'Московская область', 'MOS', '50', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(612, 1, 176, 0, 'Мурманская область', 'MUR', '51', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(613, 1, 176, 0, 'Ненецкий автономный округ', 'NEN', '83', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(614, 1, 176, 0, 'Нижегородская область', 'NIZ', '52', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(615, 1, 176, 0, 'Новгородская область', 'NGR', '53', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(616, 1, 176, 0, 'Новосибирская область', 'NVS', '54', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(617, 1, 176, 0, 'Омская область', 'OMS', '55', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(618, 1, 176, 0, 'Оренбургская область', 'ORE', '56', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(619, 1, 176, 0, 'Орловская область', 'ORL', '57', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(620, 1, 176, 0, 'Пензенская область', 'PNZ', '58', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(621, 1, 176, 0, 'Пермский край', 'PER', '59', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(622, 1, 176, 0, 'Приморский край', 'PRI', '25', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(623, 1, 176, 0, 'Псковская область', 'PSK', '60', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(624, 1, 176, 0, 'Ростовская область', 'ROS', '61', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(625, 1, 176, 0, 'Рязанская область', 'RYA', '62', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(626, 1, 176, 0, 'Самарская область', 'SAM', '63', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(627, 1, 176, 0, 'Санкт-Петербург', 'SPE', '78', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(628, 1, 176, 0, 'Саратовская область', 'SAR', '64', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(629, 1, 176, 0, 'Саха (Якутия) Республика', 'SA', '14', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(630, 1, 176, 0, 'Сахалинская область', 'SAK', '65', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(631, 1, 176, 0, 'Свердловская область', 'SVE', '66', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(632, 1, 176, 0, 'Северная Осетия-Алания Республика', 'SE', '15', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(633, 1, 176, 0, 'Смоленская область', 'SMO', '67', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(634, 1, 176, 0, 'Ставропольский край', 'STA', '26', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(635, 1, 176, 0, 'Тамбовская область', 'TAM', '68', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(636, 1, 176, 0, 'Татарстан Республика', 'TA', '16', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(637, 1, 176, 0, 'Тверская область', 'TVE', '69', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(638, 1, 176, 0, 'Томская область', 'TOM', '70', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(639, 1, 176, 0, 'Тульская область', 'TUL', '71', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(640, 1, 176, 0, 'Тыва Республика', 'TY', '17', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(641, 1, 176, 0, 'Тюменская область', 'TYU', '72', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(642, 1, 176, 0, 'Удмуртская Республика', 'UD', '18', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(643, 1, 176, 0, 'Ульяновская область', 'ULY', '73', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(644, 1, 176, 0, 'Хакасия Республика', 'KK', '19', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(645, 1, 176, 0, 'Челябинская область', 'CHE', '74', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(646, 1, 176, 0, 'Чеченская Республика', 'CE', '20', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(647, 1, 176, 0, 'Чувашская Республика', 'CU', '21', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(648, 1, 176, 0, 'Чукотский автономный округ', 'CHU', '87', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(649, 1, 176, 0, 'Хабаровский край', 'KHA', '27', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(650, 1, 176, 0, 'Ханты-Мансийский автономный округ', 'KHM', '86', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(651, 1, 176, 0, 'Ямало-Ненецкий автономный округ', 'YAN', '89', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(652, 1, 176, 0, 'Ярославская область', 'YAR', '76', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(653, 1, 209, 0, 'กระบี่', 'กบ', 'กบ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(654, 1, 209, 0, 'กรุงเทพมหานคร', 'กทม', 'กท', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(655, 1, 209, 0, 'กาญจนบุรี', 'กจ', 'กจ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(656, 1, 209, 0, 'กาฬสินธุ์', 'กส', 'กส', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(657, 1, 209, 0, 'กำแพงเพชร', 'กพ', 'กพ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(658, 1, 209, 0, 'ขอนแก่น', 'ขก', 'ขก', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(659, 1, 209, 0, 'จันทบุรี', 'จบ', 'จบ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(660, 1, 209, 0, 'ฉะเชิงเทรา', 'ฉช', 'ฉช', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(661, 1, 209, 0, 'ชลบุรี', 'ชบ', 'ชบ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(662, 1, 209, 0, 'ชัยนาท', 'ชน', 'ชน', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(663, 1, 209, 0, 'ชัยภูมิ', 'ชย', 'ชย', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(664, 1, 209, 0, 'ชุมพร', 'ชพ', 'ชพ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(665, 1, 209, 0, 'เชียงราย', 'ชร', 'ชร', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(666, 1, 209, 0, 'เชียงใหม่', 'ชม', 'ชม', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(667, 1, 209, 0, 'ตรัง', 'ตง', 'ตง', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(668, 1, 209, 0, 'ตราด', 'ตร', 'ตร', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(669, 1, 209, 0, 'ตาก', 'ตก', 'ตก', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(670, 1, 209, 0, 'นครนายก', 'นย', 'นย', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(671, 1, 209, 0, 'นครปฐม', 'นฐ', 'นฐ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(672, 1, 209, 0, 'นครพนม', 'นพ', 'นพ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(673, 1, 209, 0, 'นครราชสีมา', 'นม', 'นม', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(674, 1, 209, 0, 'นครศรีธรรมราช', 'นศ', 'นศ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(675, 1, 209, 0, 'นครสวรรค์', 'นว', 'นว', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(676, 1, 209, 0, 'นนทบุรี', 'นบ', 'นบ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(677, 1, 209, 0, 'นราธิวาส', 'นธ', 'นธ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(678, 1, 209, 0, 'น่าน', 'นน', 'นน', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(679, 1, 209, 0, 'บุรีรัมย์', 'บร', 'บร', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(680, 1, 209, 0, 'บึงกาฬ', 'บก', 'บก', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(681, 1, 209, 0, 'ปทุมธานี', 'ปท', 'ปท', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(682, 1, 209, 0, 'ประจวบคีรีขันธ์', 'ปข', 'ปข', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(683, 1, 209, 0, 'ปราจีนบุรี', 'ปจ', 'ปจ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(684, 1, 209, 0, 'ปัตตานี', 'ปน', 'ปน', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(685, 1, 209, 0, 'พระนครศรีอยุธยา', 'อย', 'อย', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(686, 1, 209, 0, 'พังงา', 'พง', 'พง', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(687, 1, 209, 0, 'พัทลุง', 'พท', 'พท', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(688, 1, 209, 0, 'พิจิตร', 'พจ', 'พจ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(689, 1, 209, 0, 'พิษณุโลก', 'พล', 'พล', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(690, 1, 209, 0, 'เพชรบุรี', 'พบ', 'พบ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(691, 1, 209, 0, 'เพชรบูรณ์', 'พช', 'พช', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(692, 1, 209, 0, 'แพร่', 'พร', 'พร', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(693, 1, 209, 0, 'พะเยา', 'พย', 'พย', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(694, 1, 209, 0, 'ภูเก็ต', 'ภก', 'ภก', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(695, 1, 209, 0, 'มหาสารคาม', 'มค', 'มค', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(696, 1, 209, 0, 'แม่ฮ่องสอน', 'มส', 'มส', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(697, 1, 209, 0, 'มุกดาหาร', 'มห', 'มห', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(698, 1, 209, 0, 'ยะลา', 'ยล', 'ยล', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(699, 1, 209, 0, 'ยโสธร', 'ยส', 'ยส', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(700, 1, 209, 0, 'ร้อยเอ็ด', 'รอ', 'รอ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(701, 1, 209, 0, 'ระนอง', 'รน', 'รน', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(702, 1, 209, 0, 'ระยอง', 'รย', 'รย', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(703, 1, 209, 0, 'ราชบุรี', 'รบ', 'รบ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(704, 1, 209, 0, 'ลพบุรี', 'ลบ', 'ลบ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(705, 1, 209, 0, 'ลำปาง', 'ลป', 'ลป', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(706, 1, 209, 0, 'ลำพูน', 'ลพ', 'ลพ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(707, 1, 209, 0, 'เลย', 'ลย', 'ลย', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(708, 1, 209, 0, 'ศรีสะเกษ', 'ศก', 'ศก', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(709, 1, 209, 0, 'สกลนคร', 'สน', 'สน', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(710, 1, 209, 0, 'สงขลา', 'สข', 'สข', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(711, 1, 209, 0, 'สตูล', 'สต', 'สต', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(712, 1, 209, 0, 'สมุทรปราการ', 'สป', 'สป', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(713, 1, 209, 0, 'สมุทรสงคราม', 'สส', 'สส', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(714, 1, 209, 0, 'สมุทรสาคร', 'สค', 'สค', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(715, 1, 209, 0, 'สระบุรี', 'สบ', 'สบ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(716, 1, 209, 0, 'สระแก้ว', 'สก', 'สก', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(717, 1, 209, 0, 'สิงห์บุรี', 'สห', 'สห', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(718, 1, 209, 0, 'สุโขทัย', 'สท', 'สท', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(719, 1, 209, 0, 'สุพรรณบุรี', 'สพ', 'สพ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(720, 1, 209, 0, 'สุราษฎร์ธานี', 'สฎ', 'สฎ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(721, 1, 209, 0, 'สุรินทร์', 'สร', 'สร', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(722, 1, 209, 0, 'หนองคาย', 'นค', 'นค', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(723, 1, 209, 0, 'หนองบัวลำภู', 'นภ', 'นภ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(724, 1, 209, 0, 'อ่างทอง', 'อท', 'อท', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(725, 1, 209, 0, 'อุดรธานี', 'อด', 'อด', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(726, 1, 209, 0, 'อุตรดิตถ์', 'อต', 'อต', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(727, 1, 209, 0, 'อุทัยธานี', 'อน', 'อน', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(728, 1, 209, 0, 'อุบลราชธานี', 'อบ', 'อบ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(729, 1, 209, 0, 'อำนาจเจริญ', 'อจ', 'อจ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(730, 1, 150, 0, 'Drenthe', 'DR', 'DR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(731, 1, 150, 0, 'Flevoland', 'FLV', 'FL', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(732, 1, 150, 0, 'Friesland', 'FR', 'FR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(733, 1, 150, 0, 'Gelderland', 'GLD', 'GL', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(734, 1, 150, 0, 'Groningen', 'GR', 'GR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(735, 1, 150, 0, 'Limburg', 'LB', 'LB', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(736, 1, 150, 0, 'Noord-Brabant', 'NB', 'NB', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(737, 1, 150, 0, 'Noord-Holland', 'NH', 'NH', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(738, 1, 150, 0, 'Overijssel', 'OVR', 'OV', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(739, 1, 150, 0, 'Utrecht', 'UT', 'UT', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(740, 1, 150, 0, 'Zuid-Holland', 'ZH', 'ZH', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(741, 1, 150, 0, 'Zeeland', 'ZL', 'ZL', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(742, 1, 21, 0, 'Antwerpen', 'ant', 'AW', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(743, 1, 21, 0, 'Limburg', 'lim', 'LI', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(744, 1, 21, 0, 'Oost-Vlaanderen', 'ov', 'OV', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(745, 1, 21, 0, 'Vlaams-Brabant', 'vb', 'VB', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(746, 1, 21, 0, 'West-Vlaanderen', 'wv', 'WV', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(747, 1, 21, 0, 'Waals-Brabant (Brabant wallon)', 'wb', 'WB', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(748, 1, 21, 0, 'Henegouwen (Hainaut),', 'he', 'HE', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(749, 1, 21, 0, 'Luik (Liège/Lüttich)', 'lui', 'LU', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(750, 1, 21, 0, 'Luxemburg (Luxembourg)', 'lux', 'LX', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(751, 1, 215, 0, 'Adana', 'ADN', '01', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(752, 1, 215, 0, 'Adıyaman', 'ADY', '02', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(753, 1, 215, 0, 'Afyon', 'AFN', '03', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(754, 1, 215, 0, 'Ağrı', 'AGR', '04', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(755, 1, 215, 0, 'Amasya', 'AMS', '05', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(756, 1, 215, 0, 'Ankara', 'ANK', '06', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(757, 1, 215, 0, 'Antalya', 'ANT', '07', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(758, 1, 215, 0, 'Artvin', 'ART', '08', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(759, 1, 215, 0, 'Aydın', 'AYD', '09', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(760, 1, 215, 0, 'Balıkesir', 'BLK', '10', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(761, 1, 215, 0, 'Bilecik', 'BLC', '11', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(762, 1, 215, 0, 'Bingöl', 'BIN', '12', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(763, 1, 215, 0, 'Bitlis', 'BIT', '13', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(764, 1, 215, 0, 'Bolu', 'BOL', '14', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(765, 1, 215, 0, 'Burdur', 'DRD', '15', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(766, 1, 215, 0, 'Bursa', 'BUR', '16', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(767, 1, 215, 0, 'Çanakkale', 'CNK', '17', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(768, 1, 215, 0, 'Çankırı', 'CAK', '18', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0);
INSERT INTO `iw0sl_virtuemart_states` (`virtuemart_state_id`, `virtuemart_vendor_id`, `virtuemart_country_id`, `virtuemart_worldzone_id`, `state_name`, `state_3_code`, `state_2_code`, `ordering`, `shared`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(769, 1, 215, 0, 'Çorum', 'COR', '19', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(770, 1, 215, 0, 'Denizli', 'DEN', '20', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(771, 1, 215, 0, 'Diyarbakır', 'DYB', '21', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(772, 1, 215, 0, 'Edirne', 'EDR', '22', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(773, 1, 215, 0, 'Elazığ', 'ELZ', '23', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(774, 1, 215, 0, 'Erzincan', 'ERN', '24', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(775, 1, 215, 0, 'Erzurum', 'ERZ', '25', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(776, 1, 215, 0, 'Eskişehir', 'ESK', '26', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(777, 1, 215, 0, 'Gaziantep', 'GZA', '27', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(778, 1, 215, 0, 'Giresun', 'GRS', '28', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(779, 1, 215, 0, 'Gümüşhane', 'GMH', '29', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(780, 1, 215, 0, 'Hakkari', 'HKK', '30', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(781, 1, 215, 0, 'Hatay', 'HTY', '31', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(782, 1, 215, 0, 'Isparta', 'ISP', '32', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(783, 1, 215, 0, 'İçel (Mersin)', 'ICE', '33', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(784, 1, 215, 0, 'İstanbul', 'IST', '34', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(785, 1, 215, 0, 'İzmir', 'IZM', '35', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(786, 1, 215, 0, 'Kars', 'KRS', '36', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(787, 1, 215, 0, 'Kastamonu', 'KST', '37', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(788, 1, 215, 0, 'Kayseri', 'KYS', '38', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(789, 1, 215, 0, 'Kırklareli', 'KIR', '39', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(790, 1, 215, 0, 'Kırşehir', 'KIS', '40', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(791, 1, 215, 0, 'Kocaeli', 'KCL', '41', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(792, 1, 215, 0, 'Konya', 'KNY', '42', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(793, 1, 215, 0, 'Kütahya', 'KTH', '43', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(794, 1, 215, 0, 'Malatya', 'MLT', '44', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(795, 1, 215, 0, 'Manisa', 'MNS', '45', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(796, 1, 215, 0, 'K.maraş', 'KAH', '46', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(797, 1, 215, 0, 'Mardin', 'MRD', '47', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(798, 1, 215, 0, 'Muğla', 'MGL', '48', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(799, 1, 215, 0, 'Muş', 'MUS', '49', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(800, 1, 215, 0, 'Nevşehir', 'NEV', '50', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(801, 1, 215, 0, 'Niğde', 'NIG', '51', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(802, 1, 215, 0, 'Ordu', 'ORD', '52', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(803, 1, 215, 0, 'Rize', 'RIZ', '53', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(804, 1, 215, 0, 'Sakarya', 'SKR', '54', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(805, 1, 215, 0, 'Samsun', 'SMS', '55', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(806, 1, 215, 0, 'Siirt', 'SRT', '56', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(807, 1, 215, 0, 'Sinop', 'SNP', '57', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(808, 1, 215, 0, 'Sivas', 'SVS', '58', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(809, 1, 215, 0, 'Tekirdağ', 'TKR', '59', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(810, 1, 215, 0, 'Tokat', 'TKT', '60', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(811, 1, 215, 0, 'Trabzon', 'TRZ', '61', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(812, 1, 215, 0, 'Tunceli', 'TUN', '62', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(813, 1, 215, 0, 'Şanlıurfa', 'SNF', '63', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(814, 1, 215, 0, 'Uşak', 'USK', '64', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(815, 1, 215, 0, 'Van', 'VAN', '65', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(816, 1, 215, 0, 'Yozgat', 'YZT', '66', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(817, 1, 215, 0, 'Zonguldak', 'ZNG', '67', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(818, 1, 215, 0, 'Aksaray', 'AKS', '68', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(819, 1, 215, 0, 'Bayburt', 'BYB', '69', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(820, 1, 215, 0, 'Karaman', 'KRM', '70', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(821, 1, 215, 0, 'Kırıkkale', 'KRK', '71', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(822, 1, 215, 0, 'Batman', 'BTM', '72', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(823, 1, 215, 0, 'Şırnak', 'SRK', '73', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(824, 1, 215, 0, 'Bartın', 'BRT', '74', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(825, 1, 215, 0, 'Ardahan', 'ARH', '75', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(826, 1, 215, 0, 'Iğdır', 'IGD', '76', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(827, 1, 215, 0, 'Yalova', 'TLV', '77', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(828, 1, 215, 0, 'Karabük', 'KRB', '78', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(829, 1, 215, 0, 'Kilis', 'KLS', '79', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(830, 1, 215, 0, 'Osmaniye', 'OSM', '80', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(831, 1, 215, 0, 'Düzce', 'DZC', '81', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_virtuemart_userfields`
--

CREATE TABLE IF NOT EXISTS `iw0sl_virtuemart_userfields` (
  `virtuemart_userfield_id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_vendor_id` int(1) unsigned NOT NULL DEFAULT '1',
  `userfield_jplugin_id` int(1) NOT NULL DEFAULT '0',
  `name` char(255) NOT NULL DEFAULT '',
  `title` char(255) NOT NULL DEFAULT '',
  `description` varchar(2048) DEFAULT NULL,
  `type` char(70) NOT NULL DEFAULT '',
  `maxlength` int(1) DEFAULT NULL,
  `size` int(1) DEFAULT NULL,
  `required` tinyint(4) NOT NULL DEFAULT '0',
  `cols` int(1) DEFAULT NULL,
  `rows` int(1) DEFAULT NULL,
  `value` char(255) DEFAULT NULL,
  `default` char(255) DEFAULT NULL,
  `registration` tinyint(1) NOT NULL DEFAULT '0',
  `shipment` tinyint(1) NOT NULL DEFAULT '0',
  `account` tinyint(1) NOT NULL DEFAULT '1',
  `cart` tinyint(1) NOT NULL DEFAULT '0',
  `readonly` tinyint(1) NOT NULL DEFAULT '0',
  `calculated` tinyint(1) NOT NULL DEFAULT '0',
  `sys` tinyint(4) NOT NULL DEFAULT '0',
  `userfield_params` varchar(17000) NOT NULL DEFAULT '',
  `ordering` int(1) NOT NULL DEFAULT '0',
  `shared` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_userfield_id`),
  UNIQUE KEY `name` (`name`),
  KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`),
  KEY `ordering` (`ordering`),
  KEY `shared` (`shared`),
  KEY `published` (`published`),
  KEY `account` (`account`),
  KEY `shipment` (`shipment`),
  KEY `cart` (`cart`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Holds the fields for the user information' AUTO_INCREMENT=52 ;

--
-- Дамп данных таблицы `iw0sl_virtuemart_userfields`
--

INSERT INTO `iw0sl_virtuemart_userfields` (`virtuemart_userfield_id`, `virtuemart_vendor_id`, `userfield_jplugin_id`, `name`, `title`, `description`, `type`, `maxlength`, `size`, `required`, `cols`, `rows`, `value`, `default`, `registration`, `shipment`, `account`, `cart`, `readonly`, `calculated`, `sys`, `userfield_params`, `ordering`, `shared`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(5, 0, 0, 'email', 'COM_VIRTUEMART_REGISTER_EMAIL', '', 'emailaddress', 100, 30, 1, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 0, 0, 1, '', 4, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(6, 0, 0, 'name', 'COM_VIRTUEMART_USER_DISPLAYED_NAME', '', 'text', 25, 30, 1, 0, 0, '', NULL, 1, 0, 1, 0, 0, 0, 1, '', 8, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(7, 0, 0, 'username', 'COM_VIRTUEMART_USERNAME', '', 'text', 25, 30, 1, 0, 0, '', NULL, 1, 0, 1, 0, 0, 0, 1, '', 6, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(8, 0, 0, 'password', 'COM_VIRTUEMART_SHOPPER_FORM_PASSWORD_1', '', 'password', 25, 30, 1, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 0, 0, 1, '', 10, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(9, 0, 0, 'password2', 'COM_VIRTUEMART_SHOPPER_FORM_PASSWORD_2', '', 'password', 25, 30, 1, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 0, 0, 1, '', 12, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(15, 0, 0, 'agreed', 'COM_VIRTUEMART_I_AGREE_TO_TOS', '', 'checkbox', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 1, '', 13, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(16, 0, 0, 'tos', 'COM_VIRTUEMART_STORE_FORM_TOS', '', 'custom', NULL, NULL, 1, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 0, 0, 1, '', 14, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(17, 0, 0, 'customer_note', 'COM_VIRTUEMART_CNOTES_CART', '', 'textarea', 2500, NULL, 0, 60, 1, NULL, NULL, 0, 0, 0, 1, 0, 0, 1, '', 13, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(20, 0, 0, 'address_type_name', 'COM_VIRTUEMART_USER_FORM_ADDRESS_LABEL', '', 'text', 32, 30, 1, NULL, NULL, NULL, 'COM_VIRTUEMART_USER_FORM_ST_LABEL', 0, 1, 0, 0, 0, 0, 1, '', 16, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(21, 0, 0, 'delimiter_billto', 'COM_VIRTUEMART_USER_FORM_BILLTO_LBL', '', 'delimiter', 25, 30, 0, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 0, 0, 0, '', 18, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(22, 0, 0, 'company', 'COM_VIRTUEMART_SHOPPER_FORM_COMPANY_NAME', '', 'text', 64, 30, 0, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, 0, 1, '', 20, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(23, 0, 0, 'title', 'COM_VIRTUEMART_SHOPPER_FORM_TITLE', '', 'select', 0, 210, 0, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 0, 0, 1, '', 22, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(24, 0, 0, 'first_name', 'COM_VIRTUEMART_SHOPPER_FORM_FIRST_NAME', '', 'text', 32, 30, 1, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, 0, 1, '', 24, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(25, 0, 0, 'middle_name', 'COM_VIRTUEMART_SHOPPER_FORM_MIDDLE_NAME', '', 'text', 32, 30, 0, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, 0, 1, '', 26, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(26, 0, 0, 'last_name', 'COM_VIRTUEMART_SHOPPER_FORM_LAST_NAME', '', 'text', 32, 30, 1, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, 0, 1, '', 28, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(27, 0, 0, 'address_1', 'COM_VIRTUEMART_SHOPPER_FORM_ADDRESS_1', '', 'text', 64, 30, 1, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, 0, 1, '', 30, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(28, 0, 0, 'address_2', 'COM_VIRTUEMART_SHOPPER_FORM_ADDRESS_2', '', 'text', 64, 30, 0, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, 0, 1, '', 32, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(29, 0, 0, 'zip', 'COM_VIRTUEMART_SHOPPER_FORM_ZIP', '', 'text', 32, 30, 1, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, 0, 1, '', 34, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(35, 0, 0, 'city', 'COM_VIRTUEMART_SHOPPER_FORM_CITY', '', 'text', 32, 30, 1, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, 0, 1, '', 36, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(36, 0, 0, 'virtuemart_country_id', 'COM_VIRTUEMART_SHOPPER_FORM_COUNTRY', '', 'select', 0, 210, 1, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, 0, 1, '', 38, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(37, 0, 0, 'virtuemart_state_id', 'COM_VIRTUEMART_SHOPPER_FORM_STATE', '', 'select', 0, 210, 1, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, 0, 1, '', 40, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(38, 0, 0, 'phone_1', 'COM_VIRTUEMART_SHOPPER_FORM_PHONE', '', 'text', 32, 30, 0, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, 0, 1, '', 42, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(39, 0, 0, 'phone_2', 'COM_VIRTUEMART_SHOPPER_FORM_PHONE2', '', 'text', 32, 30, 0, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, 0, 1, '', 44, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(40, 0, 0, 'fax', 'COM_VIRTUEMART_SHOPPER_FORM_FAX', '', 'text', 32, 30, 0, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, 0, 1, '', 46, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(41, 0, 0, 'delimiter_sendregistration', 'COM_VIRTUEMART_BUTTON_SEND_REG', '', 'delimiter', 25, 30, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, '', 2, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(42, 0, 0, 'delimiter_userinfo', 'COM_VIRTUEMART_ORDER_PRINT_CUST_INFO_LBL', '', 'delimiter', NULL, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 0, 0, 0, '', 14, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(50, 0, 0, 'tax_exemption_number', 'COM_VIRTUEMART_SHOPPER_FORM_TAXEXEMPTION_NBR', 'Vendors can set here a tax exemption number for a shopper. This field is only changeable by administrators.', 'text', 10, 0, 0, 0, 0, NULL, NULL, 0, 0, 1, 1, 0, 0, 0, '', 48, 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(51, 0, 0, 'tax_usage_type', 'COM_VIRTUEMART_SHOPPER_FORM_TAX_USAGE', 'Federal, national, educational, public, or similar often get a special tax. This field is only writable by administrators.', 'select', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 1, 1, 0, 0, 0, '', 50, 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_virtuemart_userfield_values`
--

CREATE TABLE IF NOT EXISTS `iw0sl_virtuemart_userfield_values` (
  `virtuemart_userfield_value_id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_userfield_id` int(1) unsigned NOT NULL DEFAULT '0',
  `fieldtitle` char(255) NOT NULL DEFAULT '',
  `fieldvalue` char(255) NOT NULL DEFAULT '',
  `sys` tinyint(4) NOT NULL DEFAULT '0',
  `ordering` int(1) NOT NULL DEFAULT '0',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_userfield_value_id`),
  KEY `virtuemart_userfield_id` (`virtuemart_userfield_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Holds the different values for dropdown and radio lists' AUTO_INCREMENT=20 ;

--
-- Дамп данных таблицы `iw0sl_virtuemart_userfield_values`
--

INSERT INTO `iw0sl_virtuemart_userfield_values` (`virtuemart_userfield_value_id`, `virtuemart_userfield_id`, `fieldtitle`, `fieldvalue`, `sys`, `ordering`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1, 23, 'COM_VIRTUEMART_SHOPPER_TITLE_MR', 'Mr', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(2, 23, 'COM_VIRTUEMART_SHOPPER_TITLE_MRS', 'Mrs', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(3, 51, 'None', '', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(4, 51, 'Non-resident (Canada)', 'R', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(5, 51, 'Federal government (United States)', 'A', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(6, 51, 'State government (United States)', 'B', 0, 2, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(7, 51, 'Tribe / Status Indian / Indian Band (both)', 'C', 0, 3, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(8, 51, 'Foreign diplomat (both)', 'D', 0, 4, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(9, 51, 'Charitable or benevolent org (both)', 'E', 0, 5, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(10, 51, 'Religious or educational org (both)', 'F', 0, 6, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(11, 51, 'Resale (both)', 'G', 0, 7, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(12, 51, 'Commercial agricultural production (both)', 'H', 0, 8, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(13, 51, 'Industrial production / manufacturer (both)', 'I', 0, 9, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(14, 51, 'Direct pay permit (United States)', 'J', 0, 10, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(15, 51, 'Direct mail (United States)', 'K', 0, 11, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(16, 51, 'Other (both)', 'L', 0, 12, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(17, 51, 'Local government (United States)', 'N', 0, 13, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(18, 51, 'Commercial aquaculture (Canada)', 'P', 0, 14, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(19, 51, 'Commercial Fishery (Canada)', 'Q', 0, 15, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_virtuemart_userinfos`
--

CREATE TABLE IF NOT EXISTS `iw0sl_virtuemart_userinfos` (
  `virtuemart_userinfo_id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_user_id` int(1) unsigned NOT NULL DEFAULT '0',
  `address_type` char(2) NOT NULL DEFAULT '',
  `address_type_name` varchar(32) NOT NULL DEFAULT '',
  `company` varchar(64) DEFAULT NULL,
  `title` varchar(32) DEFAULT NULL,
  `last_name` varchar(96) DEFAULT NULL,
  `first_name` varchar(96) DEFAULT NULL,
  `middle_name` varchar(96) DEFAULT NULL,
  `phone_1` varchar(32) DEFAULT NULL,
  `phone_2` varchar(32) DEFAULT NULL,
  `fax` varchar(32) DEFAULT NULL,
  `address_1` varchar(96) NOT NULL DEFAULT '',
  `address_2` varchar(64) DEFAULT NULL,
  `city` varchar(96) NOT NULL DEFAULT '',
  `virtuemart_state_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_country_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `zip` varchar(32) NOT NULL DEFAULT '',
  `agreed` tinyint(1) NOT NULL DEFAULT '0',
  `tos` tinyint(1) NOT NULL DEFAULT '0',
  `customer_note` varchar(5000) NOT NULL DEFAULT '',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_userinfo_id`),
  KEY `i_virtuemart_user_id` (`virtuemart_userinfo_id`,`virtuemart_user_id`),
  KEY `virtuemart_user_id` (`virtuemart_user_id`,`address_type`),
  KEY `address_type` (`address_type`),
  KEY `address_type_name` (`address_type_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Information, BT = BillTo and ST = ShipTo' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_virtuemart_vendors`
--

CREATE TABLE IF NOT EXISTS `iw0sl_virtuemart_vendors` (
  `virtuemart_vendor_id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `vendor_name` char(64) DEFAULT NULL,
  `vendor_currency` int(1) DEFAULT NULL,
  `vendor_accepted_currencies` varchar(1536) NOT NULL DEFAULT '',
  `vendor_params` varchar(17000) NOT NULL DEFAULT '',
  `metarobot` char(20) DEFAULT NULL,
  `metaauthor` char(64) DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_vendor_id`),
  KEY `vendor_name` (`vendor_name`),
  KEY `vendor_currency` (`vendor_currency`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Vendors manage their products in your store' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_virtuemart_vendors_ru_ru`
--

CREATE TABLE IF NOT EXISTS `iw0sl_virtuemart_vendors_ru_ru` (
  `virtuemart_vendor_id` int(1) unsigned NOT NULL,
  `vendor_store_desc` text NOT NULL,
  `vendor_terms_of_service` text NOT NULL,
  `vendor_legal_info` text NOT NULL,
  `vendor_letter_css` text NOT NULL,
  `vendor_letter_header_html` varchar(8000) NOT NULL DEFAULT '<h1>{vm:vendorname}</h1><p>{vm:vendoraddress}</p>',
  `vendor_letter_footer_html` varchar(8000) NOT NULL DEFAULT '<p>{vm:vendorlegalinfo}<br />Page {vm:pagenum}/{vm:pagecount}</p>',
  `vendor_store_name` varchar(180) NOT NULL DEFAULT '',
  `vendor_phone` varchar(26) NOT NULL DEFAULT '',
  `vendor_url` varchar(255) NOT NULL DEFAULT '',
  `metadesc` varchar(400) NOT NULL DEFAULT '',
  `metakey` varchar(400) NOT NULL DEFAULT '',
  `customtitle` varchar(255) NOT NULL DEFAULT '',
  `vendor_invoice_free1` varchar(255) NOT NULL DEFAULT '',
  `vendor_invoice_free2` varchar(255) NOT NULL DEFAULT '',
  `vendor_mail_free1` varchar(255) NOT NULL DEFAULT '',
  `vendor_mail_free2` varchar(255) NOT NULL DEFAULT '',
  `vendor_mail_css` varchar(255) NOT NULL DEFAULT '',
  `slug` varchar(192) NOT NULL DEFAULT '',
  PRIMARY KEY (`virtuemart_vendor_id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_virtuemart_vendor_medias`
--

CREATE TABLE IF NOT EXISTS `iw0sl_virtuemart_vendor_medias` (
  `id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_vendor_id` int(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_media_id` int(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`,`virtuemart_media_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_virtuemart_vendor_users`
--

CREATE TABLE IF NOT EXISTS `iw0sl_virtuemart_vendor_users` (
  `id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_vendor_id` int(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_user_id` int(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`,`virtuemart_user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_virtuemart_vmusers`
--

CREATE TABLE IF NOT EXISTS `iw0sl_virtuemart_vmusers` (
  `virtuemart_user_id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_vendor_id` int(1) unsigned NOT NULL DEFAULT '0',
  `user_is_vendor` tinyint(1) NOT NULL DEFAULT '0',
  `customer_number` char(32) DEFAULT NULL,
  `virtuemart_paymentmethod_id` int(1) unsigned DEFAULT NULL,
  `virtuemart_shipmentmethod_id` int(1) unsigned DEFAULT NULL,
  `agreed` tinyint(1) NOT NULL DEFAULT '0',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_user_id`),
  UNIQUE KEY `u_virtuemart_user_id` (`virtuemart_user_id`,`virtuemart_vendor_id`),
  KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`),
  KEY `user_is_vendor` (`user_is_vendor`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Holds the unique user data' AUTO_INCREMENT=42 ;

--
-- Дамп данных таблицы `iw0sl_virtuemart_vmusers`
--

INSERT INTO `iw0sl_virtuemart_vmusers` (`virtuemart_user_id`, `virtuemart_vendor_id`, `user_is_vendor`, `customer_number`, `virtuemart_paymentmethod_id`, `virtuemart_shipmentmethod_id`, `agreed`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(41, 1, 1, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_virtuemart_vmuser_shoppergroups`
--

CREATE TABLE IF NOT EXISTS `iw0sl_virtuemart_vmuser_shoppergroups` (
  `id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_user_id` int(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_shoppergroup_id` int(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `virtuemart_user_id` (`virtuemart_user_id`,`virtuemart_shoppergroup_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='xref table for users to shopper group' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_virtuemart_waitingusers`
--

CREATE TABLE IF NOT EXISTS `iw0sl_virtuemart_waitingusers` (
  `virtuemart_waitinguser_id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_product_id` int(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_user_id` int(1) unsigned NOT NULL DEFAULT '0',
  `notify_email` char(150) NOT NULL DEFAULT '',
  `notified` tinyint(1) NOT NULL DEFAULT '0',
  `notify_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ordering` int(1) NOT NULL DEFAULT '0',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_waitinguser_id`),
  KEY `virtuemart_product_id` (`virtuemart_product_id`),
  KEY `notify_email` (`notify_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Stores notifications, users waiting f. products out of stock' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `iw0sl_virtuemart_worldzones`
--

CREATE TABLE IF NOT EXISTS `iw0sl_virtuemart_worldzones` (
  `virtuemart_worldzone_id` smallint(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_vendor_id` int(1) DEFAULT NULL,
  `zone_name` char(255) DEFAULT NULL,
  `zone_cost` decimal(10,2) DEFAULT NULL,
  `zone_limit` decimal(10,2) DEFAULT NULL,
  `zone_description` varchar(18000) DEFAULT NULL,
  `zone_tax_rate` int(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(1) NOT NULL DEFAULT '0',
  `shared` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_worldzone_id`),
  KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='The Zones managed by the Zone Shipment Module' AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
