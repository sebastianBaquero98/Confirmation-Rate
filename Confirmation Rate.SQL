SELECT
    user_id, ROUND(SUM(CASE WHEN c.action = "confirmed" THEN 1 ELSE 0 END)/COUNT(user_id),2) as confirmation_rate
FROM
    Signups as s LEFT OUTER JOIN Confirmations as c USING(user_id)
GROUP BY
    user_id
