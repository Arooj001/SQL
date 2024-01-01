# Sanity Check to be performed after loading data 

select * from billing;
select * from customer;

select count(*) from billing;
select count(*) from customer;

# if we want to retrieve all rows from customer table 

select * from customer;

# retrieve first name, last name and subscription date from customer 

select First_name, Last_name, Subscription_date 
from customer;

select * from billing;

# if you want to view unique values 

select billing_cycle from billing;

select distinct billing_cycle from billing;

select count(billing_cycle) from billing;

select count(distinct billing_cycle) from billing;

# show only the bill ID and the amount due from billing table. 

select bill_id, amount_due from billing;

# identify a customer who lives on 209 Pond Hill 

select * from customer;

select customer_id, First_name, Last_name, Address from customer;

select customer_id, First_name, Last_name, Address from customer
where Address = '209 Pond Hill'; 

# identify a customer who lives on '44703 Fieldstone Parkway'

select customer_id, First_name, Last_name, Address from customer
where Address = '44703 Fieldstone Parkway';

# find bills in the billing table with an amount_due greater than 1000. 

select bill_id, amount_due from billing 
where amount_due > 1000; 

#find all bills with late_fee less than 500. 
Select * from billing;

select bill_id, late_fee from billing 
where late_fee < 500;

#find billing info for customer id 5
select * from customer;

select * from customer where customer_id = 5;

select bill_id, amount_due from billing 
where customer_id = 5;

# Using where with (IN, OR, AND, NOT EQUAL TO, NOT IN) 
# identify customer who live at either '5 Northridge Road', '814 Kinsman Lane'

select customer_id, First_name, address from customer 
where address = '5 Northridge Road' OR address = '814 Kinsman Lane';

select customer_id, First_name, address from customer 
where address IN ('5 Northridge Road','814 Kinsman Lane');

# Display customer whose phone number is NOT '123-456-7890'

select customer_id, first_name from customer 
where Phone_number != '123-456-7890'; 

select customer_id, first_name from customer 
where Phone_number <> '123-456-7890';

#list all bills except those with billing cycles in 
#"January 2023" and "February 2023" 

select * from billing;

select bill_id, billing_cycle from billing
where billing_cycle NOT IN ('Jan-2023', 'feb-2023');

select bill_id, billing_cycle from billing
where billing_cycle <> 'Jan-2023' and billing_cycle <> 'feb-2023';