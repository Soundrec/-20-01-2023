--
-- Скрипт сгенерирован Devart dbForge Studio 2020 for MySQL, Версия 9.0.391.0
-- Домашняя страница продукта: http://www.devart.com/ru/dbforge/mysql/studio
-- Дата скрипта: 27.12.2022 15:35:20
-- Версия сервера: 5.7.11
-- Версия клиента: 4.1
--

-- 
-- Отключение внешних ключей
-- 
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

-- 
-- Установить режим SQL (SQL mode)
-- 
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 
-- Установка кодировки, с использованием которой клиент будет посылать запросы на сервер
--
SET NAMES 'utf8';

--
-- Установка базы данных по умолчанию
--
USE questbase;

--
-- Удалить представление `view_booking_full_info`
--
DROP VIEW IF EXISTS view_booking_full_info CASCADE;

--
-- Удалить представление `view_fullcost_months`
--
DROP VIEW IF EXISTS view_fullcost_months CASCADE;

--
-- Удалить представление `view_booking_price_actors`
--
DROP VIEW IF EXISTS view_booking_price_actors CASCADE;

--
-- Удалить таблицу `actor_booking`
--
DROP TABLE IF EXISTS actor_booking;

--
-- Удалить таблицу `actors`
--
DROP TABLE IF EXISTS actors;

--
-- Удалить представление `view_booking_prices`
--
DROP VIEW IF EXISTS view_booking_prices CASCADE;

--
-- Удалить представление `view_for_prices`
--
DROP VIEW IF EXISTS view_for_prices CASCADE;

--
-- Удалить представление `view_info_booking_status_source`
--
DROP VIEW IF EXISTS view_info_booking_status_source CASCADE;

--
-- Удалить представление `view_info_booking_team`
--
DROP VIEW IF EXISTS view_info_booking_team CASCADE;

--
-- Удалить таблицу `booking`
--
DROP TABLE IF EXISTS booking;

--
-- Удалить таблицу `prices`
--
DROP TABLE IF EXISTS prices;

--
-- Удалить таблицу `quests_catalog`
--
DROP TABLE IF EXISTS quests_catalog;

--
-- Удалить таблицу `source`
--
DROP TABLE IF EXISTS source;

--
-- Удалить таблицу `status`
--
DROP TABLE IF EXISTS status;

--
-- Удалить таблицу `person`
--
DROP TABLE IF EXISTS person;

--
-- Удалить таблицу `team`
--
DROP TABLE IF EXISTS team;

--
-- Установка базы данных по умолчанию
--
USE questbase;

--
-- Создать таблицу `team`
--
CREATE TABLE team (
  IDteam int(11) NOT NULL AUTO_INCREMENT,
  quantity smallint(6) DEFAULT NULL,
  discount varchar(255) DEFAULT '0',
  comment varchar(255) DEFAULT NULL,
  PRIMARY KEY (IDteam),
  UNIQUE INDEX IDteam (IDteam),
  UNIQUE INDEX IDteam_2 (IDteam)
)
ENGINE = INNODB,
AUTO_INCREMENT = 23,
AVG_ROW_LENGTH = 744,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_general_ci;

--
-- Создать таблицу `person`
--
CREATE TABLE person (
  IDteam int(11) NOT NULL,
  namep varchar(50) DEFAULT '',
  phone varchar(255) NOT NULL DEFAULT ''
)
ENGINE = INNODB,
AVG_ROW_LENGTH = 963,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_general_ci;

--
-- Создать внешний ключ
--
ALTER TABLE person
ADD CONSTRAINT FK_person_IDteam FOREIGN KEY (IDteam)
REFERENCES team (IDteam) ON DELETE NO ACTION;

--
-- Создать таблицу `status`
--
CREATE TABLE status (
  IDstatus int(11) NOT NULL,
  name varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (IDstatus)
)
ENGINE = INNODB,
AVG_ROW_LENGTH = 4096,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_general_ci;

--
-- Создать индекс `IDX_status_IDstatus` для объекта типа таблица `status`
--
ALTER TABLE status
ADD INDEX IDX_status_IDstatus (IDstatus);

--
-- Создать таблицу `source`
--
CREATE TABLE source (
  IDsource int(11) NOT NULL,
  name varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (IDsource)
)
ENGINE = INNODB,
AVG_ROW_LENGTH = 4096,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_general_ci;

--
-- Создать таблицу `quests_catalog`
--
CREATE TABLE quests_catalog (
  IDquest int(11) NOT NULL AUTO_INCREMENT,
  nameq varchar(50) NOT NULL DEFAULT '',
  description varchar(255) DEFAULT NULL,
  photos blob DEFAULT NULL,
  PRIMARY KEY (IDquest)
)
ENGINE = INNODB,
AUTO_INCREMENT = 3,
AVG_ROW_LENGTH = 8192,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_general_ci;

