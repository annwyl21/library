-- replace street address with 'address unknown' if the value shows null

SELECT IFNULL(street, 'address unknown') FROM address;

select
	concat(borrower.first_name, ' ', borrower.last_name) as 'Borrower',
    ifnull (address.street, 'address unknown') as 'Street Address'
from borrower
left outer join address
on borrower.address_id = address.address_id;