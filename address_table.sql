use library;

INSERT INTO address (address_id, house_number, building, street, city, postcode)
VALUES
    (1, 10, 'Block A', 'Main Street', 'London', 'SW1A 1AA'),
    (2, 33, 'Strangeways', 'Swansea Road', 'Swansea', 'SA4 3GW'),
    (3, 25, 'High Towers', 'High Street', 'Manchester', 'M1 1AA'),
    (4, 20, 'Beacon House', 'Market Street', 'Birmingham', 'B1 1AA'),
    (5, 48, 'Treacle Terrace', 'Queen Street', 'Glasgow', 'G1 1AA'),
    (6, 50, 'Oak Tree House', 'George Street', 'Edinburgh', 'EH1 1AA'),
    (7, 8, 'Bay Beach', 'Marine Avenue', 'Brighton', 'BN2 1BD'),
    (8, 5, 'Brookfield', 'Richard Street', 'York', 'YO1 6JH'),
    (9, 12, 'Victoria Lane', 'Castle Hill', 'Dudley', 'DY1 4QF'),
    (10, 28, 'The Arches', 'Park Lane', 'Leicester', 'LE1 4AD');
    
SELECT*
FROM address;