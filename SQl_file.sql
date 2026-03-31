-- =========================================
-- BIRD SPECIES OBSERVATION ANALYSIS
-- =========================================

-- Q1 : Total bird observations
SELECT COUNT(*) AS total_observations
FROM bird;

-- Q2 : Forest vs Grassland comparison
SELECT dataset, COUNT(*) AS total_birds
FROM bird
GROUP BY dataset;

-- Q3 : Unique species count (Biodiversity)
SELECT dataset, COUNT(DISTINCT common_name) AS unique_species
FROM bird
GROUP BY dataset;

-- Q4 : Top 10 bird species
SELECT common_name, COUNT(*) AS count
FROM bird
GROUP BY common_name
ORDER BY count DESC
LIMIT 10;

-- Q5 : Species preference (Forest vs Grassland)
SELECT dataset, common_name, COUNT(*) AS count
FROM bird
GROUP BY dataset, common_name
ORDER BY count DESC;

-- Q6 : Year-wise trend
SELECT year, dataset, COUNT(*) AS total
FROM bird
GROUP BY year, dataset
ORDER BY year;

-- Q7 : Monthly trend
SELECT month, dataset, COUNT(*) AS total
FROM bird
GROUP BY month, dataset
ORDER BY month;

-- Q8 : Location-wise analysis
SELECT sheet, COUNT(*) AS total_birds
FROM bird
GROUP BY sheet
ORDER BY total_birds DESC;

-- Q9 : Top locations by biodiversity
SELECT sheet, COUNT(DISTINCT common_name) AS species_count
FROM bird
GROUP BY sheet
ORDER BY species_count DESC;

-- Q10 : Weather impact (Sky condition)
SELECT sky, COUNT(*) AS total
FROM bird
GROUP BY sky
ORDER BY total DESC;

-- Q11 : Temperature impact
SELECT temp_bin, COUNT(*) AS total
FROM bird
GROUP BY temp_bin
ORDER BY total DESC;

-- Q12 : Wind effect
SELECT wind, COUNT(*) AS total
FROM bird
GROUP BY wind
ORDER BY total DESC;

-- Q13 : Observer contribution
SELECT observer, COUNT(*) AS total
FROM bird
GROUP BY observer
ORDER BY total DESC
LIMIT 10;

-- Q14 : Flyover vs normal birds
SELECT flyover_observed, COUNT(*) AS total
FROM bird
GROUP BY flyover_observed;

-- Q15 : Initial 3 min count analysis
SELECT initial_three_min_cnt, COUNT(*) AS total
FROM bird
GROUP BY initial_three_min_cnt;

-- Q16 : High temperature vs bird activity
SELECT temp_bin, dataset, COUNT(*) AS total
FROM bird
GROUP BY temp_bin, dataset
ORDER BY total DESC;

-- Q17 : Habitat + Weather combined
SELECT dataset, sky, COUNT(*) AS total
FROM bird
GROUP BY dataset, sky
ORDER BY total DESC;

-- Q18 : Most common bird per habitat
SELECT dataset, common_name, COUNT(*) AS count
FROM bird
GROUP BY dataset, common_name
ORDER BY dataset, count DESC;

-- Q19 : Rare species
SELECT common_name, COUNT(*) AS count
FROM bird
GROUP BY common_name
HAVING count < 5;

