SELECT *
FROM foodclaim;

SELECT COUNT(location), COUNT(cause), COUNT(linked_cases)
FROM foodclaim;

SELECT COUNT(amount_paid)
FROM foodclaim
WHERE amount_paid = 0;

ALTER TABLE foodclaim
ADD COLUMN id Serial;

SELECT location, AVG(amount_paid) AS mean, 
percentile_disc(0.5) WITHIN GROUP (ORDER BY amount_paid) AS median
FROM foodclaim
GROUP BY location
ORDER BY mean;

SELECT   
percentile_disc(0.5) WITHIN GROUP (ORDER BY amount_paid) AS median
FROM foodclaim;

SELECT   
percentile_cont(0.5) WITHIN GROUP (ORDER BY amount_paid) AS median
FROM foodclaim;

SELECT SUM(amount_paid) + 36*19702.67
 
FROM foodclaim;
 
SELECT COUNT(linked_cases), SUM(individuals_on_claim), SUM(time_to_close)
 
 FROM foodclaim;
 
 SELECT COUNT(individuals_on_claim)
 
 FROM foodclaim
 WHERE individuals_on_claim IS NULL;
 
 SELECT COUNT(time_to_close)
 
 FROM foodclaim
 WHERE time_to_close IS NULL;
 
