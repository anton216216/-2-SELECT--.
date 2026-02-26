-- Insert genres
INSERT INTO genres (name) VALUES 
('Rock'), ('Pop'), ('Hip-Hop'), ('Electronic'), ('Jazz'), ('Classical');

-- Insert artists
INSERT INTO artists (name) VALUES 
('The Beatles'), ('Queen'), ('Zemfira'), ('Daft Punk'), ('Miles Davis'),
('Eminem'), ('Madonna'), ('Freddie Mercury'), ('Paul McCartney'), ('Beyoncé');

-- Insert artist-genre relationships
INSERT INTO artist_genre (artist_id, genre_id) VALUES
('The Beatles', 1), ('Queen', 1), ('Zemfira', 1), ('Zemfira', 2),
('Daft Punk', 4), ('Miles Davis', 5), ('Eminem', 3), ('Madonna', 2),
('Freddie Mercury', 1), ('Paul McCartney', 1), ('Paul McCartney', 2), ('Beyoncé', 2);

-- Insert albums
INSERT INTO albums (title, year) VALUES
('Abbey Road', 1969), ('A Night at the Opera', 1975), ('Zemfira', 1999),
('Random Access Memories', 2013), ('Kind of Blue', 1959), ('The Marshall Mathers LP', 2000),
('Like a Virgin', 1984), ('Barcelona', 1988), ('McCartney III', 2020), ('Lemonade', 2016);

-- Insert album-artist relationships
INSERT INTO album_artist (album_id, artist_id) VALUES
(1, 'The Beatles'), (2, 'Queen'), (3, 'Zemfira'), (4, 'Daft Punk'),
(5, 'Miles Davis'), (6, 'Eminem'), (7, 'Madonna'), (8, 'Freddie Mercury'),
(9, 'Paul McCartney'), (10, 'Beyoncé');

-- Insert tracks (including test cases for word search)
INSERT INTO tracks (title, duration, album) VALUES
-- Regular tracks
('Come Together', 259, 1), ('Something', 182, 1), ('Bohemian Rhapsody', 354, 2),
('Love of My Life', 219, 2), ('Why My', 185, 2), ('Good Old-Fashioned Lover Boy', 175, 2),
('Искала', 248, 3), ('Хочешь?', 198, 3), ('Get Lucky', 369, 4),
('So What', 562, 5), ('Stan', 404, 6), ('Like a Virgin', 218, 7),
('Barcelona', 328, 8), ('Find My Way', 258, 9), ('Formation', 206, 10),

-- Test cases for "my" (should be included)
('my own', 180, 1), ('own my', 185, 1), ('my', 175, 1), ('oh my god', 190, 1),
('this is my song', 200, 1), ('my heart will go on', 210, 1), ('say my name', 195, 1),

-- Test cases for "tu" (should be included)
('tu veni', 188, 2), ('parli tu', 192, 2), ('tu', 178, 2), ('come stai tu', 202, 2),

-- Test cases that should be EXCLUDED (false positives for "my")
('myself', 185, 3), ('by myself', 195, 3), ('bemy self', 188, 3), 
('myself by', 192, 3), ('by myself by', 205, 3), ('beemy', 175, 3),
('premyne', 182, 3), ('myth', 178, 3), ('mystery', 190, 3), ('myriad', 185, 3);

-- Insert compilations
INSERT INTO compilations (title, year) VALUES
('Best of Rock', 2019), ('Hits of the 80s', 2020), ('Jazz Classics', 2018),
('Electronic Masters', 2021), ('Women in Music', 2020), ('Greatest Hits Vol.1', 2019);

-- Insert compilation tracks
INSERT INTO compilation_track (track_id, compilation_id) VALUES
(1, 1), (3, 1), (4, 2), (12, 2), (5, 3), (15, 4), (2, 5), (13, 5), (14, 6);
