# DataLemur
SQL Questions


-- 01. https://datalemur.com/questions/sql-histogram-tweets

with cte as(
select user_id,count(msg) as cnt
from tweets
where extract(year from tweet_date) = '2022'
group by user_id
)
select cnt as tweet_bucket,count(user_id)
from cte
group by tweet_bucket
order by tweet_bucket

