-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 15 2021 г., 18:27
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
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `title`) VALUES
(1, 30, 'Бизнес-книги'),
(9, 1, 'Менеджмент'),
(10, 1, 'Бизнес'),
(11, 1, 'Банковское дело'),
(12, 1, 'Недвижимость'),
(13, 1, 'Малый бизнес'),
(14, 1, 'Продажи'),
(27, 0, 'Для младшеклассников(1-4)'),
(28, 0, 'Для среднеклассников(5-8)'),
(29, 0, 'Для старшеклассников(9-11)'),
(30, 0, 'Для выпускниковых'),
(37, 27, 'Сказки'),
(38, 27, 'Стишки'),
(39, 27, 'Буквари'),
(40, 27, 'Частушки'),
(41, 27, 'Считалочки'),
(42, 28, 'Шутки'),
(46, 27, 'Былины'),
(47, 28, 'Поэзия'),
(48, 27, 'Фольклор'),
(49, 30, 'Публицистикао'),
(50, 49, 'Мемуары'),
(51, 49, 'Документалистика'),
(52, 49, 'Спецслужбы'),
(53, 49, 'Интервью'),
(54, 49, 'Цитаты'),
(55, 49, 'Рецензии'),
(56, 28, 'Фантастика'),
(57, 28, 'Фентези'),
(58, 28, 'Детские детективы'),
(59, 28, 'Отечественная поэзия'),
(60, 29, 'Зарубежная проза'),
(61, 29, 'отечественная проза'),
(62, 29, 'Ужасы'),
(63, 29, 'Мистика'),
(64, 38, 'Меньше 10-ти строк'),
(65, 38, 'Меньше 20-ти строк'),
(66, 38, 'Меньше 30-ти строк'),
(67, 38, 'Меньше 40 строк'),
(68, 64, 'Нейтральные'),
(69, 64, 'Положительные'),
(70, 65, 'Искренние'),
(71, 65, 'Расфуфыренные'),
(72, 66, 'Надменные'),
(73, 66, 'Убаюкивающие'),
(74, 73, 'Сильно убаюкивающие'),
(75, 73, 'Слабо убаюкивающие');

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
