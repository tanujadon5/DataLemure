# DataLemur
SQL Questions


-01. https://datalemur.com/questions/sql-histogram-tweets

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


-02. https://datalemur.com/questions/matching-skills

SELECT candidate_id FROM candidates
where skill IN ('Python', 'Tableau', 'PostgreSQL')
group by candidate_id
having count(skill) = 3

