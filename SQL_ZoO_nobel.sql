1- SELECT yr, subject, winner
  FROM nobel
 WHERE yr = 1950

 2- SELECT winner
  FROM nobel
 WHERE yr = 1962
   AND subject = 'Literature'

   3-  SELECT yr, subject
  FROM nobel
 WHERE  winner = 'Albert Einstein'

 4- SELECT winner winner_peace
FROM nobel
WHERE subject = 'Peace'
AND yr >= 2000

5-  SELECT yr, subject, winner
FROM nobel
WHERE subject = 'Literature'
AND yr BETWEEN 1980 AND 1989

6- SELECT * FROM nobel
 WHERE winner IN  ('Theodore Roosevelt', 'Woodrow Wilson', 'Jimmy Carter','Barack Obama')

 7-  SELECT winner
FROM nobel
WHERE winner LIKE 'John%'

8-  SELECT yr, subject, winner
FROM nobel
WHERE subject = 'Physics' AND yr = 1980 OR (subject = 'Chemistry' AND yr = 1984)

9-  SELECT yr, subject, winner 
FROM nobel 
WHERE yr = 1980 AND NOT (subject = 'Chemistry' OR subject = 'Medicine')

10- SELECT yr, subject, winner  
FROM nobel 
WHERE (yr < 1910 AND subject = 'Medicine') OR (yr >= 2004 AND subject = 'Literature')

11- SELECT yr, subject, winner  
FROM nobel 
WHERE winner = 'Peter Grünberg'

12- SELECT yr, subject, winner  
FROM nobel 
WHERE winner = 'Eugene O''neill'

13- SELECT winner, yr, subject 
FROM nobel 
WHERE winner LIKE 'Sir%' ORDER BY yr DESC, winner

14- SELECT winner, subject 
FROM nobel 
WHERE yr = 1984 
ORDER BY 
CASE WHEN subject IN ('Chemistry', 'Physics') THEN 1 ELSE 0 END, subject, winner

