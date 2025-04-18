DROP DATABASE IF EXISTS spotify;
CREATE DATABASE spotify;
USE spotify;

DROP TABLE IF EXISTS Artists;
CREATE TABLE Artists (
	artist_id INT PRIMARY KEY AUTO_INCREMENT,
    artist_name VARCHAR(100) NOT NULL
);

DROP TABLE IF EXISTS Genres;
CREATE TABLE Genres (
    genre_id INT PRIMARY KEY AUTO_INCREMENT,
    genre_name VARCHAR(50) NOT NULL
);

-- Create Songs table
DROP TABLE IF EXISTS Track;
CREATE TABLE Track (
    track_id INT PRIMARY KEY AUTO_INCREMENT,
    track_name VARCHAR(100) NOT NULL,
    artist_id INT NOT NULL,
    genre_id INT NOT NULL,
    bpm INT,
    energy INT,
    danceability INT,
    loudness_db DECIMAL(5,2),  
    liveness INT,
    valence INT,
    length INT,
    acousticness INT,
    speechiness INT,
    popularity INT,
    FOREIGN KEY (artist_id) REFERENCES Artists(artist_id),
    FOREIGN KEY (genre_id) REFERENCES Genres(genre_id)

);
show tables;
select * from Artists;
select*from genres;
select *from track; 



