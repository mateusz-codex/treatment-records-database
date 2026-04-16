/*
To ensure uniqueness of primary keys in the Fields, Machines, Pesticides, and Treatments tables,
an automatic increment mechanism has been implemented.

It consists of two components:

Sequences – independent database objects that generate consecutive integer values
(starting from 1 with an increment of 1).

Triggers – database triggers that automatically intercept INSERT operations.
If a primary key value is not provided in the insert statement,
the trigger retrieves the next value from the associated sequence (NEXTVAL)
and assigns it to the ID column.
*/

CREATE SEQUENCE seq_field_id START WITH 1 INCREMENT BY 1;

CREATE OR REPLACE TRIGGER trg_field_id
BEFORE INSERT ON Fields
FOR EACH ROW
WHEN (NEW.field_id IS NULL)
BEGIN
  :NEW.field_id := seq_field_id.NEXTVAL;
END;
/

CREATE SEQUENCE seq_machine_id START WITH 1 INCREMENT BY 1;

CREATE OR REPLACE TRIGGER trg_machine_id
BEFORE INSERT ON Machines
FOR EACH ROW
WHEN (NEW.machine_id IS NULL)
BEGIN
  :NEW.machine_id := seq_machine_id.NEXTVAL;
END;
/

CREATE SEQUENCE seq_pesticide_id START WITH 1 INCREMENT BY 1;

CREATE OR REPLACE TRIGGER trg_pesticide_id
BEFORE INSERT ON Pesticides
FOR EACH ROW
WHEN (NEW.pesticide_id IS NULL)
BEGIN
  :NEW.pesticide_id := seq_pesticide_id.NEXTVAL;
END;
/

CREATE SEQUENCE seq_treatment_id START WITH 1 INCREMENT BY 1;

CREATE OR REPLACE TRIGGER trg_treatment_id
BEFORE INSERT ON Treatments
FOR EACH ROW
WHEN (NEW.treatment_id IS NULL)
BEGIN
  :NEW.treatment_id := seq_treatment_id.NEXTVAL;
END;
/