CREATE TABLE directors (
    director_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    country VARCHAR(50)
);

CREATE TABLE movies (
    movie_id SERIAL PRIMARY KEY,
    title VARCHAR(150) NOT NULL,
    release_year INT CHECK (release_year > 1900),
    genre VARCHAR(50),
    director_id INT REFERENCES directors(director_id),
    rating NUMERIC(3,1) CHECK (rating >= 0 AND rating <= 10)
);

CREATE TABLE actors (
    actor_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    birth_year INT
);

CREATE TABLE movie_actors (
    movie_id INT REFERENCES movies(movie_id),
    actor_id INT REFERENCES actors(actor_id),
    role_name VARCHAR(100),
    PRIMARY KEY (movie_id, actor_id)
);

CREATE TABLE reviews (
    review_id SERIAL PRIMARY KEY,
    movie_id INT REFERENCES movies(movie_id),
    reviewer_name VARCHAR(100) NOT NULL,
    score INT CHECK (score BETWEEN 1 AND 5),
    comment TEXT
);