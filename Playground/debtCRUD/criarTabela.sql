USE debtorCRUD;

-- DROP TABLE debts;

CREATE TABLE IF NOT EXISTS debts (
id INT AUTO_INCREMENT PRIMARY KEY,
debtDesc VARCHAR(170),
debtorName VARCHAR(50),
debtorPhoneNumber VARCHAR(26),
debt DOUBLE,
debtType ENUM('PAGAR', 'RECEBER'),
debtStatus BOOL
);

-- INSERT INTO debt (debtDesc)

-- CREATE TABLE IF NOT EXISTS debtor(
-- id INT AUTO_INCREMENT PRIMARY KEY,
-- debtorName VARCHAR(50) NOT NULL,
-- phoneNumber VARCHAR(24) NOT NULL,
-- );

-- CREATE TABLE IF NOT EXISTS debt (
-- id INT AUTO_INCREMENT PRIMARY KEY,
-- debtDesc VARCHAR(170),
-- debt DECIMAL(10, 2)
-- );