--
-- Создать индекс `UK_quests_catalog_name` для объекта типа таблица `quests_catalog`
--
ALTER TABLE quests_catalog
ADD UNIQUE INDEX UK_quests_catalog_name (nameq);

--
-- Создать таблицу `prices`
--
CREATE TABLE prices (
  IDprice int(11) NOT NULL AUTO_INCREMENT,
  IDquest int(11) NOT NULL,
  weekday int(11) NOT NULL,
  time time NOT NULL,
  price float NOT NULL,
  PRIMARY KEY (IDprice)
)
ENGINE = INNODB,
AUTO_INCREMENT = 25,
AVG_ROW_LENGTH = 682,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_general_ci;

--
-- Создать индекс `UK_prices` для объекта типа таблица `prices`
--
ALTER TABLE prices
ADD UNIQUE INDEX UK_prices (time, weekday);

--
-- Создать внешний ключ
--
ALTER TABLE prices
ADD CONSTRAINT FK_prices_IDquest FOREIGN KEY (IDquest)
REFERENCES quests_catalog (IDquest) ON DELETE NO ACTION;

--
-- Создать таблицу `booking`
--
CREATE TABLE booking (
  IDbooking int(11) NOT NULL AUTO_INCREMENT,
  IDquest int(11) NOT NULL,
  IDteam int(11) DEFAULT NULL,
  IDstatus int(11) NOT NULL,
  IDsource int(11) NOT NULL,
  date date DEFAULT NULL,
  time time DEFAULT NULL,
  PRIMARY KEY (IDbooking)
)
ENGINE = INNODB,
AUTO_INCREMENT = 14,
AVG_ROW_LENGTH = 1260,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_general_ci;

--
-- Создать индекс `IDX_booking` для объекта типа таблица `booking`
--
ALTER TABLE booking
ADD INDEX IDX_booking (date, time);

--
-- Создать индекс `IDX_booking_date` для объекта типа таблица `booking`
--
ALTER TABLE booking
ADD INDEX IDX_booking_date (date);

--
-- Создать внешний ключ
--
ALTER TABLE booking
ADD CONSTRAINT FK_booking_IDquest FOREIGN KEY (IDquest)
REFERENCES quests_catalog (IDquest) ON DELETE NO ACTION;

--
-- Создать внешний ключ
--
ALTER TABLE booking
ADD CONSTRAINT FK_booking_IDsource FOREIGN KEY (IDsource)
REFERENCES source (IDsource) ON DELETE NO ACTION;

--
-- Создать внешний ключ
--
ALTER TABLE booking
ADD CONSTRAINT FK_booking_IDstatus2 FOREIGN KEY (IDstatus)
REFERENCES status (IDstatus) ON DELETE NO ACTION;

--
-- Создать внешний ключ
--
ALTER TABLE booking
ADD CONSTRAINT FK_booking_IDteam FOREIGN KEY (IDteam)
REFERENCES team (IDteam) ON DELETE NO ACTION;

--
-- Создать представление `view_info_booking_team`
--
CREATE
DEFINER = 'root'@'localhost'
VIEW view_info_booking_team
AS
SELECT
  `booking`.`IDbooking` AS `IDbooking`,
  `team`.`quantity` AS `quantity`,
  `team`.`discount` AS `discount`,
  `team`.`IDteam` AS `IDteam`,
  `team`.`comment` AS `comment`,
  `person`.`namep` AS `namep`,
  `person`.`phone` AS `phone`
FROM ((`team`
  JOIN `person`
    ON ((`team`.`IDteam` = `person`.`IDteam`)))
  JOIN `booking`
    ON ((`booking`.`IDteam` = `team`.`IDteam`)));

--
-- Создать представление `view_info_booking_status_source`
--
CREATE
DEFINER = 'root'@'localhost'
VIEW view_info_booking_status_source
AS
SELECT
  `booking`.`IDbooking` AS `IDbooking`,
  `source`.`name` AS `sourcename`,
  `status`.`name` AS `statusname`,
  `status`.`IDstatus` AS `IDstatus`,
  `source`.`IDsource` AS `IDsource`
FROM ((`booking`
  JOIN `status`
    ON ((`booking`.`IDstatus` = `status`.`IDstatus`)))
  JOIN `source`
    ON ((`booking`.`IDsource` = `source`.`IDsource`)));

