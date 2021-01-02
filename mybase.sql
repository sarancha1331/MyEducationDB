-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Янв 02 2021 г., 17:28
-- Версия сервера: 10.3.22-MariaDB
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `mybase`
--

-- --------------------------------------------------------

--
-- Структура таблицы `avtopark`
--

CREATE TABLE `avtopark` (
  `id` int(11) NOT NULL,
  `Adress` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SizePark` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SchoolId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `avtopark`
--

INSERT INTO `avtopark` (`id`, `Adress`, `SizePark`, `SchoolId`) VALUES
(1, 'Ул. Пушкина 16', '100х100', 1),
(2, 'Ул. Ленина 4', '50х50', 2),
(3, 'Ул. Героев Сталинграда 77', '30х30', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `car`
--

CREATE TABLE `car` (
  `id` int(11) NOT NULL,
  `Nazv` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Color` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `AvtoparkId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `car`
--

INSERT INTO `car` (`id`, `Nazv`, `Color`, `AvtoparkId`) VALUES
(1, 'Машина 1', 'Красный', 1),
(2, 'Машина 1', 'Красный', 1),
(3, 'Машина 2', 'Синий', 2),
(4, 'Машина 2', 'Красный', 2),
(5, 'Машина 3', 'Синий', 3),
(6, 'Машина 3', 'Красный', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `dolj`
--

CREATE TABLE `dolj` (
  `id` int(11) NOT NULL,
  `Nazv` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `OkladId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `dolj`
--

INSERT INTO `dolj` (`id`, `Nazv`, `OkladId`) VALUES
(1, 'Учитель математики', 1),
(2, 'Учитель физики', 1),
(3, 'Учитель химии', 2),
(4, 'Учитель биологии', 4),
(5, 'Учитель физры', 5),
(6, 'Учитель природоведения', 3),
(7, 'Водитель', 5),
(8, 'Уборщик', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `ApparatusData` timestamp NOT NULL DEFAULT current_timestamp(),
  `Specializations` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Schoolid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `employee`
--

INSERT INTO `employee` (`id`, `ApparatusData`, `Specializations`, `Schoolid`) VALUES
(1, '2021-01-01 17:21:57', 'Учащийся', 1),
(2, '2021-01-01 17:25:41', 'Учащийся', 1),
(3, '2021-01-01 17:25:41', 'Учащийся', 1),
(4, '2021-01-01 17:25:41', 'Учащийся', 2),
(5, '2021-01-01 17:25:41', 'Учащийся', 2),
(6, '2021-01-01 17:25:41', 'Учащийся', 2),
(7, '2021-01-01 17:25:41', 'Учащийся', 3),
(8, '2021-01-01 17:25:41', 'Учащийся', 3),
(9, '2021-01-01 17:25:41', 'Учащийся', 3),
(10, '2021-01-01 17:25:41', 'Стажер', 1),
(11, '2021-01-01 17:25:41', 'Доцент', 1),
(12, '2021-01-01 17:25:41', 'Стажер', 2),
(13, '2021-01-01 17:25:41', 'Старший преподаватель', 2),
(14, '2021-01-01 17:25:41', 'Старший преподаватель', 3),
(15, '2021-01-01 17:25:41', 'Преподаватель', 3),
(16, '2021-01-01 17:25:41', 'Водитель', 1),
(17, '2021-01-01 17:25:41', 'Водитель', 2),
(18, '2021-01-01 17:25:41', 'Водитель', 3),
(19, '2021-01-01 17:25:41', 'Уборщик', 1),
(20, '2021-01-01 17:25:41', 'Уборщик', 2),
(21, '2021-01-01 17:25:41', 'Уборщик', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `Nazv` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Data` timestamp NOT NULL DEFAULT current_timestamp(),
  `SchoolId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `events`
--

INSERT INTO `events` (`id`, `Nazv`, `Data`, `SchoolId`) VALUES
(1, 'Праздник', '2021-01-01 18:26:01', 1),
(2, 'Праздник 2', '2021-01-01 18:26:26', 1),
(3, 'Праздник 3', '2021-01-01 18:26:26', 2),
(4, 'Праздник 4', '2021-01-01 18:26:26', 2),
(5, 'Праздник 5', '2021-01-01 18:26:26', 3),
(6, 'Праздник 6', '2021-01-01 18:26:26', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `federation`
--

CREATE TABLE `federation` (
  `id` int(11) NOT NULL,
  `Nazv` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DataBasis` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `federation`
--

INSERT INTO `federation` (`id`, `Nazv`, `DataBasis`) VALUES
(1, 'Федерация 1', '2021-01-01 18:52:08'),
(2, 'Федерация 2', '2021-01-01 18:52:21'),
(3, 'Федерация 3', '2021-01-01 18:52:21');

-- --------------------------------------------------------

--
-- Структура таблицы `oklad`
--

CREATE TABLE `oklad` (
  `id` int(11) NOT NULL,
  `Oklad` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `oklad`
--

INSERT INTO `oklad` (`id`, `Oklad`) VALUES
(1, '20000'),
(2, '30000'),
(3, '40000'),
(4, '50000'),
(5, '60000'),
(6, '70000'),
(7, '80000'),
(8, '90000');

-- --------------------------------------------------------

--
-- Структура таблицы `olimpic`
--

CREATE TABLE `olimpic` (
  `id` int(11) NOT NULL,
  `DataOlimpic` timestamp NOT NULL DEFAULT current_timestamp(),
  `Nazv` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Subject` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `olimpic`
--

INSERT INTO `olimpic` (`id`, `DataOlimpic`, `Nazv`, `Subject`) VALUES
(1, '2021-01-01 18:44:58', 'Всероссийская Олимпиада', 'Матеша'),
(2, '2021-01-01 18:45:18', 'Всероссийская Олимпиада 2', 'Физика'),
(3, '2021-01-01 18:45:18', 'Всероссийская Олимпиада 3', 'Химия');

-- --------------------------------------------------------

--
-- Структура таблицы `olimpicandstudent`
--

CREATE TABLE `olimpicandstudent` (
  `id` int(11) NOT NULL,
  `OlimpicId` int(11) NOT NULL,
  `StudentId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `olimpicandstudent`
--

INSERT INTO `olimpicandstudent` (`id`, `OlimpicId`, `StudentId`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 2, 4),
(5, 2, 5),
(6, 2, 6),
(7, 3, 7),
(8, 3, 8),
(9, 3, 9);

-- --------------------------------------------------------

--
-- Структура таблицы `otherpersonal`
--

CREATE TABLE `otherpersonal` (
  `id` int(11) NOT NULL,
  `FIO` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DoljId` int(11) NOT NULL,
  `Employeeid` int(11) NOT NULL,
  `StajId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `otherpersonal`
--

INSERT INTO `otherpersonal` (`id`, `FIO`, `DoljId`, `Employeeid`, `StajId`) VALUES
(1, 'Водила 1', 7, 16, 1),
(2, 'Водила 2', 7, 17, 1),
(3, 'Водила 3', 7, 18, 2),
(4, 'Уборщик 1', 8, 19, 2),
(5, 'Уборщик 2', 8, 20, 3),
(6, 'Уборщик 3', 8, 21, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `school`
--

CREATE TABLE `school` (
  `id` int(11) NOT NULL,
  `Name` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Address` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `school`
--

INSERT INTO `school` (`id`, `Name`, `Address`) VALUES
(1, 'Школа1', 'г. Симферополь'),
(2, 'Школа2', 'г. Керчь'),
(3, 'Школа3', 'г. Судак');

-- --------------------------------------------------------

--
-- Структура таблицы `sport`
--

CREATE TABLE `sport` (
  `id` int(11) NOT NULL,
  `Nazv` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `sport`
--

INSERT INTO `sport` (`id`, `Nazv`) VALUES
(1, 'Футболл'),
(2, 'Баскет'),
(3, 'Тенис');

-- --------------------------------------------------------

--
-- Структура таблицы `sportsman`
--

CREATE TABLE `sportsman` (
  `id` int(11) NOT NULL,
  `FederationId` int(11) NOT NULL,
  `SportId` int(11) NOT NULL,
  `Status` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `StudentId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `sportsman`
--

INSERT INTO `sportsman` (`id`, `FederationId`, `SportId`, `Status`, `StudentId`) VALUES
(1, 1, 1, 'МС', 1),
(2, 2, 2, 'КМС', 2),
(3, 3, 3, 'Участник', 3),
(4, 1, 1, 'Участник', 4),
(5, 2, 2, 'Участник', 5),
(6, 3, 3, 'Участник', 6);

-- --------------------------------------------------------

--
-- Структура таблицы `staj`
--

CREATE TABLE `staj` (
  `id` int(11) NOT NULL,
  `Staj` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `staj`
--

INSERT INTO `staj` (`id`, `Staj`) VALUES
(1, '1 год'),
(2, '2 года'),
(3, '3 года'),
(4, '4 года'),
(5, '5 лет'),
(6, '6 лет');

-- --------------------------------------------------------

--
-- Структура таблицы `standings`
--

CREATE TABLE `standings` (
  `id` int(11) NOT NULL,
  `Place` int(11) NOT NULL,
  `StudentId` int(11) NOT NULL,
  `OlimpicId` int(11) NOT NULL,
  `Prize` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `FIO` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `GroupStud` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Born` timestamp NOT NULL DEFAULT current_timestamp(),
  `idEmployee` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `student`
--

INSERT INTO `student` (`id`, `FIO`, `GroupStud`, `Born`, `idEmployee`) VALUES
(1, 'Петя Петров', '1 класс', '2021-01-01 17:40:31', 1),
(2, 'Коля Иванов', '1 класс', '2021-01-01 17:41:02', 2),
(3, 'Даша Семёновна', '1 класс', '2021-01-01 17:41:02', 3),
(4, 'Валера Валера', '2 класс', '2021-01-01 17:41:02', 4),
(5, 'Димон Димон', '2 класс', '2021-01-01 17:41:02', 5),
(6, 'Ашот Ашот', '2 класс', '2021-01-01 17:41:02', 6),
(7, 'Костян Костян', '3 класс', '2021-01-01 17:41:02', 7),
(8, 'Александр Дмитриевич', '3 класс', '2021-01-01 17:41:02', 8),
(9, 'Надежда Константиновна', '3 класс', '2021-01-01 17:41:02', 9);

-- --------------------------------------------------------

--
-- Структура таблицы `teacher`
--

CREATE TABLE `teacher` (
  `id` int(11) NOT NULL,
  `FIO` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DoljId` int(11) NOT NULL,
  `EmployeeId` int(11) NOT NULL,
  `StajId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `teacher`
--

INSERT INTO `teacher` (`id`, `FIO`, `DoljId`, `EmployeeId`, `StajId`) VALUES
(1, 'Препод 1', 1, 10, 1),
(2, 'Препод 2', 2, 11, 1),
(3, 'Препод 3', 3, 12, 2),
(4, 'Препод 4', 4, 13, 2),
(5, 'Препод 5', 5, 14, 3),
(6, 'Препод 6', 6, 15, 3);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `avtopark`
--
ALTER TABLE `avtopark`
  ADD PRIMARY KEY (`id`),
  ADD KEY `SchoolId` (`SchoolId`);

--
-- Индексы таблицы `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`id`),
  ADD KEY `AvtoparkId` (`AvtoparkId`);

--
-- Индексы таблицы `dolj`
--
ALTER TABLE `dolj`
  ADD PRIMARY KEY (`id`),
  ADD KEY `OkladId` (`OkladId`);

--
-- Индексы таблицы `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idSchool` (`Schoolid`);

--
-- Индексы таблицы `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `SchoolId` (`SchoolId`);

--
-- Индексы таблицы `federation`
--
ALTER TABLE `federation`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `oklad`
--
ALTER TABLE `oklad`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `olimpic`
--
ALTER TABLE `olimpic`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `olimpicandstudent`
--
ALTER TABLE `olimpicandstudent`
  ADD PRIMARY KEY (`id`),
  ADD KEY `OlimpicId` (`OlimpicId`),
  ADD KEY `StudentId` (`StudentId`);

--
-- Индексы таблицы `otherpersonal`
--
ALTER TABLE `otherpersonal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `DoljId` (`DoljId`),
  ADD KEY `Employeeid` (`Employeeid`),
  ADD KEY `StajId` (`StajId`);

--
-- Индексы таблицы `school`
--
ALTER TABLE `school`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sport`
--
ALTER TABLE `sport`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sportsman`
--
ALTER TABLE `sportsman`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FederationId` (`FederationId`),
  ADD KEY `SportId` (`SportId`),
  ADD KEY `StudentId` (`StudentId`);

--
-- Индексы таблицы `staj`
--
ALTER TABLE `staj`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `standings`
--
ALTER TABLE `standings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `OlimpicId` (`OlimpicId`),
  ADD KEY `StudentId` (`StudentId`);

--
-- Индексы таблицы `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idEmployee` (`idEmployee`);

--
-- Индексы таблицы `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id`),
  ADD KEY `DoljId` (`DoljId`),
  ADD KEY `EmployeeId` (`EmployeeId`),
  ADD KEY `StajId` (`StajId`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `avtopark`
--
ALTER TABLE `avtopark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `car`
--
ALTER TABLE `car`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `dolj`
--
ALTER TABLE `dolj`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `federation`
--
ALTER TABLE `federation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `oklad`
--
ALTER TABLE `oklad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `olimpic`
--
ALTER TABLE `olimpic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `olimpicandstudent`
--
ALTER TABLE `olimpicandstudent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `otherpersonal`
--
ALTER TABLE `otherpersonal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `school`
--
ALTER TABLE `school`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `sport`
--
ALTER TABLE `sport`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `sportsman`
--
ALTER TABLE `sportsman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `staj`
--
ALTER TABLE `staj`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `standings`
--
ALTER TABLE `standings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `avtopark`
--
ALTER TABLE `avtopark`
  ADD CONSTRAINT `avtopark_ibfk_1` FOREIGN KEY (`SchoolId`) REFERENCES `school` (`id`);

--
-- Ограничения внешнего ключа таблицы `car`
--
ALTER TABLE `car`
  ADD CONSTRAINT `car_ibfk_1` FOREIGN KEY (`AvtoparkId`) REFERENCES `avtopark` (`id`);

--
-- Ограничения внешнего ключа таблицы `dolj`
--
ALTER TABLE `dolj`
  ADD CONSTRAINT `dolj_ibfk_1` FOREIGN KEY (`OkladId`) REFERENCES `oklad` (`id`);

--
-- Ограничения внешнего ключа таблицы `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`Schoolid`) REFERENCES `school` (`id`);

--
-- Ограничения внешнего ключа таблицы `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `events_ibfk_1` FOREIGN KEY (`SchoolId`) REFERENCES `school` (`id`);

--
-- Ограничения внешнего ключа таблицы `olimpicandstudent`
--
ALTER TABLE `olimpicandstudent`
  ADD CONSTRAINT `olimpicandstudent_ibfk_1` FOREIGN KEY (`OlimpicId`) REFERENCES `olimpic` (`id`),
  ADD CONSTRAINT `olimpicandstudent_ibfk_2` FOREIGN KEY (`StudentId`) REFERENCES `student` (`id`);

--
-- Ограничения внешнего ключа таблицы `otherpersonal`
--
ALTER TABLE `otherpersonal`
  ADD CONSTRAINT `otherpersonal_ibfk_1` FOREIGN KEY (`DoljId`) REFERENCES `dolj` (`id`),
  ADD CONSTRAINT `otherpersonal_ibfk_2` FOREIGN KEY (`Employeeid`) REFERENCES `employee` (`id`),
  ADD CONSTRAINT `otherpersonal_ibfk_3` FOREIGN KEY (`StajId`) REFERENCES `staj` (`id`);

--
-- Ограничения внешнего ключа таблицы `sportsman`
--
ALTER TABLE `sportsman`
  ADD CONSTRAINT `sportsman_ibfk_1` FOREIGN KEY (`FederationId`) REFERENCES `federation` (`id`),
  ADD CONSTRAINT `sportsman_ibfk_2` FOREIGN KEY (`SportId`) REFERENCES `sport` (`id`),
  ADD CONSTRAINT `sportsman_ibfk_3` FOREIGN KEY (`StudentId`) REFERENCES `student` (`id`);

--
-- Ограничения внешнего ключа таблицы `standings`
--
ALTER TABLE `standings`
  ADD CONSTRAINT `standings_ibfk_1` FOREIGN KEY (`OlimpicId`) REFERENCES `olimpic` (`id`),
  ADD CONSTRAINT `standings_ibfk_2` FOREIGN KEY (`StudentId`) REFERENCES `student` (`id`);

--
-- Ограничения внешнего ключа таблицы `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`idEmployee`) REFERENCES `employee` (`id`);

--
-- Ограничения внешнего ключа таблицы `teacher`
--
ALTER TABLE `teacher`
  ADD CONSTRAINT `teacher_ibfk_1` FOREIGN KEY (`DoljId`) REFERENCES `dolj` (`id`),
  ADD CONSTRAINT `teacher_ibfk_3` FOREIGN KEY (`EmployeeId`) REFERENCES `employee` (`id`),
  ADD CONSTRAINT `teacher_ibfk_4` FOREIGN KEY (`StajId`) REFERENCES `staj` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
