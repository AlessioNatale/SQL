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