--
-- Создать представление `view_for_prices`
--
CREATE
DEFINER = 'root'@'localhost'
VIEW view_for_prices
AS
SELECT
  `booking`.`date` AS `date`,
  `booking`.`IDteam` AS `IDteam`,
  `booking`.`IDbooking` AS `IDbooking`,
  IF((DAYOFWEEK(`booking`.`date`) < 5), 0, 5) AS `dayOfWeek`,
  (IF((`team`.`quantity` > 5), (`team`.`quantity` - 5), 0) * 500) AS `fivePlus`,
  `booking`.`time` AS `time`,
  `team`.`discount` AS `discount`
FROM (`booking`
  JOIN `team`
    ON ((`booking`.`IDteam` = `team`.`IDteam`)));

--
-- Создать представление `view_booking_prices`
--
CREATE
DEFINER = 'root'@'localhost'
VIEW view_booking_prices
AS
SELECT
  `view_for_prices`.`IDbooking` AS `IDbooking`,
  `view_for_prices`.`date` AS `date`,
  `view_for_prices`.`time` AS `time`,
  `quests_catalog`.`nameq` AS `nameq`,
  (((`prices`.`price` + `view_for_prices`.`fivePlus`) * (100 - `view_for_prices`.`discount`)) / 100) AS `finalprice`
FROM (((`prices`
  JOIN `view_for_prices`
    ON (((`prices`.`time` = `view_for_prices`.`time`)
    AND (`view_for_prices`.`dayOfWeek` = `prices`.`weekday`))))
  JOIN `booking`)
  JOIN `quests_catalog`
    ON (((`view_for_prices`.`IDbooking` = `booking`.`IDbooking`)
    AND (`quests_catalog`.`IDquest` = `booking`.`IDquest`))));

--
-- Создать таблицу `actors`
--
CREATE TABLE actors (
  IDactor int(11) NOT NULL AUTO_INCREMENT,
  name varchar(50) NOT NULL DEFAULT '',
  surname varchar(50) NOT NULL DEFAULT '',
  phone varchar(50) NOT NULL DEFAULT '',
  games_played smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (IDactor)
)
ENGINE = INNODB,
AUTO_INCREMENT = 5,
AVG_ROW_LENGTH = 4096,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_general_ci;

--
-- Создать индекс `UK_actors` для объекта типа таблица `actors`
--
ALTER TABLE actors
ADD UNIQUE INDEX UK_actors (name, surname);

--
-- Создать таблицу `actor_booking`
--
CREATE TABLE actor_booking (
  IDbooking int(11) NOT NULL,
  IDactor int(11) NOT NULL,
  PRIMARY KEY (IDactor, IDbooking)
)
ENGINE = INNODB,
AVG_ROW_LENGTH = 2340,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_general_ci;

--
-- Создать внешний ключ
--
ALTER TABLE actor_booking
ADD CONSTRAINT FK_actor_booking_IDactor FOREIGN KEY (IDactor)
REFERENCES actors (IDactor) ON DELETE NO ACTION;

--
-- Создать внешний ключ
--
ALTER TABLE actor_booking
ADD CONSTRAINT FK_actor_booking_IDbooking FOREIGN KEY (IDbooking)
REFERENCES booking (IDbooking) ON DELETE NO ACTION;

--
-- Создать представление `view_booking_price_actors`
--
CREATE
DEFINER = 'root'@'localhost'
VIEW view_booking_price_actors
AS
SELECT
  `view_booking_prices`.`IDbooking` AS `IDbooking`,
  `view_booking_prices`.`date` AS `date`,
  `view_booking_prices`.`time` AS `time`,
  `view_booking_prices`.`nameq` AS `nameq`,
  `view_booking_prices`.`finalprice` AS `finalprice`,
  GROUP_CONCAT(' ', `actors`.`name`, ' ', `actors`.`surname` SEPARATOR ',') AS `actors_one_game`
FROM (`view_booking_prices`
  LEFT JOIN (`actors`
    JOIN `actor_booking`)
    ON (((`view_booking_prices`.`IDbooking` = `actor_booking`.`IDbooking`)
    AND (`actors`.`IDactor` = `actor_booking`.`IDactor`))))
GROUP BY `view_booking_prices`.`IDbooking`,
         `actor_booking`.`IDbooking`;

--
-- Создать представление `view_fullcost_months`
--
CREATE
DEFINER = 'root'@'localhost'
VIEW view_fullcost_months
AS
SELECT
  YEAR(`view_booking_price_actors`.`date`) AS `years`,
  MONTH(`view_booking_price_actors`.`date`) AS `months`,
  `view_booking_price_actors`.`nameq` AS `nameq`,
  SUM(`view_booking_price_actors`.`finalprice`) AS `qFullCost`
