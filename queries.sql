/*
Project: Artist Revenue Analysis
Author: Dominic Edebeatu
Dataset: Chinook */

--Identify the top 10 revenue-generating artists and rank them by total revenue.
-- Step 1: Calculate total revenue per artist
-- Revenue is computed as unit_price × quantity from invoice_line
WITH artist_revenue AS (
    SELECT 
        a.artist_id,                 -- Unique identifier for artist
        a.name AS artist,             -- Artist name
        SUM(i.unit_price * i.quantity) AS revenue  -- Total revenue per artist
    FROM invoice_line AS i
    INNER JOIN track AS t
        ON i.track_id = t.track_id    -- Link sales to tracks
    INNER JOIN album AS ab
        ON t.album_id = ab.album_id   -- Link tracks to albums
    INNER JOIN artist AS a
        ON ab.artist_id = a.artist_id -- Link albums to artists
    GROUP BY a.artist_id, a.name
)

-- Step 2: Rank artists by revenue and return top 10
SELECT
    artist_id,
    artist,
    revenue,
    RANK() OVER (ORDER BY revenue DESC) AS revenue_ranking
FROM artist_revenue
ORDER BY revenue DESC
LIMIT 10;
