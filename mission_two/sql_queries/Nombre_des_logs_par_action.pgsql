
-- Nombre de logs par action
SELECT l.table_insert, l.sql_action, COUNT(*) AS count
FROM logs l
GROUP BY l.table_insert, l.sql_action
ORDER BY count DESC;