FROM `view_booking_price_actors`
GROUP BY `view_booking_price_actors`.`nameq`,
         `months`,
         `years`;

--
-- Создать представление `view_booking_full_info`
--
CREATE
DEFINER = 'root'@'localhost'
VIEW view_booking_full_info
AS
SELECT
  `view_booking_price_actors`.`date` AS `date`,
  `view_booking_price_actors`.`time` AS `time`,
  `view_booking_price_actors`.`nameq` AS `nameq`,
  `view_booking_price_actors`.`finalprice` AS `finalprice`,
  `view_booking_price_actors`.`actors_one_game` AS `actors_one_game`,
  `view_info_booking_status_source`.`sourcename` AS `sourcename`,
  `view_info_booking_status_source`.`statusname` AS `statusname`,
  `view_info_booking_team`.`namep` AS `namep`,
  `view_info_booking_team`.`phone` AS `phone`,
  `view_info_booking_team`.`quantity` AS `quantity`,
  `view_info_booking_team`.`discount` AS `discount`,
  `view_info_booking_team`.`comment` AS `comment`,
  `view_info_booking_team`.`IDteam` AS `IDteam`,
  `view_info_booking_status_source`.`IDbooking` AS `IDbooking`,
  `view_info_booking_status_source`.`IDstatus` AS `IDstatus`,
  `view_info_booking_status_source`.`IDsource` AS `IDsource`
FROM ((`view_booking_price_actors`
  JOIN `view_info_booking_team`
    ON ((`view_booking_price_actors`.`IDbooking` = `view_info_booking_team`.`IDbooking`)))
  JOIN `view_info_booking_status_source`
    ON ((`view_booking_price_actors`.`IDbooking` = `view_info_booking_status_source`.`IDbooking`)));

-- 
-- Вывод данных для таблицы status
--
INSERT INTO status VALUES
(1, 'ожидание'),
(2, 'предоплата'),
(3, 'проведен'),
(4, 'отмена');

-- 
-- Вывод данных для таблицы source
--
INSERT INTO source VALUES
(1, 'Мир Квестов'),
(2, 'Телефон'),
(3, 'Вконтакте'),
(4, 'Инстаграм'),
(5, 'Телеграм');

-- 
-- Вывод данных для таблицы quests_catalog
--
INSERT INTO quests_catalog VALUES
(1, 'Душевнобольные', NULL, NULL),
(2, 'Дезинфекция', NULL, NULL);

-- 
-- Вывод данных для таблицы team
--
INSERT INTO team VALUES
(1, 7, '30', NULL),
(2, 8, '10', NULL),
(3, 6, '10', NULL),
(4, 4, '10', 'sff'),
(5, 8, '0', NULL),
(6, 8, '30', 'новая играfff'),
(7, 8, '5', NULL),
(8, 7, '10', NULL),
(9, 5, '10', 'Новая запись'),
(10, 5, '10', 'Новая запись'),
(11, 5, '10', 'Новая запись'),
(12, 5, '10', 'Новая запись'),
(13, 5, '10', 'Новая запись'),
(14, 5, '10', 'Новая запись'),
(15, 5, '10', 'Новая запись'),
(16, 5, '10', 'Новая запись'),
(17, 5, '10', 'Новая запись'),
(18, 5, '10', 'Новая запись'),
(19, 5, '10', 'Новая запись'),
(20, 5, '10', 'Новая запись'),
(21, NULL, NULL, NULL),
(22, NULL, NULL, NULL);

-- 
-- Вывод данных для таблицы booking
--
INSERT INTO booking VALUES
(1, 1, 1, 3, 3, '2022-12-01', '12:00:00'),
(2, 1, 2, 2, 4, '2022-12-18', '12:00:00'),
(3, 1, 3, 3, 3, '2022-12-19', '00:00:00'),
(4, 2, 4, 3, 4, '2022-02-28', '16:30:00'),
(5, 2, 5, 1, 2, '2022-11-29', '16:30:00'),
(6, 1, 6, 3, 5, '2022-12-20', '10:30:00'),
(7, 2, 7, 1, 4, '2022-10-13', '12:00:00'),
(8, 2, 8, 2, 3, '2022-11-08', '18:00:00'),
(9, 1, 13, 1, 1, '2012-01-20', '19:30:00'),
(10, 1, 17, 1, 1, '2001-01-20', '19:30:00'),
(11, 1, 18, 1, 1, '2001-01-20', '00:00:00'),
(12, 1, 19, 1, 1, '2000-01-01', '00:00:00'),
(13, 1, 20, 1, 1, '2000-01-07', '00:00:00');

