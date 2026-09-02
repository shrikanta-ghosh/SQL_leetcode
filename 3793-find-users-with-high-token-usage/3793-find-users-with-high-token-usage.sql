# Write your MySQL query statement below
SELECT user_id, COUNT(prompt) AS prompt_count, ROUND(SUM(tokens)/COUNT(prompt),2) AS avg_tokens
FROM prompts
GROUP BY user_id
HAVING COUNT(prompt)>=3
AND MAX(tokens)>avg_tokens
ORDER BY ROUND(SUM(tokens)/COUNT(prompt),2) DESC, user_id ASC