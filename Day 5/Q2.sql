ALTER TABLE Client_Master 
MODIFY Address1 CONSTRAINT nn_client_address NOT NULL;

DESCRIBE Client_Master;