-- 
-- Вывод данных для таблицы actors
--
INSERT INTO actors VALUES
(1, 'Настя ', 'Шубуршун', '89509736060\r\n', 3),
(2, 'Эми', 'Картер', '89509736060\r\n', 3),
(3, 'Владимир', 'Поляков', '89509736060\r\n', 2),
(4, 'Жан', 'Садзинов', '89509736060\r\n', 0);

-- 
-- Вывод данных для таблицы prices
--
INSERT INTO prices VALUES
(1, 1, 0, '09:00:00', 2900),
(2, 1, 0, '10:30:00', 3900),
(3, 1, 0, '12:00:00', 3900),
(4, 1, 0, '13:30:00', 3900),
(5, 1, 0, '15:00:00', 3900),
(6, 1, 0, '16:30:00', 3900),
(7, 1, 0, '18:00:00', 3900),
(8, 1, 0, '19:30:00', 4900),
(9, 1, 0, '21:00:00', 4900),
(10, 1, 0, '22:30:00', 4900),
(11, 1, 0, '00:00:00', 4900),
(12, 1, 0, '01:30:00', 4900),
(13, 1, 5, '00:00:00', 5900),
(14, 1, 5, '01:30:00', 5900),
(15, 1, 5, '09:30:00', 3900),
(16, 1, 5, '10:30:00', 3900),
(17, 1, 5, '12:00:00', 4900),
(18, 1, 5, '13:30:00', 4900),
(19, 1, 5, '15:00:00', 4900),
(20, 1, 5, '16:30:00', 4900),
(21, 1, 5, '18:00:00', 4900),
(22, 1, 5, '19:30:00', 4900),
(23, 1, 5, '21:00:00', 4900),
(24, 1, 5, '22:30:00', 4900);

-- 
-- Вывод данных для таблицы person
--
INSERT INTO person VALUES
(1, 'Алексей', '9509736060'),
(2, 'Вероника!', '9509736060'),
(3, 'Семен', '9509736060'),
(4, 'Олег', '9509736060'),
(5, 'а', '9994403436'),
(6, 'Новаяg', '9029806505'),
(7, 'FFFFFFUUU', '9994403436'),
(8, 'ыапываыу', '9994403436'),
(12, 'New Oleg', '79509736060'),
(13, 'New Oleg', '79509736060'),
(14, 'New Oleg', '79509736060'),
(15, 'New Oleg', '79509736060'),
(16, 'New Oleg', '79509736060'),
(17, 'New Oleg', '79509736060'),
(18, 'New Oleg', '79509736060'),
(19, 'New Oleg', '79509736060'),
(20, 'New Oleg', '79509736060');

-- 
-- Вывод данных для таблицы actor_booking
--
INSERT INTO actor_booking VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(2, 3),
(3, 1),
(3, 2),
(4, 3);

--
-- Установка базы данных по умолчанию
--
USE questbase;

--
-- Удалить триггер `tr_dec_games_played_actor`
--
DROP TRIGGER IF EXISTS tr_dec_games_played_actor;

--
-- Удалить триггер `tr_inc_games_played_actor`
--
DROP TRIGGER IF EXISTS tr_inc_games_played_actor;

--
-- Установка базы данных по умолчанию
--
USE questbase;

DELIMITER $$

--
-- Создать триггер `tr_inc_games_played_actor`
--
CREATE
DEFINER = 'root'@'localhost'
TRIGGER tr_inc_games_played_actor
AFTER INSERT
ON actor_booking
FOR EACH ROW
BEGIN
  UPDATE actor_booking ab
  JOIN actors a
    ON a.IDactor = NEW.IDactor
  SET a.games_played = a.games_played + 1
  WHERE a.IDactor = NEW.IDactor;
END
$$

--
-- Создать триггер `tr_dec_games_played_actor`
--
CREATE
DEFINER = 'root'@'localhost'
TRIGGER tr_dec_games_played_actor
BEFORE DELETE
ON actor_booking
FOR EACH ROW
BEGIN
  UPDATE actor_booking ab
  JOIN actors a
    ON a.IDactor = OLD.IDactor
  SET a.games_played = a.games_played - 1
  WHERE a.IDactor = OLD.IDactor;
END
$$

DELIMITER ;

-- 
-- Восстановить предыдущий режим SQL (SQL mode)
--
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

-- 
-- Включение внешних ключей
-- 
/*!40014 SET FOREIGN_KEY_CHECKS = @OLD_FOREIGN_KEY_CHECKS */;