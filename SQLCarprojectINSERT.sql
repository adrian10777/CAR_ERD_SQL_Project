insert into customer(
	customer_id,
	first_name,
	last_name
) values (
	1,
	'Adrian',
	'Henriquez'
);

insert into customer(
	customer_id,
	first_name,
	last_name
) values (
	2,
	'Manuel',
	'Henriquez'
);

select * from customer;
	
insert into salesperson(
	salesperson_id,
	first_name,	
	last_name
) values (
	    20 ,
	'Steve', 
	'Thomas'
);

insert into salesperson(
	salesperson_id,
	first_name,	
	last_name
) values (
	    21 ,
	'Lisbeth', 
	'Thomas'
);

select * from salesperson;

	
insert into mechanics(
	mechanic_id,
	first_name,	
	last_name
) values (
	    20 ,
	'Luke', 
	'John'
);

insert into mechanics(
	mechanic_id,
	first_name,	
	last_name
) values (
	    21 ,
	'Jesus', 
	'Matthew'
);

select * from mechanics;
	
insert into parts(
	mechanic_id,
	parts_id	
) values (
	   20,
	   21
);

insert into parts(
	mechanic_id,
	parts_id
) values (
	   21,
	   22
);

select * from parts;

insert into service(
	service_ticket, 
	mechanic_id,
	customer_id
) values (
	   20,
	   20,
	   1
);

insert into service(
	service_ticket, 
	mechanic_id,
	customer_id
) values (
	   21,
	   21,
	   2
);

select * from service;
	
insert into vehicle(
	VIN, 
	model,
	make,
	year_,
	service_ticket,
	customer_id,
	salesperson_id
) values (
	   10,
	   'Grand Cherokee',
	   'Jeep',
	   '1996',
	   21,
	   1,
	   20
);

insert into vehicle(
	VIN, 
	model,
	make,
	year_,
	service_ticket,
	customer_id,
	salesperson_id
) values (
	   11,
	   'Toyota',
	   'Highlander',
	   '2019',
	   20,
	   2,
	   21
);

select * from vehicle;

	
insert into servicehistory(
		servicehistory_id, 
		VIN
) values (
	30,
	10
);

	
insert into servicehistory(
		servicehistory_id, 
		VIN
) values (
	31,
	11
);

select * from servicehistory;

insert into salestransaction(
	salesid,
	VIN, 
	salesperson_id,
	amount
) values (
	1,
	10,
	20,
	100
);

insert into salestransaction(
	salesid,
	VIN, 
	salesperson_id,
	amount
) values (
	2,
	11,
	21,
	100
);

select * from salestransaction;