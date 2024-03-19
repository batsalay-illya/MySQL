-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Мар 19 2024 г., 09:47
-- Версия сервера: 10.4.32-MariaDB
-- Версия PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `testdb`
--

-- --------------------------------------------------------

--
-- Структура таблицы `books`
--

CREATE TABLE `books` (
  `N` int(11) NOT NULL,
  `Code` int(11) NOT NULL,
  `New` char(3) NOT NULL,
  `Name` char(255) NOT NULL,
  `Price` decimal(10,2) DEFAULT NULL,
  `Publisher_id` int(11) NOT NULL,
  `Pages` int(11) DEFAULT NULL,
  `Format_id` int(11) NOT NULL,
  `Date` date DEFAULT NULL,
  `Copies` int(11) DEFAULT NULL,
  `Theme_id` int(11) NOT NULL,
  `Category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `books`
--

INSERT INTO `books` (`N`, `Code`, `New`, `Name`, `Price`, `Publisher_id`, `Pages`, `Format_id`, `Date`, `Copies`, `Theme_id`, `Category_id`) VALUES
(2, 5110, 'No', 'Апаратні засоби мультимедіа. Відеосистема РС', 15.51, 1, 400, 1, '2000-07-24', 5000, 1, 1),
(8, 4985, 'No', 'Засвой самостійно модернізацію та ремонт ПК за 24 години, 2-ге вид.', 18.90, 2, 288, 1, '2000-07-07', 5000, 1, 1),
(9, 5141, 'No', 'Структури даних та алгоритми', 37.80, 2, 384, 1, '2000-09-29', 5000, 1, 1),
(20, 5127, 'No', 'Автоматизація інженерно-графічних робіт', 11.58, 1, 256, 1, '2000-06-15', 5000, 1, 1),
(31, 5110, 'No', 'Апаратні засоби мультимедіа. Відеосистема РС', 15.51, 1, 400, 1, '2000-07-24', 5000, 1, 2),
(46, 5199, 'No', 'Залізо IBM 2001', 30.07, 3, 368, 1, '2000-12-02', 5000, 1, 2),
(50, 3851, 'No', 'Захист інформації та безпека комп\'ютерних систем', 26.00, 4, 480, 2, NULL, 5000, 1, 3),
(58, 3932, 'No', 'Як перетворити персональний комп\'ютер на вимірювальний комплекс', 7.65, 5, 144, 3, '1999-09-06', 5000, 1, 4),
(59, 4713, 'No', 'Plug-ins. Додаткові програми для музичних програм', 11.41, 5, 144, 1, '2000-02-22', 5000, 1, 4),
(175, 5217, 'No', 'Windows МЕ. Найновіші версії програм', 16.57, 6, 320, 1, '2000-08-25', 5000, 2, 5),
(176, 4829, 'No', 'Microsoft 2000 Professional крок за кроком з CD', 27.25, 10, 320, 1, '2000-04-28', 5000, 2, 5),
(188, 5170, 'No', 'Linux версії', 24.43, 5, 346, 1, '2000-09-29', 5000, 2, 6),
(191, 860, 'No', 'Операційна система UNIX', 3.50, 1, 395, 6, '1997-05-05', 5000, 2, 7),
(203, 44, 'No', 'Відповіді на актуальні запитання щодо OS/2 Warp', 5.00, 4, 352, 4, '1996-03-20', 5000, 2, 8),
(206, 5176, 'No', 'Windows Ме. Супутник користувача', 12.79, 1, 306, 0, '2000-10-10', 5000, 2, 8),
(209, 5462, 'No', 'Мова програмування С++. Лекції та вправи', 29.00, 4, 656, 2, '2000-12-12', 5000, 3, 9),
(210, 4982, 'No', 'Мова програмування С. Лекції та вправи', 29.00, 4, 432, 2, '2000-07-12', 5000, 3, 9),
(220, 4687, 'No', 'Ефективне використання C++ .50 рекомендацій щодо покращення ваших програм та проектів', 17.60, 5, 240, 1, '2000-02-03', 5000, 3, 9),
(222, 235, 'No', 'Інформаційні системи і структури даних', NULL, 7, 288, 5, NULL, 400, 1, 4),
(225, 8746, 'Yes', 'Бази даних в інформаційних системах', NULL, 8, 418, 4, '2018-07-25', 100, 3, 10),
(226, 2154, 'Yes', 'Сервер на основі операційної системи FreeBSD 6.1', 0.00, 8, 216, 4, '2015-03-11', 500, 3, 8),
(245, 2662, 'No', 'Організація баз даних та знань', 0.00, 9, 208, 5, '2001-10-10', 1000, 3, 10),
(247, 5641, 'Yes', 'Організація баз даних та знань', 0.00, 1, 384, 1, '2021-12-15', 5000, 3, 10);

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `Category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `Category`) VALUES
(1, 'Підручники'),
(2, 'Апаратні засоби ПК'),
(3, 'Захист і безпека ПК'),
(4, 'Інші книги'),
(5, 'Windows 2000'),
(6, 'Linux'),
(7, 'Unix'),
(8, 'Інші операційні системи'),
(9, 'C&C++'),
(10, 'SQL');

-- --------------------------------------------------------

--
-- Структура таблицы `formats`
--

CREATE TABLE `formats` (
  `id` int(11) NOT NULL,
  `Format` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `formats`
--

INSERT INTO `formats` (`id`, `Format`) VALUES
(1, '70х100/16'),
(2, '84х108/16'),
(3, '60х88/16'),
(4, '60х84/16'),
(5, '60х90/16'),
(6, '84х100/16');

-- --------------------------------------------------------

--
-- Структура таблицы `publisher`
--

CREATE TABLE `publisher` (
  `id` int(11) NOT NULL,
  `Publisher` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `publisher`
--

INSERT INTO `publisher` (`id`, `Publisher`) VALUES
(1, 'Видавнича група BHV'),
(2, 'Вільямс'),
(3, 'МикроАрт'),
(4, 'DiaSoft'),
(5, 'ДМК'),
(6, 'Триумф'),
(7, 'Києво-Могилянська академія'),
(8, 'Університет \"Україна\"'),
(9, 'Вінниця: ВДТУ'),
(10, 'Эком');

-- --------------------------------------------------------

--
-- Структура таблицы `themes`
--

CREATE TABLE `themes` (
  `id` int(11) NOT NULL,
  `Theme` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `themes`
--

INSERT INTO `themes` (`id`, `Theme`) VALUES
(1, 'Використання ПК в цілому'),
(2, 'Операційні системи'),
(3, 'Програмування');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`N`),
  ADD KEY `Category_FK` (`Category_id`),
  ADD KEY `Publisher_FK` (`Publisher_id`),
  ADD KEY `Theme_FK` (`Theme_id`),
  ADD KEY `Format_FK` (`Format_id`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `formats`
--
ALTER TABLE `formats`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `themes`
--
ALTER TABLE `themes`
  ADD PRIMARY KEY (`id`);

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `Category_FK` FOREIGN KEY (`Category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `Format_FK` FOREIGN KEY (`Format_id`) REFERENCES `formats` (`id`),
  ADD CONSTRAINT `Publisher_FK` FOREIGN KEY (`Publisher_id`) REFERENCES `publisher` (`id`),
  ADD CONSTRAINT `Theme_FK` FOREIGN KEY (`Theme_id`) REFERENCES `themes` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
