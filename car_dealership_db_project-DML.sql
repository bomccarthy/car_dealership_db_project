SELECT * FROM information_schema.tables;

SELECT * FROM "Mechanic";
SELECT * FROM "Serv_Mech";
SELECT * FROM "Services";
SELECT * FROM "Cars";
SELECT * FROM "Customer";
SELECT * FROM "Salesperson";
SELECT * FROM "Invoices";

SELECT "Mechanic"."first_name","Mechanic"."last_name","Services"."service_history"
FROM "Mechanic"
JOIN "Serv_Mech" on "Serv_Mech"."mechanic_id" = "Mechanic"."mechanic_id"
JOIN "Services" on "Services"."serv_mech_id" = "Serv_Mech"."serv_mech_id"
JOIN "Invoices" on "Invoices"."service_id" = "Services"."service_id"
JOIN "Customer" on "Customer"."customer_id" = "Invoices"."customer_id"
WHERE "Customer"."last_name" = 'McCarthy';

INSERT INTO "Mechanic"("mechanic_id","first_name","last_name")
VALUES (1,'Ronnie','Rogers'),
(2,'Ann','Michelle');

INSERT INTO "Serv_Mech"("serv_mech_id","mechanic_id")
VALUES (1,1),
(2,2);

INSERT INTO "Services"("service_id","service_history","serv_mech_id")
VALUES (1,'Fixed Dent; Painted Red',1),
(2,'Replaced Transmission',2);

INSERT INTO "Cars"("car_id","isNew","year","make","model")
VALUES (1,'TRUE',2022,'KIA','Telluride'),
(2,'FALSE',2001,'Chevrolet','Tahoe');

INSERT INTO "Customer"("customer_id","first_name","last_name","phone","email","did_Buy")
VALUES (1,'Steph','McCarthy',7135551212,'steph@ochorios.com','TRUE'),
(2,'Will','James',2815551212,'will938@hopeful.com','TRUE');

INSERT INTO "Salesperson"("salesperson_id","first_name","last_name")
VALUES (1,'John','Burgess'),
(2,'Clayton','Winkler');

INSERT INTO "Invoices"("invoice_id","isPaid","customer_id","salesperson_id","car_id","service_id")
VALUES (1,'TRUE',1,1,1,1),
(2,'TRUE',2,2,2,2);