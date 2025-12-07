-- Insertion décalèe des ventes

SELECT d.Date_form AS real_date, COUNT(*) AS insert_count
FROM logs l
JOIN Dim_date d ON l.date_id = d.Date_id
WHERE l.table_insert = 'Ventes' AND l.sql_action = 'INSERT'
GROUP BY d.Date_form
ORDER BY d.Date_form;