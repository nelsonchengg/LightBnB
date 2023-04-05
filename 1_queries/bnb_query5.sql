SELECT reservations.id as id, title, cost_per_night, start_date, AVG(rating) as rating
FROM properties
JOIN reservations ON property_id = properties.id
JOIN property_reviews ON property_reviews.property_id = properties.id
WHERE reservations.guest_id = 4
GROUP BY reservations.id, title, cost_per_night
ORDER BY start_date
LIMIT 10;