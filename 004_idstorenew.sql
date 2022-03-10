-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Хост: 10.0.0.125:3306
-- Время создания: Мар 10 2022 г., 03:43
-- Версия сервера: 10.1.48-MariaDB
-- Версия PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `004_idstorenew`
--

-- --------------------------------------------------------

--
-- Структура таблицы `applications`
--

CREATE TABLE `applications` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `benefits`
--

CREATE TABLE `benefits` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `benefits`
--

INSERT INTO `benefits` (`id`, `title`, `image`, `status`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Бесплатная доставка', 'benefits/January2022/mvVVZDYbhzSqqIqnsth4.svg', 1, 1, '2022-01-29 11:03:41', '2022-01-29 11:03:41'),
(2, 'Широкий ассортимент', 'benefits/January2022/xYXFGlBr6jo85rSpJl2t.svg', 1, 2, '2022-01-29 11:05:23', '2022-01-29 11:05:23'),
(3, 'Высокое качество', 'benefits/January2022/wboIzolK3JsT7wbSRKcL.svg', 1, 3, '2022-01-29 11:05:39', '2022-01-29 11:05:39'),
(4, '1000+ довольных клиентов', 'benefits/January2022/nOQUZweq3qLQXPRFNw7w.svg', 1, 4, '2022-01-29 11:05:00', '2022-01-29 11:07:18');

-- --------------------------------------------------------

--
-- Структура таблицы `cart_forms`
--

CREATE TABLE `cart_forms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cart` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `cart_forms`
--

INSERT INTO `cart_forms` (`id`, `name`, `email`, `phone`, `cart`, `created_at`, `updated_at`) VALUES
(1, 'Shyngys Nurtaza', 'shyngys.nur@gmail.com', '87021218251', '<table>\r\n  <thead>\r\n    <tr>\r\n      <th>Названия</th>\r\n      <th>Количество</th>\r\n      <th>Цена</th>\r\n    </tr>\r\n  </thead>\r\n  <tbody>\r\n       <tr>\r\n      <td> Инструменты стоматологические</td>\r\n      <td> 4 шт</td>\r\n      <td> 60000 ₸</td>\r\n    </tr>\r\n      </tbody>\r\n</table>', '2022-03-04 10:54:43', NULL),
(2, 'test test', 'test@test.kz', '87021218251', '<table>\r\n  <thead>\r\n    <tr>\r\n      <th>Названия</th>\r\n      <th>Количество</th>\r\n      <th>Цена</th>\r\n    </tr>\r\n  </thead>\r\n  <tbody>\r\n       <tr>\r\n      <td> Инструменты стоматологические</td>\r\n      <td> 1 шт</td>\r\n      <td> 15000 ₸</td>\r\n    </tr>\r\n      </tbody>\r\n</table>', '2022-03-10 00:30:34', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci,
  `status` int(11) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `title`, `text`, `status`, `order`, `keywords`, `description`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Виниры', NULL, 1, 1, NULL, NULL, 'viniry', '2022-01-30 12:45:47', '2022-01-30 12:45:47');

-- --------------------------------------------------------

--
-- Структура таблицы `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'voyager::seeders.data_rows.roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(23, 4, 'title', 'text', 'Заголовок', 0, 1, 1, 1, 1, 1, '{}', 2),
(24, 4, 'image', 'image', 'Иконка', 0, 1, 1, 1, 1, 1, '{}', 3),
(25, 4, 'status', 'checkbox', 'Активный', 0, 1, 1, 1, 1, 1, '{\"on\":\"\\u0414\\u0430\",\"off\":\"\\u041d\\u0435\\u0442\",\"checked\":true}', 4),
(26, 4, 'order', 'number', 'Порядок', 0, 1, 1, 1, 1, 1, '{}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(29, 5, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(30, 5, 'image', 'image', 'Логотип', 0, 1, 1, 1, 1, 1, '{}', 2),
(31, 5, 'status', 'checkbox', 'Активный', 0, 1, 1, 1, 1, 1, '{\"on\":\"\\u0414\\u0430\",\"off\":\"\\u041d\\u0435\\u0442\",\"checked\":true}', 3),
(32, 5, 'order', 'number', 'Порядок', 0, 1, 1, 1, 1, 1, '{}', 4),
(33, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(34, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(35, 6, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(36, 6, 'title', 'text', 'Заголовок', 0, 1, 1, 1, 1, 1, '{}', 2),
(37, 6, 'type', 'select_dropdown', 'Шаблон страницы', 0, 1, 1, 1, 1, 1, '{\"default\":\"page\",\"options\":{\"page\":\"\\u0422\\u0435\\u043a\\u0441\\u0442\\u043e\\u0432\\u0430\\u044f \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\",\"about\":\"\\u041e \\u043d\\u0430\\u0441\",\"questions\":\"\\u0427\\u0430\\u0441\\u0442\\u044b\\u0435 \\u0432\\u043e\\u043f\\u0440\\u043e\\u0441\\u044b\",\"news\":\"\\u041d\\u043e\\u0432\\u043e\\u0441\\u0442\\u0438\",\"reviews\":\"\\u041e\\u0442\\u0437\\u044b\\u0432\\u044b\",\"novinki\":\"\\u041d\\u043e\\u0432\\u0438\\u043d\\u043a\\u0438\",\"hity\":\"\\u0425\\u0438\\u0442\\u044b \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\",\"promotion\":\"\\u0410\\u043a\\u0446\\u0438\\u0438\",\"cart\":\"\\u041a\\u043e\\u0440\\u0437\\u0438\\u043d\\u0430\",\"katalog\":\"\\u041a\\u0430\\u0442\\u0430\\u043b\\u043e\\u0433\"}}', 3),
(38, 6, 'text', 'rich_text_box', 'Текст', 0, 0, 1, 1, 1, 1, '{}', 4),
(39, 6, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 7),
(40, 6, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 8),
(41, 6, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(42, 6, 'keywords', 'text_area', 'Keywords', 0, 0, 1, 1, 1, 1, '{}', 5),
(43, 6, 'description', 'text_area', 'Description', 0, 0, 1, 1, 1, 1, '{}', 6),
(44, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(45, 7, 'image', 'image', 'Фотография', 0, 1, 1, 1, 1, 1, '{}', 2),
(46, 7, 'status', 'checkbox', 'Активный', 0, 1, 1, 1, 1, 1, '{\"on\":\"\\u0414\\u0430\",\"off\":\"\\u041d\\u0435\\u0442\",\"checked\":true}', 3),
(47, 7, 'order', 'number', 'Порядок', 0, 1, 1, 1, 1, 1, '{}', 4),
(48, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(49, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(50, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(51, 8, 'title', 'text', 'Вопрос', 0, 1, 1, 1, 1, 1, '{}', 2),
(52, 8, 'text', 'text_area', 'Ответ', 0, 0, 1, 1, 1, 1, '{}', 3),
(53, 8, 'status', 'checkbox', 'Активный', 0, 1, 1, 1, 1, 1, '{\"on\":\"\\u0414\\u0430\",\"off\":\"\\u041d\\u0435\\u0442\",\"checked\":true}', 4),
(54, 8, 'order', 'number', 'Порядок', 0, 1, 1, 1, 1, 1, '{}', 5),
(55, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(56, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(57, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(58, 9, 'title', 'text', 'Заголовок', 0, 1, 1, 1, 1, 1, '{}', 2),
(59, 9, 'image', 'image', 'Фотография', 0, 1, 1, 1, 1, 1, '{}', 3),
(60, 9, 'data', 'text', 'Дата', 0, 1, 1, 1, 1, 1, '{}', 4),
(61, 9, 'anons', 'text_area', 'Анонс', 0, 0, 1, 1, 1, 1, '{}', 5),
(62, 9, 'text', 'rich_text_box', 'Текст', 0, 0, 1, 1, 1, 1, '{}', 6),
(63, 9, 'status', 'checkbox', 'Активный', 0, 1, 1, 1, 1, 1, '{\"on\":\"\\u0414\\u0430\",\"off\":\"\\u041d\\u0435\\u0442\",\"checked\":true}', 7),
(64, 9, 'order', 'number', 'Порядок', 0, 1, 1, 1, 1, 1, '{}', 8),
(65, 9, 'keywords', 'text_area', 'Keywords', 0, 0, 1, 1, 1, 1, '{}', 9),
(66, 9, 'description', 'text_area', 'Description', 0, 0, 1, 1, 1, 1, '{}', 10),
(67, 9, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 11),
(68, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 12),
(69, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 13),
(70, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(71, 10, 'title', 'text', 'Имя', 0, 1, 1, 1, 1, 1, '{}', 2),
(72, 10, 'data', 'text', 'Дата', 0, 1, 1, 1, 1, 1, '{}', 3),
(73, 10, 'text', 'text_area', 'Отзыв', 0, 0, 1, 1, 1, 1, '{}', 4),
(74, 10, 'status', 'checkbox', 'Активный', 0, 1, 1, 1, 1, 1, '{\"on\":\"\\u0414\\u0430\",\"off\":\"\\u041d\\u0435\\u0442\",\"checked\":true}', 6),
(75, 10, 'order', 'number', 'Порядок', 0, 1, 1, 1, 1, 1, '{}', 7),
(76, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 8),
(77, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(78, 10, 'rating', 'radio_btn', 'Рейтинг', 0, 0, 1, 1, 1, 1, '{\"default\":\"<img src=\'\\/img\\/star1.png\'> <img src=\'\\/img\\/stars.png\'> <img src=\'\\/img\\/stars.png\'> <img src=\'\\/img\\/stars.png\'> <img src=\'\\/img\\/stars.png\'>\",\"options\":{\"<img src=\'\\/img\\/star1.png\'> <img src=\'\\/img\\/stars.png\'> <img src=\'\\/img\\/stars.png\'> <img src=\'\\/img\\/stars.png\'> <img src=\'\\/img\\/stars.png\'>\":\"1\",\"<img src=\'\\/img\\/star1.png\'> <img src=\'\\/img\\/star1.png\'> <img src=\'\\/img\\/stars.png\'> <img src=\'\\/img\\/stars.png\'> <img src=\'\\/img\\/stars.png\'>\":\"2\",\"<img src=\'\\/img\\/star1.png\'> <img src=\'\\/img\\/star1.png\'> <img src=\'\\/img\\/star1.png\'> <img src=\'\\/img\\/stars.png\'> <img src=\'\\/img\\/stars.png\'>\":\"3\",\"<img src=\'\\/img\\/star1.png\'> <img src=\'\\/img\\/star1.png\'> <img src=\'\\/img\\/star1.png\'> <img src=\'\\/img\\/star1.png\'> <img src=\'\\/img\\/stars.png\'>\":\"4\",\"<img src=\'\\/img\\/star1.png\'> <img src=\'\\/img\\/star1.png\'> <img src=\'\\/img\\/star1.png\'> <img src=\'\\/img\\/star1.png\'> <img src=\'\\/img\\/star1.png\'>\":\"5\"}}', 5),
(79, 11, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(80, 11, 'title', 'text', 'Заголовок', 0, 1, 1, 1, 1, 1, '{}', 2),
(81, 11, 'text', 'rich_text_box', 'Текст', 0, 0, 1, 1, 1, 1, '{}', 3),
(82, 11, 'status', 'checkbox', 'Активный', 0, 1, 1, 1, 1, 1, '{\"on\":\"\\u0414\\u0430\",\"off\":\"\\u041d\\u0435\\u0442\",\"checked\":true}', 4),
(83, 11, 'order', 'number', 'Порядок', 0, 1, 1, 1, 1, 1, '{}', 5),
(84, 11, 'keywords', 'text_area', 'Keywords', 0, 0, 1, 1, 1, 1, '{}', 6),
(85, 11, 'description', 'text_area', 'Description', 0, 0, 1, 1, 1, 1, '{}', 7),
(86, 11, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 8),
(87, 11, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 9),
(88, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 10),
(89, 12, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(90, 12, 'title', 'text', 'Заголовок', 0, 1, 1, 1, 1, 1, '{}', 2),
(91, 12, 'photos', 'multiple_images', 'Фотографии', 0, 0, 1, 1, 1, 1, '{}', 5),
(92, 12, 'code', 'text', 'Код товара', 0, 1, 1, 1, 1, 1, '{}', 6),
(93, 12, 'availability', 'text', 'Количество в наличии', 0, 1, 1, 1, 1, 1, '{}', 7),
(94, 12, 'price', 'text', 'Цена', 0, 1, 1, 1, 1, 1, '{}', 8),
(95, 12, 'type', 'text', 'Тип', 0, 0, 1, 1, 1, 1, '{}', 9),
(96, 12, 'brand', 'text', 'Бренд', 0, 0, 1, 1, 1, 1, '{}', 10),
(97, 12, 'model', 'text', 'Модель', 0, 0, 1, 1, 1, 1, '{}', 11),
(98, 12, 'country', 'text', 'Страна', 0, 0, 1, 1, 1, 1, '{}', 12),
(99, 12, 'width', 'text', 'Ширина, мм', 0, 0, 1, 1, 1, 1, '{}', 13),
(100, 12, 'height', 'text', 'Высота, мм', 0, 0, 1, 1, 1, 1, '{}', 14),
(101, 12, 'depth', 'text', 'Глубина', 0, 0, 1, 1, 1, 1, '{}', 15),
(102, 12, 'weight', 'text', 'Вес, кг', 0, 0, 1, 1, 1, 1, '{}', 16),
(103, 12, 'opisanie', 'rich_text_box', 'Описание', 0, 0, 1, 1, 1, 1, '{}', 17),
(104, 12, 'questions', 'rich_text_box', 'Вопросы и ответы', 0, 0, 1, 1, 1, 1, '{}', 18),
(105, 12, 'status', 'checkbox', 'Активный', 0, 1, 1, 1, 1, 1, '{\"on\":\"\\u0414\\u0430\",\"off\":\"\\u041d\\u0435\\u0442\",\"checked\":true}', 19),
(106, 12, 'order', 'number', 'Порядок', 0, 1, 1, 1, 1, 1, '{}', 20),
(107, 12, 'keywords', 'text_area', 'Keywords', 0, 0, 1, 1, 1, 1, '{}', 24),
(108, 12, 'description', 'text_area', 'Description', 0, 0, 1, 1, 1, 1, '{}', 25),
(109, 12, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 26),
(110, 12, 'category_id', 'text', 'Category Id', 0, 1, 1, 1, 1, 1, '{}', 27),
(111, 12, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 28),
(112, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 29),
(113, 12, 'product_belongsto_category_relationship', 'relationship', 'Категория', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Category\",\"table\":\"categories\",\"type\":\"belongsTo\",\"column\":\"category_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"benefits\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(114, 12, 'image', 'image', 'Основное фото', 0, 1, 1, 1, 1, 1, '{}', 4),
(115, 12, 'novinki', 'checkbox', 'Показывать в новинках?', 0, 1, 1, 1, 1, 1, '{\"on\":\"\\u0414\\u0430\",\"off\":\"\\u041d\\u0435\\u0442\",\"checked\":false}', 21),
(116, 12, 'hity', 'checkbox', 'Хит продаж?', 0, 1, 1, 1, 1, 1, '{\"on\":\"\\u0414\\u0430\",\"off\":\"\\u041d\\u0435\\u0442\",\"checked\":false}', 22),
(117, 12, 'akcii', 'checkbox', 'Акционный товар?', 0, 1, 1, 1, 1, 1, '{\"on\":\"\\u0414\\u0430\",\"off\":\"\\u041d\\u0435\\u0442\",\"checked\":false}', 23),
(118, 13, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(119, 13, 'name', 'text', 'Имя', 0, 1, 1, 1, 1, 1, '{}', 2),
(120, 13, 'phone', 'text', 'Телефон', 0, 1, 1, 1, 1, 1, '{}', 3),
(121, 13, 'status', 'checkbox', 'Обработанная', 0, 1, 1, 1, 1, 1, '{\"on\":\"\\u041e\\u0431\\u0440\\u0430\\u0431\\u043e\\u0442\\u0430\\u043d\\u043d\\u0430\\u044f\",\"off\":\"\\u041d\\u043e\\u0432\\u0430\\u044f\",\"checked\":false}', 4),
(122, 13, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(123, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(124, 14, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(125, 14, 'name', 'text', 'Имя', 0, 1, 1, 1, 1, 1, '{}', 2),
(127, 14, 'question', 'text_area', 'Вопрос', 0, 1, 1, 1, 1, 1, '{}', 4),
(128, 14, 'status', 'checkbox', 'Обработанная', 0, 1, 1, 1, 1, 1, '{\"on\":\"\\u041e\\u0431\\u0440\\u0430\\u0431\\u043e\\u0442\\u0430\\u043d\\u043d\\u0430\\u044f\",\"off\":\"\\u041d\\u043e\\u0432\\u0430\\u044f\",\"checked\":false}', 5),
(129, 14, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(130, 14, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(131, 14, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 3),
(132, 15, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(133, 15, 'name', 'text', 'Имя', 0, 1, 1, 1, 1, 1, '{}', 2),
(134, 15, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 3),
(135, 15, 'review', 'text_area', 'Отзыв', 0, 1, 1, 1, 1, 1, '{}', 4),
(136, 15, 'status', 'checkbox', 'Обработанная', 0, 1, 1, 1, 1, 1, '{\"on\":\"\\u041e\\u0431\\u0440\\u0430\\u0431\\u043e\\u0442\\u0430\\u043d\\u043d\\u0430\\u044f\",\"off\":\"\\u041d\\u043e\\u0432\\u0430\\u044f\",\"checked\":false}', 5),
(137, 15, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(138, 15, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(139, 16, 'id', 'text', 'Номер', 1, 1, 0, 0, 0, 0, '{}', 1),
(140, 16, 'name', 'text', 'Имя', 0, 1, 1, 1, 1, 1, '{}', 2),
(141, 16, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 3),
(142, 16, 'phone', 'text', 'Телефон', 0, 1, 1, 1, 1, 1, '{}', 4),
(143, 16, 'cart', 'rich_text_box', 'Корзина', 0, 0, 1, 1, 1, 1, '{}', 5),
(144, 16, 'created_at', 'timestamp', 'Дата Создания', 0, 1, 1, 1, 0, 1, '{}', 6),
(145, 16, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7);

-- --------------------------------------------------------

--
-- Структура таблицы `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2022-01-27 15:08:21', '2022-01-27 15:08:21'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2022-01-27 15:08:21', '2022-01-27 15:08:21'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2022-01-27 15:08:21', '2022-01-27 15:08:21'),
(4, 'benefits', 'benefits', 'Преимущество', 'Преимущества', 'voyager-lightbulb', 'App\\Benefit', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-01-29 10:59:10', '2022-01-29 11:01:47'),
(5, 'partners', 'partners', 'Партнер', 'Партнеры', 'voyager-images', 'App\\Partner', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-01-29 11:19:31', '2022-01-29 11:19:31'),
(6, 'pages', 'pages', 'Страница', 'Страницы', 'voyager-documentation', 'App\\Page', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-01-29 11:42:16', '2022-02-22 05:29:50'),
(7, 'photos', 'photos', 'Фотография', 'Фотографии', 'voyager-photos', 'App\\Photo', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-01-30 04:08:30', '2022-01-30 04:08:30'),
(8, 'questions', 'questions', 'Вопрос-ответ', 'Частые вопросы', 'voyager-chat', 'App\\Question', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-01-30 05:14:51', '2022-01-30 05:14:51'),
(9, 'news', 'news', 'Новость', 'Новости', 'voyager-news', 'App\\News', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-01-30 05:39:48', '2022-01-30 05:39:48'),
(10, 'reviews', 'reviews', 'Отзыв', 'Отзывы', 'voyager-bubble', 'App\\Review', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-01-30 06:33:19', '2022-01-30 07:56:15'),
(11, 'categories', 'categories', 'Категория', 'Категории', 'voyager-folder', 'App\\Category', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-01-30 11:56:31', '2022-01-30 11:56:31'),
(12, 'products', 'products', 'Товар', 'Товары', 'voyager-shop', 'App\\Product', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-01-30 12:22:07', '2022-01-30 13:58:31'),
(13, 'applications', 'applications', 'Заявка', 'Заказ звонка', 'voyager-phone', 'App\\Application', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-01-30 14:52:43', '2022-01-30 14:52:43'),
(14, 'sitequestions', 'sitequestions', 'Вопрос с сайта', 'Вопросы с сайта', 'voyager-chat', 'App\\Sitequestion', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-01-30 15:07:07', '2022-01-30 15:11:10'),
(15, 'sitereviews', 'sitereviews', 'Отзыв с сайта', 'Отзывы с сайта', 'voyager-bubble', 'App\\Sitereview', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-01-30 15:16:34', '2022-01-30 15:16:34'),
(16, 'cart_forms', 'cart-forms', 'Корзина', 'Корзины', 'voyager-mail', 'App\\Models\\CartForm', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-03-04 04:12:43', '2022-03-04 04:13:11');

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2022-01-27 15:08:21', '2022-01-27 15:08:21'),
(2, 'menu', '2022-01-29 09:37:05', '2022-01-29 10:39:07'),
(4, 'foot1', '2022-01-29 09:41:25', '2022-01-29 09:41:25');

-- --------------------------------------------------------

--
-- Структура таблицы `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Панель управления', '', '_self', 'voyager-boat', '#000000', NULL, 1, '2022-01-27 15:08:21', '2022-01-27 15:10:38', 'voyager.dashboard', 'null'),
(2, 1, 'Медиа', '', '_self', 'voyager-images', '#000000', NULL, 11, '2022-01-27 15:08:21', '2022-03-04 04:14:08', 'voyager.media.index', 'null'),
(3, 1, 'Пользователи', '', '_self', 'voyager-person', '#000000', 5, 1, '2022-01-27 15:08:21', '2022-01-27 15:11:36', 'voyager.users.index', 'null'),
(4, 1, 'Роли', '', '_self', 'voyager-lock', '#000000', 5, 2, '2022-01-27 15:08:21', '2022-01-27 15:11:36', 'voyager.roles.index', 'null'),
(5, 1, 'Инструменты', '', '_self', 'voyager-tools', '#000000', NULL, 13, '2022-01-27 15:08:21', '2022-03-04 04:14:08', NULL, ''),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 3, '2022-01-27 15:08:21', '2022-01-27 15:11:36', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 4, '2022-01-27 15:08:21', '2022-01-27 15:11:36', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 5, '2022-01-27 15:08:21', '2022-01-27 15:11:36', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 6, '2022-01-27 15:08:21', '2022-01-27 15:11:36', 'voyager.bread.index', NULL),
(10, 1, 'Настройки', '', '_self', 'voyager-settings', '#000000', NULL, 12, '2022-01-27 15:08:21', '2022-03-04 04:14:08', 'voyager.settings.index', 'null'),
(11, 2, 'О нас', 'o-nas', '_self', NULL, '#000000', NULL, 5, '2022-01-29 09:37:21', '2022-01-29 12:33:10', NULL, ''),
(12, 2, 'Частые вопросы', 'chastye-voprosy', '_self', NULL, '#000000', NULL, 6, '2022-01-29 09:37:28', '2022-01-29 12:37:37', NULL, ''),
(13, 2, 'Новости', 'novosti', '_self', NULL, '#000000', NULL, 7, '2022-01-29 09:37:36', '2022-01-29 12:37:45', NULL, ''),
(14, 2, 'Отзывы', 'otzyvy', '_self', NULL, '#000000', NULL, 8, '2022-01-29 09:37:45', '2022-01-29 12:37:54', NULL, ''),
(18, 4, 'О нас', 'o-nas', '_self', NULL, '#000000', NULL, 12, '2022-01-29 09:41:41', '2022-01-29 12:33:20', NULL, ''),
(19, 4, 'Частые вопросы', 'chastye-voprosy', '_self', NULL, '#000000', NULL, 13, '2022-01-29 09:41:49', '2022-01-29 12:38:16', NULL, ''),
(20, 4, 'Новости', 'novosti', '_self', NULL, '#000000', NULL, 14, '2022-01-29 09:41:58', '2022-01-29 12:38:26', NULL, ''),
(21, 4, 'Отзывы', 'otzyvy', '_self', NULL, '#000000', NULL, 15, '2022-01-29 09:42:05', '2022-01-29 12:38:38', NULL, ''),
(22, 4, 'Корзина', 'cart', '_self', NULL, '#000000', NULL, 16, '2022-01-29 09:42:15', '2022-03-04 11:56:00', NULL, ''),
(26, 1, 'Преимущества', '', '_self', 'voyager-lightbulb', NULL, NULL, 7, '2022-01-29 10:59:10', '2022-03-04 04:14:08', 'voyager.benefits.index', NULL),
(27, 1, 'Партнеры', '', '_self', 'voyager-images', NULL, NULL, 8, '2022-01-29 11:19:31', '2022-03-04 04:14:08', 'voyager.partners.index', NULL),
(28, 1, 'Страницы', '', '_self', 'voyager-documentation', NULL, NULL, 3, '2022-01-29 11:42:16', '2022-01-30 15:12:16', 'voyager.pages.index', NULL),
(29, 1, 'Фотографии', '', '_self', 'voyager-photos', NULL, NULL, 9, '2022-01-30 04:08:30', '2022-03-04 04:14:08', 'voyager.photos.index', NULL),
(30, 1, 'Частые вопросы', '', '_self', 'voyager-chat', NULL, NULL, 10, '2022-01-30 05:14:51', '2022-03-04 04:14:08', 'voyager.questions.index', NULL),
(31, 1, 'Новости', '', '_self', 'voyager-news', NULL, NULL, 5, '2022-01-30 05:39:48', '2022-03-04 04:14:08', 'voyager.news.index', NULL),
(32, 1, 'Отзывы', '', '_self', 'voyager-bubble', NULL, NULL, 6, '2022-01-30 06:33:19', '2022-03-04 04:14:08', 'voyager.reviews.index', NULL),
(33, 1, 'Категории', '', '_self', 'voyager-folder', NULL, 35, 1, '2022-01-30 11:56:32', '2022-01-30 12:29:31', 'voyager.categories.index', NULL),
(34, 1, 'Товары', '', '_self', 'voyager-shop', NULL, 35, 2, '2022-01-30 12:22:07', '2022-01-30 12:29:42', 'voyager.products.index', NULL),
(35, 1, 'Каталог', '', '_self', 'voyager-shop', '#000000', NULL, 4, '2022-01-30 12:28:27', '2022-03-04 04:14:08', NULL, ''),
(36, 1, 'Заказ звонка', '', '_self', 'voyager-phone', NULL, 38, 1, '2022-01-30 14:52:43', '2022-01-30 15:12:25', 'voyager.applications.index', NULL),
(37, 1, 'Вопросы с сайта', '', '_self', 'voyager-chat', '#000000', 38, 2, '2022-01-30 15:07:07', '2022-01-30 15:12:54', 'voyager.sitequestions.index', 'null'),
(38, 1, 'Заявки с сайта', '', '_self', 'voyager-bell', '#000000', NULL, 2, '2022-01-30 15:12:04', '2022-01-30 15:17:25', NULL, ''),
(39, 1, 'Отзывы с сайта', '', '_self', 'voyager-bubble', NULL, 38, 3, '2022-01-30 15:16:34', '2022-01-30 15:17:06', 'voyager.sitereviews.index', NULL),
(40, 1, 'Корзины', '', '_self', 'voyager-mail', NULL, 38, 4, '2022-03-04 04:12:43', '2022-03-04 04:14:08', 'voyager.cart-forms.index', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2016_01_01_000000_add_voyager_user_fields', 2),
(6, '2016_01_01_000000_create_data_types_table', 2),
(7, '2016_05_19_173453_create_menu_table', 2),
(8, '2016_10_21_190000_create_roles_table', 2),
(9, '2016_10_21_190000_create_settings_table', 2),
(10, '2016_11_30_135954_create_permission_table', 2),
(11, '2016_11_30_141208_create_permission_role_table', 2),
(12, '2016_12_26_201236_data_types__add__server_side', 2),
(13, '2017_01_13_000000_add_route_to_menu_items_table', 2),
(14, '2017_01_14_005015_create_translations_table', 2),
(15, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 2),
(16, '2017_03_06_000000_add_controller_to_data_types_table', 2),
(17, '2017_04_21_000000_add_order_to_data_rows_table', 2),
(18, '2017_07_05_210000_add_policyname_to_data_types_table', 2),
(19, '2017_08_05_000000_add_group_to_settings_table', 2),
(20, '2017_11_26_013050_add_user_role_relationship', 2),
(21, '2017_11_26_015000_create_user_roles_table', 2),
(22, '2018_03_11_000000_add_user_settings', 2),
(23, '2018_03_14_000000_add_details_to_data_types_table', 2),
(24, '2018_03_16_000000_make_settings_value_nullable', 2),
(25, '2022_03_04_100616_create_cart_forms_table', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `anons` text COLLATE utf8mb4_unicode_ci,
  `text` longtext COLLATE utf8mb4_unicode_ci,
  `status` int(11) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `title`, `image`, `data`, `anons`, `text`, `status`, `order`, `keywords`, `description`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'COVID-19 способствует всеобщему признанию телестоматологии среди пациентов', 'news/January2022/hiu40TruUwKQLBzpkZd5.jpeg', '30 Января 2022', 'Опрос жителей ОАЭ и Саудовской Аравии показал, что 88% респондентов сейчас больше ценят преимущества телестоматологии и онлайн-общения, чем до пандемии SARS-CoV-2. Результаты опроса являются частью официального письменного сообщения, представленного на втором форуме Digital Health MENA прошлой осенью в Дубае.', '<p>Опрос был проведен среди 1 000 участников, половина из которых проживала в ОАЭ, а другая половина - в Саудовской Аравии. Они ответили на вопросы, касающиеся их мнений о будущем телемедицины и телестоматологии и о том, как на них повлияла пандемия. Опрос проводился под руководством Анджело Маура, генеральный менеджер по региону Ближнего Востока и Африки в Align Technology. Размышляя о ключевых результатах, она сказала: &ldquo;Мы обнаружили, что пациенты определенно изменили свое мышление, приняв новую норму цифровой стоматологии&rdquo;. И, хотя, только 32% респондентов использовали онлайн-цифровые средства связи для взаимодействия со своим стоматологом во время карантина COVID-19, остальные 78% заявили, что они считают удобными цифровые инструменты и намерены их использовать для оказания неотложной помощи в будущем.</p>\r\n<p>Более того, результаты исследования показывают баланс мнений о безопасности посещения стоматологического кабинета во время пандемии: 44% респондентов посетили стоматолога в период с марта по июнь 2020 года, тогда как 42% не записались на прием из-за страха возможных рисков. Тем не менее, доверие пациентов к стоматологам оставалось высоким: 80% доверяли своему стоматологу принимать необходимые меры предосторожности для защиты пациентов.</p>\r\n<p>Основываясь на этих результатах, становится ясно, что практикующие врачи, использующие цифровые платформы для общения со своими пациентами, с большей вероятностью смогут поддерживать свою деятельность во время пандемии и особенно в условиях изоляции.</p>\r\n<p>&ldquo;Мы обнаружили, что ничто не может заменить личный прием у врача, поскольку прямая стоматологическая помощь по-прежнему является основополагающей в отрасли. И мы действительно верим в это. Тем не менее, для специалистов-стоматологов будет очень важно найти баланс между личной встречей и телестоматологией, чтобы обеспечить лучший сервис и лучший уход за пациентами&rdquo;, - подчеркнула Маура.</p>', 1, 1, NULL, NULL, 'covid-19-sposobstvuet-vseobshemu-priznaniyu-telestomatologii-sredi-pacientov', '2022-01-30 05:47:56', '2022-01-30 05:47:56');

-- --------------------------------------------------------

--
-- Структура таблицы `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `pages`
--

INSERT INTO `pages` (`id`, `title`, `type`, `text`, `slug`, `created_at`, `updated_at`, `keywords`, `description`) VALUES
(1, 'О нас', 'about', '<p>Не следует, однако забывать, что сложившаяся структура организации представляет собой интересный эксперимент проверки модели развития. Значимость этих проблем настолько очевидна, что дальнейшее развитие различных форм деятельности в значительной степени обуславливает создание модели развития. Разнообразный и богатый опыт сложившаяся структура организации требуют определения и уточнения модели развития. Идейные соображения высшего порядка, а также начало повседневной работы по формированию позиции требуют от нас анализа систем массового участия. Не следует, однако забывать, что новая модель организационной деятельности способствует подготовки и реализации новых предложений. Не следует, однако забывать, что постоянное информационно-пропагандистское обеспечение нашей деятельности играет важную роль в формировании позиций, занимаемых участниками в отношении поставленных задач.</p>', 'o-nas', '2022-01-29 12:32:00', '2022-01-30 03:57:39', NULL, NULL),
(2, 'Частые вопросы', 'questions', NULL, 'chastye-voprosy', '2022-01-29 12:33:56', '2022-01-29 12:33:56', NULL, NULL),
(3, 'Новости', 'news', NULL, 'novosti', '2022-01-29 12:34:08', '2022-01-29 12:34:08', NULL, NULL),
(4, 'Отзывы', 'reviews', NULL, 'otzyvy', '2022-01-29 12:34:18', '2022-01-29 12:34:18', NULL, NULL),
(5, 'Новинки', 'novinki', NULL, 'novinki', '2022-01-29 12:34:30', '2022-01-29 12:34:30', NULL, NULL),
(6, 'Хиты продаж', 'hity', NULL, 'hity-prodazh', '2022-01-29 12:34:42', '2022-01-29 12:34:42', NULL, NULL),
(7, 'Акции', 'promotion', NULL, 'akcii', '2022-01-29 12:34:57', '2022-01-29 12:34:57', NULL, NULL),
(8, 'Корзина', 'cart', NULL, 'cart', '2022-01-29 12:35:00', '2022-03-02 23:55:56', NULL, NULL),
(9, 'Заявка успешно отправлена', 'page', '<p><img src=\"/storage/pages/January2022/send.png\" alt=\"\" width=\"90\" height=\"90\" /></p>\r\n<p>Ваша заявка успешно отправлена!</p>\r\n<p>Мы Вам ответим в ближайшее время!</p>', 'zayavka-uspeshno-otpravlena', '2022-01-29 12:35:00', '2022-01-30 03:51:26', NULL, NULL),
(10, 'Политика конфиденциальности', 'page', '<p>Политика конфиденциальности</p>', 'politika-konfidencialnosti', '2022-01-30 05:22:06', '2022-01-30 05:22:06', NULL, NULL),
(11, 'Все товары', 'katalog', NULL, 'katalog', '2022-01-30 12:38:00', '2022-01-30 12:49:43', NULL, NULL),
(12, 'Ваш вопрос успешно отправлен!', 'page', '<p><img src=\"/storage/pages/January2022/send.png\" alt=\"\" width=\"90\" height=\"90\" /></p>\r\n<p>Ваш вопрос успешно отправлен!</p>\r\n<p>Мы Вам ответим в ближайшее время!</p>', 'vash-vopros-uspeshno-otpravlen', '2022-01-30 15:07:52', '2022-01-30 15:07:52', NULL, NULL),
(13, 'Ваш отзыв успешно отправлен!', 'page', '<p><img src=\"/storage/pages/January2022/send.png\" alt=\"\" width=\"90\" height=\"90\" /></p>\r\n<p>Ваш отзыв успешно отправлен!</p>\r\n<p>Мы Вам ответим в ближайшее время!</p>', 'vash-otzyv-uspeshno-otpravlen', '2022-01-30 15:20:35', '2022-01-30 15:20:35', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `partners`
--

CREATE TABLE `partners` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `partners`
--

INSERT INTO `partners` (`id`, `image`, `status`, `order`, `created_at`, `updated_at`) VALUES
(1, 'partners/January2022/Ya8gu1wLrKNRjlMlYsNO.png', 1, 1, '2022-01-29 11:19:42', '2022-01-29 11:19:42'),
(2, 'partners/January2022/87XigTovH8niAZQslHTl.png', 1, 2, '2022-01-29 11:19:50', '2022-01-29 11:19:50'),
(3, 'partners/January2022/xLSojGJ5evZdsHQ068fx.png', 1, 3, '2022-01-29 11:19:58', '2022-01-29 11:19:58');

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2022-01-27 15:08:21', '2022-01-27 15:08:21'),
(2, 'browse_bread', NULL, '2022-01-27 15:08:21', '2022-01-27 15:08:21'),
(3, 'browse_database', NULL, '2022-01-27 15:08:21', '2022-01-27 15:08:21'),
(4, 'browse_media', NULL, '2022-01-27 15:08:21', '2022-01-27 15:08:21'),
(5, 'browse_compass', NULL, '2022-01-27 15:08:21', '2022-01-27 15:08:21'),
(6, 'browse_menus', 'menus', '2022-01-27 15:08:21', '2022-01-27 15:08:21'),
(7, 'read_menus', 'menus', '2022-01-27 15:08:21', '2022-01-27 15:08:21'),
(8, 'edit_menus', 'menus', '2022-01-27 15:08:21', '2022-01-27 15:08:21'),
(9, 'add_menus', 'menus', '2022-01-27 15:08:21', '2022-01-27 15:08:21'),
(10, 'delete_menus', 'menus', '2022-01-27 15:08:21', '2022-01-27 15:08:21'),
(11, 'browse_roles', 'roles', '2022-01-27 15:08:21', '2022-01-27 15:08:21'),
(12, 'read_roles', 'roles', '2022-01-27 15:08:21', '2022-01-27 15:08:21'),
(13, 'edit_roles', 'roles', '2022-01-27 15:08:21', '2022-01-27 15:08:21'),
(14, 'add_roles', 'roles', '2022-01-27 15:08:21', '2022-01-27 15:08:21'),
(15, 'delete_roles', 'roles', '2022-01-27 15:08:21', '2022-01-27 15:08:21'),
(16, 'browse_users', 'users', '2022-01-27 15:08:21', '2022-01-27 15:08:21'),
(17, 'read_users', 'users', '2022-01-27 15:08:21', '2022-01-27 15:08:21'),
(18, 'edit_users', 'users', '2022-01-27 15:08:21', '2022-01-27 15:08:21'),
(19, 'add_users', 'users', '2022-01-27 15:08:21', '2022-01-27 15:08:21'),
(20, 'delete_users', 'users', '2022-01-27 15:08:21', '2022-01-27 15:08:21'),
(21, 'browse_settings', 'settings', '2022-01-27 15:08:21', '2022-01-27 15:08:21'),
(22, 'read_settings', 'settings', '2022-01-27 15:08:21', '2022-01-27 15:08:21'),
(23, 'edit_settings', 'settings', '2022-01-27 15:08:21', '2022-01-27 15:08:21'),
(24, 'add_settings', 'settings', '2022-01-27 15:08:21', '2022-01-27 15:08:21'),
(25, 'delete_settings', 'settings', '2022-01-27 15:08:21', '2022-01-27 15:08:21'),
(26, 'browse_benefits', 'benefits', '2022-01-29 10:59:10', '2022-01-29 10:59:10'),
(27, 'read_benefits', 'benefits', '2022-01-29 10:59:10', '2022-01-29 10:59:10'),
(28, 'edit_benefits', 'benefits', '2022-01-29 10:59:10', '2022-01-29 10:59:10'),
(29, 'add_benefits', 'benefits', '2022-01-29 10:59:10', '2022-01-29 10:59:10'),
(30, 'delete_benefits', 'benefits', '2022-01-29 10:59:10', '2022-01-29 10:59:10'),
(31, 'browse_partners', 'partners', '2022-01-29 11:19:31', '2022-01-29 11:19:31'),
(32, 'read_partners', 'partners', '2022-01-29 11:19:31', '2022-01-29 11:19:31'),
(33, 'edit_partners', 'partners', '2022-01-29 11:19:31', '2022-01-29 11:19:31'),
(34, 'add_partners', 'partners', '2022-01-29 11:19:31', '2022-01-29 11:19:31'),
(35, 'delete_partners', 'partners', '2022-01-29 11:19:31', '2022-01-29 11:19:31'),
(36, 'browse_pages', 'pages', '2022-01-29 11:42:16', '2022-01-29 11:42:16'),
(37, 'read_pages', 'pages', '2022-01-29 11:42:16', '2022-01-29 11:42:16'),
(38, 'edit_pages', 'pages', '2022-01-29 11:42:16', '2022-01-29 11:42:16'),
(39, 'add_pages', 'pages', '2022-01-29 11:42:16', '2022-01-29 11:42:16'),
(40, 'delete_pages', 'pages', '2022-01-29 11:42:16', '2022-01-29 11:42:16'),
(41, 'browse_photos', 'photos', '2022-01-30 04:08:30', '2022-01-30 04:08:30'),
(42, 'read_photos', 'photos', '2022-01-30 04:08:30', '2022-01-30 04:08:30'),
(43, 'edit_photos', 'photos', '2022-01-30 04:08:30', '2022-01-30 04:08:30'),
(44, 'add_photos', 'photos', '2022-01-30 04:08:30', '2022-01-30 04:08:30'),
(45, 'delete_photos', 'photos', '2022-01-30 04:08:30', '2022-01-30 04:08:30'),
(46, 'browse_questions', 'questions', '2022-01-30 05:14:51', '2022-01-30 05:14:51'),
(47, 'read_questions', 'questions', '2022-01-30 05:14:51', '2022-01-30 05:14:51'),
(48, 'edit_questions', 'questions', '2022-01-30 05:14:51', '2022-01-30 05:14:51'),
(49, 'add_questions', 'questions', '2022-01-30 05:14:51', '2022-01-30 05:14:51'),
(50, 'delete_questions', 'questions', '2022-01-30 05:14:51', '2022-01-30 05:14:51'),
(51, 'browse_news', 'news', '2022-01-30 05:39:48', '2022-01-30 05:39:48'),
(52, 'read_news', 'news', '2022-01-30 05:39:48', '2022-01-30 05:39:48'),
(53, 'edit_news', 'news', '2022-01-30 05:39:48', '2022-01-30 05:39:48'),
(54, 'add_news', 'news', '2022-01-30 05:39:48', '2022-01-30 05:39:48'),
(55, 'delete_news', 'news', '2022-01-30 05:39:48', '2022-01-30 05:39:48'),
(56, 'browse_reviews', 'reviews', '2022-01-30 06:33:19', '2022-01-30 06:33:19'),
(57, 'read_reviews', 'reviews', '2022-01-30 06:33:19', '2022-01-30 06:33:19'),
(58, 'edit_reviews', 'reviews', '2022-01-30 06:33:19', '2022-01-30 06:33:19'),
(59, 'add_reviews', 'reviews', '2022-01-30 06:33:19', '2022-01-30 06:33:19'),
(60, 'delete_reviews', 'reviews', '2022-01-30 06:33:19', '2022-01-30 06:33:19'),
(61, 'browse_categories', 'categories', '2022-01-30 11:56:32', '2022-01-30 11:56:32'),
(62, 'read_categories', 'categories', '2022-01-30 11:56:32', '2022-01-30 11:56:32'),
(63, 'edit_categories', 'categories', '2022-01-30 11:56:32', '2022-01-30 11:56:32'),
(64, 'add_categories', 'categories', '2022-01-30 11:56:32', '2022-01-30 11:56:32'),
(65, 'delete_categories', 'categories', '2022-01-30 11:56:32', '2022-01-30 11:56:32'),
(66, 'browse_products', 'products', '2022-01-30 12:22:07', '2022-01-30 12:22:07'),
(67, 'read_products', 'products', '2022-01-30 12:22:07', '2022-01-30 12:22:07'),
(68, 'edit_products', 'products', '2022-01-30 12:22:07', '2022-01-30 12:22:07'),
(69, 'add_products', 'products', '2022-01-30 12:22:07', '2022-01-30 12:22:07'),
(70, 'delete_products', 'products', '2022-01-30 12:22:07', '2022-01-30 12:22:07'),
(71, 'browse_applications', 'applications', '2022-01-30 14:52:43', '2022-01-30 14:52:43'),
(72, 'read_applications', 'applications', '2022-01-30 14:52:43', '2022-01-30 14:52:43'),
(73, 'edit_applications', 'applications', '2022-01-30 14:52:43', '2022-01-30 14:52:43'),
(74, 'add_applications', 'applications', '2022-01-30 14:52:43', '2022-01-30 14:52:43'),
(75, 'delete_applications', 'applications', '2022-01-30 14:52:43', '2022-01-30 14:52:43'),
(76, 'browse_sitequestions', 'sitequestions', '2022-01-30 15:07:07', '2022-01-30 15:07:07'),
(77, 'read_sitequestions', 'sitequestions', '2022-01-30 15:07:07', '2022-01-30 15:07:07'),
(78, 'edit_sitequestions', 'sitequestions', '2022-01-30 15:07:07', '2022-01-30 15:07:07'),
(79, 'add_sitequestions', 'sitequestions', '2022-01-30 15:07:07', '2022-01-30 15:07:07'),
(80, 'delete_sitequestions', 'sitequestions', '2022-01-30 15:07:07', '2022-01-30 15:07:07'),
(81, 'browse_sitereviews', 'sitereviews', '2022-01-30 15:16:34', '2022-01-30 15:16:34'),
(82, 'read_sitereviews', 'sitereviews', '2022-01-30 15:16:34', '2022-01-30 15:16:34'),
(83, 'edit_sitereviews', 'sitereviews', '2022-01-30 15:16:34', '2022-01-30 15:16:34'),
(84, 'add_sitereviews', 'sitereviews', '2022-01-30 15:16:34', '2022-01-30 15:16:34'),
(85, 'delete_sitereviews', 'sitereviews', '2022-01-30 15:16:34', '2022-01-30 15:16:34'),
(86, 'browse_cart_forms', 'cart_forms', '2022-03-04 04:12:43', '2022-03-04 04:12:43'),
(87, 'read_cart_forms', 'cart_forms', '2022-03-04 04:12:43', '2022-03-04 04:12:43'),
(88, 'edit_cart_forms', 'cart_forms', '2022-03-04 04:12:43', '2022-03-04 04:12:43'),
(89, 'add_cart_forms', 'cart_forms', '2022-03-04 04:12:43', '2022-03-04 04:12:43'),
(90, 'delete_cart_forms', 'cart_forms', '2022-03-04 04:12:43', '2022-03-04 04:12:43');

-- --------------------------------------------------------

--
-- Структура таблицы `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `photos`
--

CREATE TABLE `photos` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `photos`
--

INSERT INTO `photos` (`id`, `image`, `status`, `order`, `created_at`, `updated_at`) VALUES
(1, 'photos/January2022/s2f9ZWgMirGleOH3FzGP.jpg', 1, 1, '2022-01-30 04:09:47', '2022-01-30 04:09:47'),
(2, 'photos/January2022/jNFhhPqmi53c71N3n9wS.jpg', 1, 2, '2022-01-30 04:09:53', '2022-01-30 04:09:53'),
(3, 'photos/January2022/LnpAfzK4yQO4tcBT8Rmb.jpg', 1, 3, '2022-01-30 04:10:00', '2022-01-30 04:10:00');

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photos` longtext COLLATE utf8mb4_unicode_ci,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `availability` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `width` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `height` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `depth` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opisanie` longtext COLLATE utf8mb4_unicode_ci,
  `questions` longtext COLLATE utf8mb4_unicode_ci,
  `status` int(11) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `novinki` int(11) DEFAULT NULL,
  `hity` int(11) DEFAULT NULL,
  `akcii` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `title`, `photos`, `code`, `availability`, `price`, `type`, `brand`, `model`, `country`, `width`, `height`, `depth`, `weight`, `opisanie`, `questions`, `status`, `order`, `keywords`, `description`, `slug`, `category_id`, `created_at`, `updated_at`, `image`, `novinki`, `hity`, `akcii`) VALUES
(1, 'Инструменты стоматологические', '[\"products\\/January2022\\/9joT2MACiFLQDChWf9s2.jpg\",\"products\\/January2022\\/geckIUyuRL6btqvz0vmU.png\",\"products\\/January2022\\/16EDPVH7XxVoX9LhwzyN.png\"]', '984764', '70 шт', '15 000', 'Тип', 'Бренд', 'Модель', 'Страна', '200', '200', '100', '0,5', '<p>Тут будет описание товара</p>', '<p>Тут будут вопросы и ответы на них о товаре</p>', 1, 1, NULL, NULL, 'instrumenty-stomatologicheskie', 1, '2022-01-30 13:03:00', '2022-01-30 14:27:32', 'products/January2022/XGzvCJecfJKBGrFONAnD.png', 1, 1, 1),
(2, 'Инструменты стоматологические 1', '[\"products\\\\March2022\\\\SPs8hNvaJz27ZqupxbNo.jpg\",\"products\\\\March2022\\\\BN96IXk7FQ5ANB6QdA3J.png\"]', '984764', '70 шт', '15 000', 'Тип', 'Бренд', 'Модель', 'Страна', '200', '200', '100', '0,5', '<p>Тут будет описание товара</p>', '<p>Тут будет описание товара</p>', 1, 2, NULL, NULL, 'instrumenty-stomatologicheskie-1', 1, '2022-03-04 03:41:00', '2022-03-04 03:41:31', 'products\\March2022\\gV7aKS9C4uCWQC2mB0Sw.png', 1, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `questions`
--

CREATE TABLE `questions` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci,
  `status` int(11) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `questions`
--

INSERT INTO `questions` (`id`, `title`, `text`, `status`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Тут будет написан вопрос 1', 'Равным образом постоянное информационно-пропагандистское обеспечение нашей деятельности способствует подготовки и реализации форм развития. Равным образом рамки и место обучения кадров требуют от нас анализа направлений прогрессивного развития.', 1, 1, '2022-01-30 05:19:38', '2022-01-30 05:19:38'),
(2, 'Ну а тут будет вопрос 2', 'Равным образом постоянное информационно-пропагандистское обеспечение нашей деятельности способствует подготовки и реализации форм развития. Равным образом рамки и место обучения кадров требуют от нас анализа направлений прогрессивного развития.', 1, 2, '2022-01-30 05:19:00', '2022-01-30 05:20:42');

-- --------------------------------------------------------

--
-- Структура таблицы `reviews`
--

CREATE TABLE `reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` text COLLATE utf8mb4_unicode_ci,
  `status` int(11) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `rating` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `reviews`
--

INSERT INTO `reviews` (`id`, `title`, `data`, `text`, `status`, `order`, `created_at`, `updated_at`, `rating`) VALUES
(1, 'Айгерим', '25 Января 2022', 'Lorem Ipsum - это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов.', 1, 1, '2022-01-30 06:33:00', '2022-01-30 07:57:09', '<img src=\'/img/star1.png\'> <img src=\'/img/star1.png\'> <img src=\'/img/star1.png\'> <img src=\'/img/star1.png\'> <img src=\'/img/stars.png\'>');

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2022-01-27 15:08:21', '2022-01-27 15:08:21'),
(2, 'user', 'Normal User', '2022-01-27 15:08:21', '2022-01-27 15:08:21');

-- --------------------------------------------------------

--
-- Структура таблицы `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'IDStore.kz', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Стоматология и зуботехническая лаборатория', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings/February2022/PkjX9y7uF28xJZNpbFM2.jpg', '', 'image', 6, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', 'settings/January2022/nqwSTA1viUcfFBrtHO7x.jpg', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Imperia Dent', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Панель управления сайтом', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', 'settings/January2022/sOHEJDJ7GtO0y5VQPRH2.svg', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', 'settings/January2022/jSr8Dxg2P4vZY98SVbDV.svg', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin'),
(11, 'site.slide-text', 'Заголовок слайдера', 'Добро пожаловать в IDStore.kz', NULL, 'text', 7, 'Site'),
(12, 'site.slide-text2', 'Текст на слайдере', 'Команда IDStore приветствует вас и предлагает решить все стоматологические и ортодонтические проблемы на высоком уровне.', NULL, 'text', 8, 'Site'),
(13, 'site.slide-image', 'Картинка на слайдере', 'settings/January2022/4wjCDSExsNVpsMVgXcoT.png', NULL, 'image', 9, 'Site'),
(14, 'site.phone1', 'Телефон 1', '+7 778 021 19 17', NULL, 'text', 10, 'Site'),
(15, 'site.phone2', 'Телефон 2', '+7 727 331 3 331', NULL, 'text', 11, 'Site'),
(16, 'site.email', 'E-mail', 'info@idstore.kz', NULL, 'text', 12, 'Site'),
(17, 'site.address', 'Адрес', 'г. Нур-Султан, ул. Мусабаева, дом 8', NULL, 'text', 13, 'Site'),
(18, 'site.facebook', 'Facebook ссылка', '#', NULL, 'text', 14, 'Site'),
(19, 'site.instagram', 'Instagram ссылка', '#', NULL, 'text', 15, 'Site'),
(20, 'site.vk', 'VK ссылка', '#', NULL, 'text', 16, 'Site'),
(21, 'site.telegram', 'Telegram ссылка', '#', NULL, 'text', 17, 'Site'),
(22, 'site.whatsapp', 'WhatsApp ссылка', '#', NULL, 'text', 18, 'Site'),
(23, 'site.footer-text', 'Описание в подвале', 'Решение стоматологических и ортодонтических проблемы на высоком уровне', NULL, 'text', 19, 'Site'),
(24, 'site.keywords', 'Site Keywords', NULL, NULL, 'text', 3, 'Site'),
(25, 'site.about1', 'Видео «О нас»', '<iframe  src=\"https://www.youtube.com/embed/j7b5dBWNgto\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', NULL, 'text_area', 20, 'Site'),
(26, 'site.about2', 'Текст под видео «О нас»', 'Lorem Ipsum - это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов.', NULL, 'text_area', 21, 'Site'),
(27, 'site.banner', 'Баннер «Частые вопросы»', 'settings/January2022/7MWfq6uPc8b3dWPuChPE.png', NULL, 'image', 22, 'Site'),
(28, 'site.banner-link', 'Ссылка Баннера «Частые вопросы»', '#', NULL, 'text', 23, 'Site');

-- --------------------------------------------------------

--
-- Структура таблицы `sitequestions`
--

CREATE TABLE `sitequestions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `question` text COLLATE utf8mb4_unicode_ci,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `sitereviews`
--

CREATE TABLE `sitereviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `review` text COLLATE utf8mb4_unicode_ci,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'admin@email.com', 'users/default.png', NULL, '$2y$10$Pqfm9mS2kQByGdj8YIwd4.SWW1LlfQ0knhLAt5pbtPtWqzPAjT28m', 'C0B3BhFKJJKwjQSmS3qbrF1aw4vil9FTGL83TEP96zq303numrswDNrf2tjs', NULL, '2022-01-27 15:08:33', '2022-01-27 15:08:33');

-- --------------------------------------------------------

--
-- Структура таблицы `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `benefits`
--
ALTER TABLE `benefits`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cart_forms`
--
ALTER TABLE `cart_forms`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Индексы таблицы `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Индексы таблицы `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Индексы таблицы `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Индексы таблицы `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Индексы таблицы `sitequestions`
--
ALTER TABLE `sitequestions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sitereviews`
--
ALTER TABLE `sitereviews`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Индексы таблицы `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `applications`
--
ALTER TABLE `applications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `benefits`
--
ALTER TABLE `benefits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `cart_forms`
--
ALTER TABLE `cart_forms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT для таблицы `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `partners`
--
ALTER TABLE `partners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT для таблицы `sitequestions`
--
ALTER TABLE `sitequestions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `sitereviews`
--
ALTER TABLE `sitereviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Ограничения внешнего ключа таблицы `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
