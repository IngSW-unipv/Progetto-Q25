USE EIDOS;

-- 1. GENRES
INSERT INTO genre (genre_name) VALUES
('ANIMATION'),
('ADVENTURE'),
('ACTION'),
('BIOGRAPHICAL'),
('COMEDY'),
('DOCUMENTARY'),
('DRAMA'),
('SCIENCE_FICTION'),
('FANTASY'),
('WAR'),
('HORROR'),
('MUSICAL'),
('HISTORICAL'),
('THRILLER'),
('WESTERN');

-- 2. PERSONS (registi e attori, ID coerenti e senza duplicati)
INSERT INTO person (first_name, last_name) VALUES
-- Registi (ID 1–5)
('Christopher', 'Nolan'),
('Robert', 'Zemeckis'),
('Greta', 'Gerwig'),
('Patty', 'Jenkins'),
('Quentin', 'Tarantino'),

-- Attori (ID 6–26)
('Leonardo', 'DiCaprio'),
('Joseph', 'Gordon-Levitt'),
('Elliot', 'Page'),
('Tom', 'Hardy'),
('Cillian', 'Murphy'),
('Emily', 'Blunt'),
('Matt', 'Damon'),
('Robert', 'Downey Jr.'),
('Tom', 'Hanks'),
('Robin', 'Wright'),
('Gary', 'Sinise'),
('Margot', 'Robbie'),
('Ryan', 'Gosling'),
('America', 'Ferrera'),
('Kate', 'McKinnon'),
('Gal', 'Gadot'),
('Chris', 'Pine'),
('John', 'Travolta'),
('Samuel L.', 'Jackson'),
('Uma', 'Thurman'),
('Bruce', 'Willis');

-- 3. MOVIES
INSERT INTO movie (title, duration, release_date, synopsis, is_rated_r, is_original_dub, poster_path) VALUES
('Inception', 148, '2010-07-16', 'A thief who steals corporate secrets through dream-sharing is given a task to plant an idea.', TRUE, TRUE, ''),
('Oppenheimer', 180, '2023-07-21', 'The story of J. Robert Oppenheimer and the atomic bomb.', TRUE, TRUE, ''),
('Forrest Gump', 142, '1994-07-06', 'Life story of Forrest Gump during historical events.', FALSE, TRUE, ''),
('Barbie', 114, '2023-07-21', 'Barbie faces an existential crisis in the real world.', FALSE, TRUE, ''),
('Wonder Woman', 141, '2017-06-02', 'Diana, an Amazonian warrior, fights in World War I.', FALSE, TRUE, ''),
('Pulp Fiction', 154, '1994-10-14', 'The lives of two mob hitmen and others intertwine in LA.', TRUE, TRUE, '');

-- 4. MOVIE_GENRE
-- Inception: ACTION, SCIENCE_FICTION, THRILLER
INSERT INTO movie_genre (fk_movie_id, fk_genre_id) VALUES
(1, 3), (1, 8), (1, 14);

-- Oppenheimer: BIOGRAPHICAL, DRAMA, HISTORICAL
INSERT INTO movie_genre (fk_movie_id, fk_genre_id) VALUES
(2, 4), (2, 7), (2, 13);

-- Forrest Gump: DRAMA, COMEDY, HISTORICAL
INSERT INTO movie_genre (fk_movie_id, fk_genre_id) VALUES
(3, 7), (3, 5), (3, 13);

-- Barbie: COMEDY, FANTASY
INSERT INTO movie_genre (fk_movie_id, fk_genre_id) VALUES
(4, 5), (4, 9);

-- Wonder Woman: ACTION, ADVENTURE, WAR
INSERT INTO movie_genre (fk_movie_id, fk_genre_id) VALUES
(5, 3), (5, 2), (5, 10);

-- Pulp Fiction: ACTION, THRILLER
INSERT INTO movie_genre (fk_movie_id, fk_genre_id) VALUES
(6, 3), (6, 14);

-- 5. MOVIE_CAST
-- Inception
INSERT INTO movie_cast (fk_movie_id, fk_person_id) VALUES
(1, 6), (1, 7), (1, 8), (1, 9);

-- Oppenheimer
INSERT INTO movie_cast (fk_movie_id, fk_person_id) VALUES
(2, 10), (2, 11), (2, 12), (2, 13);

-- Forrest Gump
INSERT INTO movie_cast (fk_movie_id, fk_person_id) VALUES
(3, 14), (3, 15), (3, 16);

-- Barbie
INSERT INTO movie_cast (fk_movie_id, fk_person_id) VALUES
(4, 17), (4, 18), (4, 19), (4, 20);

-- Wonder Woman
INSERT INTO movie_cast (fk_movie_id, fk_person_id) VALUES
(5, 21), (5, 22), (5, 15); -- Robin Wright già inserita, ID 15

-- Pulp Fiction
INSERT INTO movie_cast (fk_movie_id, fk_person_id) VALUES
(6, 23), (6, 24), (6, 25), (6, 26);

-- 6. MOVIE_DIRECTOR
INSERT INTO movie_director (fk_movie_id, fk_person_id) VALUES
(1, 1),  -- Nolan
(2, 1),  -- Nolan
(3, 2),  -- Zemeckis
(4, 3),  -- Gerwig
(5, 4),  -- Jenkins
(6, 5);  -- Tarantino

-- 7. HALLS
INSERT INTO hall (hall_name, hall_rows, hall_columns) VALUES
('Sala 1', 10, 15),
('Sala 2', 8, 12),
('Sala VIP', 6, 8);