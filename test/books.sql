-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 15 2021 г., 16:52
-- Версия сервера: 5.6.47-log
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `books`
--

-- --------------------------------------------------------

--
-- Структура таблицы `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `otp_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `title`, `otp_order`) VALUES
(1, 30, 'Бизнес-книги', 0),
(9, 1, 'Менеджмент', 0),
(10, 1, 'Бизнес', 0),
(11, 1, 'Банковское дело', 0),
(12, 1, 'Недвижимость', 0),
(13, 1, 'Малый бизнес', 0),
(14, 1, 'Продажи', 0),
(27, 0, 'Для младшеклассников(1-4)', 0),
(28, 0, 'Для среднеклассников(5-8)', 0),
(29, 0, 'Для старшеклассников(9-11)', 0),
(30, 0, 'Для выпускников', 0),
(37, 27, 'Сказки', 0),
(38, 27, 'Стишки', 0),
(39, 27, 'Буквари', 0),
(40, 27, 'Частушки', 0),
(41, 27, 'Считалочки', 0),
(42, 28, 'Шутки', 0),
(46, 27, 'Былины', 0),
(47, 28, 'Поэзия', 0),
(48, 27, 'Фольклор', 0),
(49, 30, 'Публицистика', 0),
(50, 49, 'Мемуары', 0),
(51, 49, 'Документалистика', 0),
(52, 49, 'Спецслужбы', 0),
(53, 49, 'Интервью', 0),
(54, 49, 'Цитаты', 0),
(55, 49, 'Рецензии', 49),
(56, 28, 'Фантастика', 0),
(57, 28, 'Фентези', 0),
(58, 28, 'Детские детективы', 0),
(59, 28, 'Отечественная поэзия', 0),
(60, 29, 'Зарубежная проза', 0),
(61, 29, 'отечественная проза', 0),
(62, 29, 'Ужасы', 0),
(63, 29, 'Мистика', 0),
(64, 38, 'Меньше 10-ти строк', 0),
(65, 38, 'Меньше 20-ти строк', 0),
(66, 38, 'Меньше 30-ти строк', 0),
(67, 38, 'Меньше 40 строк', 0),
(68, 64, 'Нейтральные', 0),
(69, 64, 'Положительные', 0),
(70, 65, 'Искренние', 0),
(71, 65, 'Расфуфыренные', 0),
(72, 66, 'Надменные', 0),
(73, 66, 'Убаюкивающие', 0),
(74, 73, 'Сильно убаюкивающие', 0),
(75, 73, 'Слабо убаюкивающие', 0);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
