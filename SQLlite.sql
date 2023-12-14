CREATE TABLE Books (
	book_id INTEGER PRIMARY KEY,
    title TEXT not NULL,
    author TEXT NOT NULL,
    genre TEXT NOT NULL,
    published_year INTEGER NOT NULL,
    isbn INTEGER NOT NULL,
    price INTEGER NOT NULL,
    rating INTEGER NOT NULL,
    stock_count INTEGER NOT NULL
)

--Esercizio-2

ALTER TABLE Books 
ADD COLUMN pages INTEGER NOT NULL
ADD COLUMN publisher TEXT NOT NULL

--Esercizio-3

INSERT INTO Books VALUES (1, 'A Journey to the Center', 'Jules Verne', 'Adventure', 1864, 1234567890123, 12.99, 4.5, 10, 350, 'Verne Publishing');
INSERT INTO Books VALUES (2, 'War and Peace', 'Leo Tolstoy', 'Historical', 1869, 1234567890124, 14.99, 4.8, 5, 1200, 'Tolstoy Prints');
INSERT INTO Books VALUES (3, 'Whispers of the Wind', 'Amelia Blackburn', 'Romance', 1982, 1234567890125, 9.99, 4.2, 20, 275, 'Blackburn');

--Esercizio-4

UPDATE Books SET price = 10.99, stock_count = 4 WHERE book_id = 2

--Esercizio-5

GRANT SELECT, UPDATE ON Books TO 'martin'@'localhost';

--Esercizio-6

REVOKE UPDATE ON Books TO martin@localhost;

--Esercizio-7

BEGIN TRANSACTION;
DELETE FROM Books WHERE book_id = 101;
COMMIT;

--Esercizio-8

BEGIN TRANSACTION;
DELETE FROM Books WHERE book_id = 103;
ROLLBACK;

--Esercizio-9

--1
SELECT *
FROM tested
WHERE Sex = 'female' AND Survived = 1 AND Age > 30;

--2
SELECT AVG(Age)
FROM tested
WHERE Sex = 'male' AND Survived = 0;

--3
SELECT *
FROM tested
WHERE Fare BETWEEN 20 AND 50 AND Embarked = 'C';

--4
SELECT COUNT(*)
FROM tested
WHERE Pclass = 1 AND Survived = 1;

--5
SELECT *
FROM tested
WHERE Embarked = 'C' AND Fare > 75;

