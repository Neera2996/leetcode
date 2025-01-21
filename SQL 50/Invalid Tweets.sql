/*
Table Name: Tweets
+----------------+---------+
| Column Name    | Type    |
+----------------+---------+
| tweet_id       | int     |
| content        | varchar |
+----------------+---------+
tweet_id is the primary key (column with unique values) for this table.
content consists of characters on an American Keyboard, and no other special characters.
This table contains all the tweets in a social media app.
*/
# Write your MySQL query statement below

SELECT tweet_id FROM Tweets
WHERE 
CHAR_LENGTH(content) > 15