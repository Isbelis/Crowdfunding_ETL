-- Drop table if exists (1)
DROP TABLE category;

-- Create table and view column datatypes
CREATE TABLE category( 
	category_id CHAR(4) NOT NULL PRIMARY KEY,
	category VARCHAR(30) NOT NULL
);

SELECT * FROM category;

-- Drop table if exists (2)
DROP TABLE subcategory;

-- Create table and view column datatypes
CREATE TABLE subcategory( 
	subcategory_id CHAR(8) NOT NULL PRIMARY KEY,
	subcategory VARCHAR(30) NOT NULL
);

SELECT * FROM subcategory;

-- Drop table if exists (3)
DROP TABLE contacts_Option1;

-- Create table and view column datatypes
CREATE TABLE contacts_Option1( 
	contact_id INT NOT NULL PRIMARY KEY,
	First_name VARCHAR(50) NOT NULL,
	Last_name VARCHAR(50) NOT NULL,
	email VARCHAR(50) NOT NULL
);

SELECT * FROM contacts_Option1;

-- Drop table if exists (4)
DROP TABLE campaign;

-- Create table and view column datatypes
CREATE TABLE campaign( 
	cf_id INT PRIMARY KEY,
	contact_id INT NOT NULL,
	company_name VARCHAR(50) NOT NULL,
	description VARCHAR(100) NOT NULL,
	goal FLOAT NOT NULL,
	pledged FLOAT NOT NULL,
	outcome VARCHAR(10) NOT NULL,
	backers_count INT NOT NULL,
	country VARCHAR(2) NOT NULL,
	currency VARCHAR(3) NOT NULL,
	launch_date TIMESTAMP NOT NULL,
	end_date TIMESTAMP NOT NULL,
	category_id CHAR(4) NOT NULL,
	subcategory_id VARCHAR(8) NOT NULL,
	FOREIGN KEY (contact_id) REFERENCES contacts_Option1(contact_id),
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);

SELECT * FROM campaign;

