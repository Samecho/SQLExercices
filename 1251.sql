SELECT p.product_id, IFNULL(ROUND(SUM(price * units)/SUM(units),2),0) AS average_price
FROM Prices p
LEFT JOIN UnitsSold u
ON purchase_date BETWEEN start_date AND end_date AND u.product_id = p.product_id
GROUP BY p.product_id