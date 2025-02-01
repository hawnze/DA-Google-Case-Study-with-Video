#Take a look at the rows with the highest count (already grouped by every single column)
#Descending order
SELECT *
FROM `ancient-courage-447019-u8.bikes.bikes_data`
ORDER BY count DESC;

#I want to see which member types are most common in relation to months
SELECT member_casual, month_name
FROM `ancient-courage-447019-u8.bikes.bikes_data`
GROUP BY month_name
ORDER BY count DESC

