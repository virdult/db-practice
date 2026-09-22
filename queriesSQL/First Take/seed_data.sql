INSERT INTO directors (name, country) VALUES
('Christopher Nolan', 'UK'),
('Bong Joon-ho', 'South Korea'),
('Nuri Bilge Ceylan', 'Turkey'),
('Quentin Tarantino', 'USA'),
('Hayao Miyazaki', 'Japan'),
('Denis Villeneuve', 'Canada'),
('Greta Gerwig', 'USA');

INSERT INTO movies (title, release_year, genre, director_id, rating) VALUES
('Inception', 2010, 'Sci-Fi', 1, 8.8),
('Interstellar', 2014, 'Sci-Fi', 1, 8.6),
('The Dark Knight', 2008, 'Action', 1, 9.0),
('Parasite', 2019, 'Thriller', 2, 8.6),
('Memories of Murder', 2003, 'Thriller', 2, 8.1),
('Winter Sleep', 2014, 'Drama', 3, 8.0),
('Once Upon a Time in Anatolia', 2011, 'Drama', 3, 7.9),
('Pulp Fiction', 1994, 'Crime', 4, 8.9),
('Kill Bill: Vol. 1', 2003, 'Action', 4, 8.2),
('Spirited Away', 2001, 'Animation', 5, 8.6),
('Princess Mononoke', 1997, 'Animation', 5, 8.4),
('Dune', 2021, 'Sci-Fi', 6, 8.0),
('Arrival', 2016, 'Sci-Fi', 6, 7.9),
('Memento', 2000, 'Thriller', 1, 8.4),
('Blade Runner 2049', 2017, 'Sci-Fi', 6, 8.0);

INSERT INTO actors (name, birth_year) VALUES
('Leonardo DiCaprio', 1974),
('Song Kang-ho', 1967),
('Haluk Bilginer', 1954),
('Matthew McConaughey', 1969),
('Samuel L. Jackson', 1948),
('Uma Thurman', 1970),
('Timothée Chalamet', 1995),
('Rebecca Ferguson', 1983),
('Christian Bale', 1974),
('Ryan Gosling', 1980),
('Amy Adams', 1974);

INSERT INTO movie_actors (movie_id, actor_id, role_name) VALUES
(1, 1, 'Cobb'),
(4, 2, 'Ki-taek'),
(6, 3, 'Aydin'),
(2, 4, 'Cooper'),
(8, 5, 'Jules'),
(8, 6, 'Mia'),
(9, 6, 'The Bride'),
(12, 7, 'Paul Atreides'),
(12, 8, 'Lady Jessica'),
(3, 9, 'Bruce Wayne'),
(13, 10, 'Ryan'),
(13, 11, 'Louise'),
(15, 10, 'K'),
(14, 1, 'Leonard');

INSERT INTO reviews (movie_id, reviewer_name, score, comment) VALUES
(1, 'Ayşe', 5, 'Mind-bending'),
(1, 'Mehmet', 4, 'Great but confusing'),
(1, 'Zeynep', 5, 'Loved it'),
(4, 'Ayşe', 5, 'Masterpiece'),
(4, 'Can', 4, 'Very tense'),
(6, 'Elif', 3, 'Too slow for me'),
(2, 'Mehmet', 5, 'Beautiful visuals'),
(2, 'Zeynep', 4, 'Emotional ending'),
(3, 'Can', 5, 'Best superhero movie'),
(3, 'Ayşe', 5, 'Heath Ledger is incredible'),
(8, 'Mehmet', 5, 'Tarantino classic'),
(8, 'Elif', 4, 'Nonlinear storytelling is great'),
(10, 'Zeynep', 5, 'Gorgeous animation'),
(12, 'Can', 4, 'Visually stunning'),
(12, 'Elif', 3, 'A bit slow'),
(14, 'Ayşe', 4, 'Confusing but clever');