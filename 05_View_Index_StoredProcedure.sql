create table customers
(
    customerNumber         int            not null
        primary key,
    customerName           varchar(50)    not null,
    contactLastName        varchar(50)    not null,
    contactFirstName       varchar(50)    not null,
    phone                  varchar(50)    not null,
    addressLine1           varchar(50)    not null,
    addressLine2           varchar(50)    null,
    city                   varchar(50)    not null,
    state                  varchar(50)    null,
    postalCode             varchar(15)    null,
    country                varchar(50)    not null,
    salesRepEmployeeNumber int            null,
    creditLimit            decimal(10, 2) null,
    constraint customers_ibfk_1
        foreign key (salesRepEmployeeNumber) references employees (employeeNumber)
);

create index idx_customerName
    on customers (customerName);

create index idx_full_name
    on customers (contactFirstName, contactLastName);

create index salesRepEmployeeNumber
    on customers (salesRepEmployeeNumber);


