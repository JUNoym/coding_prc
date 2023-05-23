SELECT 
  w1.id
FROM 
  (
    SELECT 
      id,
      recordDate,
      temperature,
      LAG(temperature) OVER (ORDER BY recordDate) as previous_temperature,
      LAG(recordDate) OVER (ORDER BY recordDate) as previous_date
    FROM 
      Weather
  ) w1
WHERE 
  w1.temperature > w1.previous_temperature
  AND
  DATEDIFF(w1.recordDate, w1.previous_date) = 1;
