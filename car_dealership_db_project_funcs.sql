CREATE FUNCTION add_cust(
    "Customer" INTEGER,
    "first_name" VARCHAR(20),
    "last_name" VARCHAR(20),
    "phone" BIGINT,
    "email" VARCHAR(20),
    "did_Buy" BOOLEAN
)
RETURNS VOID
LANGUAGE plpgsql
AS
$MAIN$
BEGIN
    INSERT INTO "Customer"("customer_id","first_name","last_name","phone","email","did_Buy")
    VALUES("Customer","first_name","last_name","phone","email","did_Buy");
END
$MAIN$
;

CREATE FUNCTION add_services(
    "Services" INTEGER,
    "service_history" VARCHAR(250),
    "serv_mech_id" INTEGER,
    "service_id" INTEGER
)
RETURNS VOID
LANGUAGE plpgsql
AS
$MAIN$
BEGIN
    INSERT INTO "Services"("service_id","service_history","serv_mech_id")
    VALUES("Services","service_history","serv_mech_id");
END
$MAIN$
;