CREATE TABLE "Salesperson" (
  "salesperson_id" SERIAL,
  "first_name" VARCHAR(20),
  "last_name" VARCHAR(20),
  PRIMARY KEY ("salesperson_id")
);

CREATE TABLE "Customer" (
  "customer_id" SERIAL,
  "first_name" VARCHAR(20),
  "last_name" VARCHAR(20),
  "phone" BIGINT,
  "email" VARCHAR(20),
  "did_Buy" BOOLEAN,
  PRIMARY KEY ("customer_id")
);

DROP TABLE "Customer";
DROP TABLE "Invoices";

CREATE TABLE "Cars" (
  "car_id" SERIAL,
  "isNew" BOOLEAN,
  "year" INTEGER,
  "make" VARCHAR(30),
  "model" VARCHAR(30),
  PRIMARY KEY ("car_id")
);

CREATE TABLE "Mechanic" (
  "mechanic_id" SERIAL,
  "first_name" VARCHAR(15),
  "last_name" VARCHAR(15),
  PRIMARY KEY ("mechanic_id")
);

CREATE TABLE "Serv_Mech" (
  "serv_mech_id" SERIAL,
  "mechanic_id" INTEGER,
  PRIMARY KEY ("serv_mech_id"),
  CONSTRAINT "FK_Serv_Mech.mechanic_id"
    FOREIGN KEY ("mechanic_id")
      REFERENCES "Mechanic"("mechanic_id")
);

CREATE TABLE "Services" (
  "service_id" SERIAL,
  "service_history" VARCHAR(250),
  "serv_mech_id" INTEGER,
  PRIMARY KEY ("service_id"),
  CONSTRAINT "FK_Services.serv_mech_id"
    FOREIGN KEY ("serv_mech_id")
      REFERENCES "Serv_Mech"("serv_mech_id")
);

CREATE TABLE "Invoices" (
  "invoice_id" SERIAL,
  "isPaid" BOOLEAN,
  "customer_id" INTEGER,
  "salesperson_id" INTEGER,
  "car_id" INTEGER,
  "service_id" INTEGER,
  PRIMARY KEY ("invoice_id"),
  CONSTRAINT "FK_Invoices.salesperson_id"
    FOREIGN KEY ("salesperson_id")
      REFERENCES "Salesperson"("salesperson_id"),
  CONSTRAINT "FK_Invoices.customer_id"
    FOREIGN KEY ("customer_id")
      REFERENCES "Customer"("customer_id"),
  CONSTRAINT "FK_Invoices.service_id"
    FOREIGN KEY ("service_id")
      REFERENCES "Services"("service_id"),
  CONSTRAINT "FK_Invoices.car_id"
    FOREIGN KEY ("car_id")
      REFERENCES "Cars"("car_id")
);