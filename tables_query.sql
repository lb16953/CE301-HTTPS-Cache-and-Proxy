DROP DATABASE IF EXISTS Queries;
CREATE DATABASE Queries;
USE Queries;

SELECT id1, string1 FROM testing WHERE id1 = 1;

SELECT testing1.id1, string2 FROM testing, testing2 WHERE testing1.id1 != 1 AND (testing1.id1 = testing2.id1);

SELECT testing1.id1, string2 FROM testing, testing2 WHERE string2 LIKE 'w%' AND (testing1.id1 = testing2.id1);

SELECT testing1.id1, string1, string2, bool1, char12 FROM testing, testing2 WHERE testing2.id1 > 1 AND (testing1.id1 = testing2.id1) AND (bool1 = 1);