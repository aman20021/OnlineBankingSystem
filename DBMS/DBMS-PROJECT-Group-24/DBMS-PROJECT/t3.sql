delimiter $$
CREATE TRIGGER  cc_pos  
BEFORE INSERT ON credit_card 
FOR EACH ROW
BEGIN
IF new.cc_limit <= 0 THEN
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Age should be greater than 20 to apply';
END IF;
END;;
$$ 


