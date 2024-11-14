INSERT INTO employee
(employeeid, firstname, lastname, title, birthdate, hiredate, address, city, state, country, postalcode, phone, fax, email)
VALUES(nextval('employee_employeeid_seq'::regclass), 'Carlos', 'Ortiz', 'Producer', '2017-03-14', '2024-11-14', 
  'One Blvd road', 'Miami', 'FL', 'USA', '33130', '159753', null, 'pepito@mail.com');
  
INSERT INTO customer
(customerid, firstname, lastname, company, address, city, state, country, postalcode, phone, fax, email, supportrepid)
VALUES(nextval('customer_customerid_seq'::regclass), 'David', 'Barragan', 'MyCompany', 'My Addr', 'Bogota', 
  'Cundinamarca', 'Colombia', '23454', '873165', '123', 'david@email.com', 1);
  
INSERT INTO customer
(customerid, firstname, lastname, company, address, city, state, country, postalcode, phone, fax, email, supportrepid)
VALUES(nextval('customer_customerid_seq'::regclass), 'Pepito', 'Perez', 'OtherCompany', 'Other My Addr', 'Bogota', 
  'Cundinamarca', 'Colombia', '223454', '3873165', '1234', 'pepito@email.com', 1);

