-- 1. Customers, 2. Sales person, 3. Mechanics, 
-- 4. Parts, 5. Service,
-- 6. Vehicle, 7. Service History, 
-- 8. Sales Transaction
create table customer(
	  customer_id INT primary key,
	  first_name VARCHAR(100),
	  last_name Varchar(100)
);

select * from customer;

create table salesperson(
	  salesperson_id SERIAL primary key,
	  first_name VARCHAR(100),
	  last_name Varchar(100)
)

select * from salesperson;

create table mechanics(
		mechanic_id SERIAL primary key,
		first_name VARCHAR(100),
		last_name Varchar(100)
);

select * from mechanics;

create table parts(
	parts_id SERIAL primary key,
	mechanic_id INT not null,
	foreign key(mechanic_id) references mechanics (mechanic_id)
);

select * from parts;

create table service(
	serviceticket SERIAL primary key,
	mechanic_id INT not null,
	foreign key(mechanic_id) references mechanics(mechanic_id),
	customer_id INT not null,
	foreign key(customer_id) references customer(customer_id)
);

select * from service;

create table vehicle(
	VIN SERIAL primary key,
	model VARCHAR(100),
	make VARCHAR(100),
	year_ INT not null,
	service_ticket INT not null,
	foreign key(service_ticket) references service(service_ticket),
	customer_id INT not null,
	foreign key(customer_id) references customer(customer_id),
	salesperson_id INT not null,
	foreign key(salesperson_id) references salesperson(salesperson_id)
);

select * from vehicle;

create table servicehistory(
	servicehistory_id SERIAL primary key,
	VIN INT not null,
	foreign key(VIN) references vehicle(VIN)	
);

select * from servicehistory;

create table salestransaction(
	salesid SERIAL primary key,
	VIN INT not null,
	foreign key(VIN) references vehicle(VIN),	
	salesperson_id INT not null,
	foreign key(salesperson_id) references salesperson(salesperson_id),
	amount numeric(10,2)
);

select * from salestransaction;



