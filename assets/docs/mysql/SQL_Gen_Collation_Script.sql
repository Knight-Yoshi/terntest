SELECT CONCAT('ALTER TABLE `', t.`TABLE_SCHEMA`, '`.`', t.`TABLE_NAME`,
 '` CONVERT TO CHARACTER SET latin1 COLLATE latin1_swedish_ci;') as stmt 
FROM `information_schema`.`TABLES` t
WHERE 1
AND t.`TABLE_SCHEMA` = database_name
ORDER BY 1