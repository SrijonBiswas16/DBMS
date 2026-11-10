ALTER TABLE Client_Master DROP CONSTRAINT chk_client_city;

UPDATE Client_Master 
SET City = 'Kolkata' 
WHERE Client_no = 'C05';