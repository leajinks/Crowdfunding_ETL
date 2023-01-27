DROP TABLE IF EXISTS campaign;
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS subcategory;
DROP TABLE IF EXISTS contacts;

CREATE TABLE category (
    category_id VARCHAR(30) PRIMARY KEY NOT NULL,
    category VARCHAR(30) NOT NULL
);

CREATE TABLE subcategory (
    subcategory_id VARCHAR(30) PRIMARY KEY NOT NULL,
    subcategory VARCHAR(30) NOT NULL
);

CREATE TABLE contacts (
    contact_id INTEGER PRIMARY KEY NOT NULL,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    email VARCHAR(60) NOT NULL
);

CREATE TABLE campaign (
    cf_id INTEGER PRIMARY KEY NOT NULL,
    contact_id INTEGER NOT NULL,
    company_name VARCHAR(60) NOT NULL,
    description VARCHAR(100) NOT NULL,
    goal FLOAT NOT NULL,
    pledged FLOAT NOT NULL,
    outcome VARCHAR(30) NOT NULL,
    backers_count INTEGER NOT NULL,
    country VARCHAR(30) NOT NULL,
	currency VARCHAR(30) NOT NULL,
    launched_date DATE NOT NULL,
    end_date DATE NOT NULL,
    staff_pick BOOLEAN NOT NULL,
    spotlight BOOLEAN NOT NULL,
	category_id VARCHAR(30) NOT NULL,
	subcategory_id VARCHAR(30) NOT NULL,
    FOREIGN KEY (category_id) REFERENCES category(category_id),
    FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);

SELECT * FROM category;
SELECT * FROM subcategory;
SELECT * FROM contacts;
SELECT * FROM campaign;