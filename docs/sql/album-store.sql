CREATE TABLE customer (
    customerid int4 NOT NULL,
    fistname varchar(40) NOT NULL,
    lastname varchar(20) NOT NULL,
    company varchar(80) NOT NULL,
    address varchar(70) NULL,
    city varchar(40) NULL,
    state varchar(40) NULL,
    country varchar(40) NULL,
    postalcode varchar(10) NULL,
    phone varchar(24) NULL,
    fax varchar(24) NULL,
    email varchar(255) NOT NULL,
);
COMMENT ON TABLE public.customer IS 'Holds Customer information';

ALTER TABLE customer
ADD CONSTRAINT customer_pk PRIMARY KEY (CustomerId);


