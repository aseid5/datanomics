--we always need a primary key for one table to uniquely identify
--that specific table

/*
CONSTRAINTS IN SQL ARE
	PRIMARY KEY
	FOREIGN KEY
	DEFAULT
	CHECK
	NOT NULL
	UNIQUE
TO ALTER (IS THE OTHER TERM FOR "TO CHANGE". IT IS ACTUALLY
A KEYWORD IN SQL TO CHANGE SO BE SURE TO USE IT) A TABLE 
FROM A SPECIFIC CONSTRAINT OR NO CONSTRAINT TO 
ANOTHER CONSTRAINT, USE THE ABOVE CONSTRAINTS
*/

--what is the purpose of schema
--its is a blueprint where we keep tables that have similar propeties
CREATE TABLE category(
	category_id integer PRIMARY KEY
	name VARCHAR
	last_update TIMESTAMP DEFAULT NOW() NOT NULL
);

--here's the inventory table with its columns down below
CREATE TABLE inventory(
	inventory_id integer PRIMARY KEY
	film_id integer 
	store_id integer
	last_update TIMESTAMP DEFAULT NOW() NOT NULL
);

--here's the customer table with its column
CREATE TABLE customer(
	customer_id integer PRIMARY KEY
	store_id integer
	first_name VARCHAR
	last_name VARCHAR
	email VARCHAR
	address_id integer
	activebool boolean 
	create_date date
	last_update TIMESTAMP DEFAULT NOW() NOT NULL
	active boolean
);

--here's the film_category table with its column
CREATE TABLE film_category(
	film_id integer
	category_id integer
	PRIMARY KEY(film_id, category_id)
	last_update TIMESTAMP DEFAULT NOW() NOT NULL
);

--here's the rental table with its columns
CREATE TABLE rental(
	rental_id integer PRIMARY KEY
	rental_date date
	inventory_id integer
	customer_id integer
	return_date date
	staff_id integer
	last_update TIMESTAMP DEFAULT NOW() NOT NULL
);

--here's the address's table with its columns
CREATE TABLE address(
	address_id integer PRIMARY KEY
	address VARCHAR
	address2 VARCHAR
	district integer
	city_id integer
	postal_code integer
	phone integer
	last_update TIMESTAMP DEFAULT NOW() NOT NULL
);
--here's the film's table with its columns
CREATE TABLE film(
	film_id integer PRIMARY KEY
	title VARCHAR (200)
	description CHAR
	release_year year
	language_id integer
	rental_duration TIMESTAMP
	rental_rate decimal
	length time
	replacement_cost money
	rating integer 
	last_update TIMESTAMP DEFAULT NOW() NOT NULL
	special_features VARCHAR
	fulltext VARCHAR
);

--here's the payment table with its columns
CREATE TABLE payment(
	payment_id integer PRIMARY KEY
	customer_id integer
	staff_id integer
	rental_id integer
	amount money
	payment_date date
);

--here's the city table with its columns
CREATE TABLE city(
	city_id integer PRIMARY KEY
	city VARCHAR
	country_id integer
	last_update TIMESTAMP DEFAULT NOW() NOT NULL
);

--here's the language table with its columns
CREATE TABLE language(
	language_id integer
	name VARCHAR
	last_update TIMESTAMP DEFAULT NOW() NOT NULL
);

--here's the staff table with its columns
CREATE TABLE staff(
	staff_id integer PRIMARY KEY
	first_name VARCHAR
	last_name VARCHAR
	address_id integer
	email VARCHAR
	store_id integer
	active boolean
	username VARCHAR
	password VARCHAR
	last_update TIMESTAMP DEFAULT NOW() NOT NULL
	picture 
);

--here's the table for country with its columns
CREATE TABLE country(
	country_id integer PRIMARY KEY
	country VARCHAR
	last_update TIMESTAMP DEFAULT NOW() NOT NULL
);

--here's the table for film_actor with its columns
CREATE TABLE film_actor(
	actor_id integer PRIMARY KEY
	film_id integer FOREIGN KEY
	last_update TIMESTAMP DEFAULT NOW() NOT NULL
);

--here's the table for actor with its columns
--ይህ ነገር በአማርኛ ይሰራል እንዴ ጎበዝ
CREATE TABLE actor(
	actor_id integer PRIMARY KEY
	first_name VARCHAR (50)
	last_name VARCHAR (50)
	last_update TIMESTAMP DEFAULT NOW() NOT NULL
);

--here's the table for store and its columns
CREATE TABLE store(
	store_id integer PRIMARY KEY
	manager_staff_id integer
	address_id integer
	last_update TIMESTAMP DEFAULT NOW() NOT NULL
);






