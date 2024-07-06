USE world;
SELECT
    COUNT(*) as Total_Reservations
FROM
    task1;
    
SELECT type_of_meal_plan, COUNT(*) AS num_reservations
FROM task1
GROUP BY type_of_meal_plan
ORDER BY num_reservations DESC
LIMIT 1;

SELECT AVG(avg_price_per_room) AS avg_price
FROM task1
WHERE no_of_children > 0;

SELECT SUBSTRING(arrival_date, -4) AS year, 
COUNT(*) AS total_reservations
FROM task1
WHERE SUBSTRING(arrival_date, -4)= '2017' OR '2018'
GROUP BY year;

SELECT room_type_reserved, COUNT(*) AS num_reservations
FROM task1
GROUP BY room_type_reserved
ORDER BY num_reservations DESC
LIMIT 1;

SELECT COUNT(*) AS num_weekend_reservations
FROM task1
WHERE no_of_weekend_nights > 0;

SELECT MAX(lead_time) AS max_lead_time, 
MIN(lead_time) AS min_lead_time
FROM task1;

SELECT market_segment_type, 
COUNT(*) AS num_reservations
FROM task1
GROUP BY market_segment_type
ORDER BY num_reservations DESC;

SELECT COUNT(*) AS num_confirmed_reservations
FROM task1
WHERE booking_status = 'Not_Canceled';

SELECT SUM(no_of_adults) AS total_adults,
 SUM(no_of_children) AS total_children
FROM task1;

SELECT AVG(no_of_weekend_nights)
 AS avg_weekend_nights
FROM task1
WHERE no_of_children >0;

SELECT 
month(str_to_date(arrival_date , '%d-%m-%y')) AS month, 
COUNT(*) AS num_reservations
FROM task1
GROUP BY month
ORDER BY month;

SELECT room_type_reserved, 
AVG(no_of_weekend_nights + no_of_week_nights) AS avg_nights
FROM task1
GROUP BY room_type_reserved;

SELECT room_type_reserved,
 AVG(avg_price_per_room) AS avg_price
FROM task1
WHERE no_of_children > 0
GROUP BY room_type_reserved
ORDER BY COUNT(*) DESC;

SELECT market_segment_type, 
AVG(avg_price_per_room) AS avg_price_per_room
FROM task1
GROUP BY market_segment_type
ORDER BY avg_price_per_room DESC
LIMIT 1;

-- source code by jagmeet singh --