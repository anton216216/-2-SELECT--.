
-- 1. Title and duration of the longest track.
SELECT title, duration
FROM tracks
ORDER BY duration DESC
LIMIT 1;

-- 2. Titles of tracks with duration of at least 3.5 minutes (210 seconds).
SELECT title, duration
FROM tracks
WHERE duration >= 210;

-- 3. Titles of compilations released between 2018 and 2020 inclusive.
SELECT title, year
FROM compilations
WHERE year BETWEEN 2018 AND 2020;

-- 4. Artists whose name consists of a single word (contains no spaces).
SELECT name
FROM artists
WHERE name NOT LIKE '% %';

-- 5. Titles of tracks that contain the word "my" or "tu".
--    (Based on the available data, search is performed for English equivalents 'my' and 'tu')
SELECT title
FROM tracks
WHERE LOWER(title) LIKE '%my%' OR LOWER(title) LIKE '%tu%';
