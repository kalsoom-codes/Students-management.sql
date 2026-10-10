-- 1. Top 3 Toppers
SELECT * FROM students ORDER BY marks DESC LIMIT 3;

-- 2. City-wise Count
SELECT city, COUNT(*) AS total_students FROM students GROUP BY city;

-- 3. Course-wise Average
SELECT course, ROUND(AVG(marks), 2) AS average_marks FROM students GROUP BY course;

-- 4. 90+ Scorers
SELECT * FROM students WHERE marks >= 90 ORDER BY marks DESC;

-- 5. Pass/Fail Report
SELECT 
  CASE WHEN marks < 50 THEN 'Fail' ELSE 'Pass' END AS result,
  COUNT(*) AS total
FROM students GROUP BY result;
