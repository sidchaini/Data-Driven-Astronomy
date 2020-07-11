-- Change this query file for different examples as in the ipynb.
SELECT p.koi_name, p.radius, s.radius
FROM Star AS s
JOIN Planet AS p USING (kepler_id)
WHERE s.kepler_id IN (
  SELECT kepler_id
  FROM Star
  ORDER BY radius DESC
  LIMIT 5
);