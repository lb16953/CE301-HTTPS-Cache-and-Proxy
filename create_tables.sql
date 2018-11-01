DROP DATABASE IF EXISTS create_tables;
CREATE DATABASE create_tables;
USE create_tables;


CREATE TABLE IF NOT EXISTS `testing` (
  `id1` int(10) unsigned NOT NULL auto_increment,
  `string1` varchar(255) NOT NULL default '',
  `int12` integer(10) NOT NULL default 0,
  `bool1` TINYINT(1) COLLATE utf8_general_ci NOT NULL default 0,
  `char1` char(1) NOT NULL default 'a',
  PRIMARY KEY  (`id1`)
);

INSERT INTO testing VALUES (1, 'word', 1234, 0, 'a');
INSERT INTO testing VALUES (2, 'ord', 12345, 1, 'b');
INSERT INTO testing VALUES (3, 'rd', 12346, 0, 'c');
INSERT INTO testing VALUES (4, 'd', 12347, 1, 'd');
INSERT INTO testing VALUES (5, '0d', 12348, 0, 'e');

CREATE TABLE IF NOT EXISTS `testing2` (
  `id1` int(10) unsigned NOT NULL auto_increment,
  `string2` varchar(255) NOT NULL default '',
  `int123` integer(10) NOT NULL default 0,
  `bool12` TINYINT(1) COLLATE utf8_general_ci NOT NULL default 0,
  `char12` char(1) NOT NULL default 'a',
  PRIMARY KEY  (`id1`)
);

INSERT INTO testing2 VALUES (1, 'word2', 12342, 1, 'f');
INSERT INTO testing2 VALUES (2, 'ord2', 123452, 0, 'g');
INSERT INTO testing2 VALUES (3, 'rd2', 123462, 1, 'h');
INSERT INTO testing2 VALUES (4, 'd2', 123472, 0, 'i');
INSERT INTO testing2 VALUES (5, '0d2', 123482, 1, 'j');

SELECT id1, string1 FROM testing WHERE id1 = 1;

SELECT testing.id1, string2 FROM testing, testing2 WHERE testing.id1 != 1 AND (testing.id1 = testing2.id1);

SELECT testing.id1, string2 FROM testing, testing2 WHERE string2 LIKE 'w%' AND (testing.id1 = testing2.id1);

SELECT testing.id1, string1, string2, bool1, char12 FROM testing, testing2 WHERE testing2.id1 > 1 AND (testing.id1 = testing2.id1) AND (bool1 = 1);