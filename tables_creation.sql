DROP TABLE IF EXISTS authors, genres, books;

CREATE TABLE authors (
	id INT NOT NULL GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
	name VARCHAR(25) NOT NULL,
	surname VARCHAR(25) NOT NULL
);

CREATE TABLE genres (
	id INT NOT NULL GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
	name VARCHAR(25) NOT NULL
);

CREATE TABLE books (
	id INT NOT NULL GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	author INT NOT NULL,
	genre INT NOT NULL,
	CONSTRAINT fk_author_books FOREIGN KEY (author) REFERENCES authors (id),
	CONSTRAINT fk_genre_books FOREIGN KEY (genre) REFERENCES genres (id)
);