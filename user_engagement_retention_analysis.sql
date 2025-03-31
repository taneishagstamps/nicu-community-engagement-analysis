-- USER ENGAGEMENT INSIGHTS

-- 1. % of Users Active in the Last 30 Days
-- This code calculates the percentage of users whose last_seen date is within the last 30 days.
SELECT 
  ROUND(
    COUNT(CASE WHEN last_seen >= CURRENT_DATE - INTERVAL 30 DAY THEN user_id END) * 100.0 
    / COUNT(user_id), 2
  ) AS percent_active_last_30_days
FROM users;

-- 2. Do Partner Hospital Users Engage More Than Non-Partner Users?
-- This code compares average engagement (posts + comments + likes) between partner and non-partner hospital users.
SELECT 
  CASE 
    WHEN LOWER(partner_hospital) IN ('none', 'ninguno') THEN 'Non-Partner Hospital'
    ELSE 'Partner Hospital'
  END AS hospital_type,
  ROUND(AVG(number_of_posts + number_of_comments + number_of_likes), 2) AS avg_engagement
FROM users
GROUP BY hospital_type;

-- 3. Most Active User Types by Posts & Comments
-- This code identifies which user_type has the most combined posts and comments.
SELECT 
  user_type,
  SUM(number_of_posts + number_of_comments) AS total_interactions
FROM users
GROUP BY user_type
ORDER BY total_interactions DESC
LIMIT 5;

-- 4. Average Lifespan of Engaged Users (Days Active)
-- This code calculates the average number of active days for users who have posted, commented, or liked something.
SELECT 
  ROUND(AVG(days_active), 1) AS avg_days_active
FROM users
WHERE has_engaged = 1;

-- 5. % of Users with Verified Emails and Their Engagement
-- This code calculates how many users have verified their email and compares average engagement levels.
SELECT 
  email_verified,
  COUNT(*) AS total_users,
  ROUND(AVG(number_of_posts + number_of_comments + number_of_likes), 2) AS avg_engagement
FROM users
GROUP BY email_verified;

-- DEMOGRAPHIC BREAKDOWN

-- 6. Most Common User Types
-- This code shows the most common user_type values and how many users fall into each category.
SELECT 
  user_type,
  COUNT(*) AS total_users
FROM users
GROUP BY user_type
ORDER BY total_users DESC
LIMIT 5;

-- 7. States or Cities with Highest App Usage
-- This code returns the states with the highest number of users.
SELECT 
  state,
  COUNT(*) AS user_count
FROM users
GROUP BY state
ORDER BY user_count DESC
LIMIT 10;

-- 8. Engagement by User Type
-- This code calculates the average engagement per user_type.
SELECT 
  user_type,
  ROUND(AVG(number_of_posts + number_of_comments + number_of_likes), 2) AS avg_engagement
FROM users
GROUP BY user_type
ORDER BY avg_engagement DESC;

-- CHURN & RETENTION

-- 9. % of Users Churned Within 30, 60, 90 Days
-- This code calculates the percentage of users who did not retain at 30, 60, and 90 days.
SELECT
  ROUND(SUM(CASE WHEN retained_30 = 0 THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 1) AS churn_30_pct,
  ROUND(SUM(CASE WHEN retained_60 = 0 THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 1) AS churn_60_pct,
  ROUND(SUM(CASE WHEN retained_90 = 0 THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 1) AS churn_90_pct
FROM users;

-- 10. Return Rates by NICU Year
-- This code shows the retention percentages for users grouped by their NICU year.
SELECT 
  nicu_year,
  COUNT(*) AS total_users,
  ROUND(SUM(retained_30) * 100.0 / COUNT(*), 1) AS retained_30_pct,
  ROUND(SUM(retained_60) * 100.0 / COUNT(*), 1) AS retained_60_pct,
  ROUND(SUM(retained_90) * 100.0 / COUNT(*), 1) AS retained_90_pct
FROM users
GROUP BY nicu_year
ORDER BY nicu_year DESC;

-- 11. Churn Comparison: Posters vs. Non-Posters
-- This code compares the average active days between users who have posted/commented vs. those who haven't.
SELECT 
  CASE 
    WHEN number_of_posts + number_of_comments > 0 THEN 'Posted'
    ELSE 'Never Posted'
  END AS user_group,
  ROUND(AVG(days_active), 1) AS avg_days_active
FROM users
GROUP BY user_group;

-- 12. Engagement Around Registration Dates
-- This code calculates the average engagement for users based on their registration date.
SELECT 
  DATE(date_registered) AS registration_date,
  COUNT(user_id) AS new_users,
  ROUND(AVG(number_of_posts + number_of_comments + number_of_likes), 2) AS avg_engagement
FROM users
GROUP BY registration_date
ORDER BY registration_date DESC
LIMIT 30;
