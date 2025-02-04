CREATE DATABASE EIDOS;
USE EIDOS;

CREATE TABLE genre (
    genre_id INT PRIMARY KEY AUTO_INCREMENT,
    genre_name VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE person (
    person_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    UNIQUE (first_name, last_name)
);

CREATE TABLE movie(
    movie_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(30) NOT NULL,
    duration INT NOT NULL,
    release_date DATE,
    synopsis TEXT,
    is_rated_r BOOLEAN,
    is_original_dub BOOLEAN,
    poster_path VARCHAR(200)
);

CREATE TABLE movie_genre (
    fk_movie_id INT NOT NULL,
    fk_genre_id INT NOT NULL,
    PRIMARY KEY (fk_movie_id, fk_genre_id),
    FOREIGN KEY (fk_movie_id) REFERENCES movie(movie_id) ON DELETE CASCADE,
    FOREIGN KEY (fk_genre_id) REFERENCES genre(genre_id) ON DELETE CASCADE
);

CREATE TABLE movie_cast (
    fk_movie_id INT NOT NULL,
    fk_person_id INT NOT NULL,
    PRIMARY KEY (fk_movie_id, fk_person_id),
    FOREIGN KEY (fk_movie_id) REFERENCES movie(movie_id) ON DELETE CASCADE,
    FOREIGN KEY (fk_person_id) REFERENCES person(person_id) ON DELETE CASCADE
);

CREATE TABLE movie_director (
    fk_movie_id INT NOT NULL,
    fk_person_id INT NOT NULL,
    PRIMARY KEY (fk_movie_id, fk_person_id),
    FOREIGN KEY (fk_movie_id) REFERENCES movie(movie_id) ON DELETE CASCADE,
    FOREIGN KEY (fk_person_id) REFERENCES person(person_id) ON DELETE CASCADE
);

CREATE TABLE hall (
    hall_id INT PRIMARY KEY AUTO_INCREMENT,
    hall_name VARCHAR(30) NOT NULL,
    hall_rows INT NOT NULL,
    hall_columns INT NOT NULL
);

CREATE TABLE screening (
    screening_id INT PRIMARY KEY AUTO_INCREMENT,
    fk_movie_id INT NOT NULL,
    fk_hall_id INT NOT NULL,
    movie_datetime DATETIME NOT NULL,
    price DECIMAL(4,2) NOT NULL,
    FOREIGN KEY (fk_movie_id) REFERENCES movie(movie_id) ON DELETE CASCADE,
    FOREIGN KEY (fk_hall_id) REFERENCES hall(hall_id) ON DELETE CASCADE
);

CREATE TABLE ticket (
    ticket_id INT PRIMARY KEY AUTO_INCREMENT,
    fk_screening_id INT NOT NULL,
    ticket_row CHAR(1) NOT NULL,
    ticket_column INT NOT NULL,
    paid_price DECIMAL(4,2) NOT NULL,
    FOREIGN KEY (fk_screening_id) REFERENCES screening(screening_id) ON DELETE CASCADE
);