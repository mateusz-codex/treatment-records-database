-- 1. Table Units
CREATE TABLE Units (
    unit_id VARCHAR2(2) PRIMARY KEY,
    unit_name VARCHAR2(10) NOT NULL
);

-- 2. Table Pesticides
CREATE TABLE Pesticides (
    pesticide_id NUMBER(4,0) PRIMARY KEY,
    pesticide_name VARCHAR2(20) NOT NULL,
    pesticide_type VARCHAR2(20) NOT NULL,
    unit_id VARCHAR2(2) NOT NULL,
    stock_quantity NUMBER(6,2) NOT NULL,
    min_app_ha NUMBER(4,2),
    max_app_ha NUMBER(4,2),
    CONSTRAINT fk_pest_unit FOREIGN KEY (unit_id) REFERENCES Units(unit_id)
);

-- 3. Table Fields
CREATE TABLE Fields (
    field_id NUMBER(6,0) PRIMARY KEY,
    field_number NUMBER(6,0) NOT NULL UNIQUE,
    localization VARCHAR2(20) NOT NULL,
    soil_quality VARCHAR2(20) NOT NULL,
    area_ha NUMBER(4,2) NOT NULL,
    topography VARCHAR2(10) NOT NULL
);

-- 4. Table Machines
CREATE TABLE Machines (
    machine_id NUMBER(5,0) PRIMARY KEY,
    machine_name VARCHAR2(20) NOT NULL,
    machine_type VARCHAR2(20) NOT NULL,
    prod_year NUMBER(4,0) NOT NULL,
    buy_date DATE NOT NULL,
    status CHAR(1) NOT NULL,
    price NUMBER(10,2) NOT NULL,
    engine_power NUMBER(3,0),
    weight_kg NUMBER(7,2)
);

-- 5. Table Treatments 
CREATE TABLE Treatments (
    treatment_id NUMBER(6,0) PRIMARY KEY,
    field_id NUMBER(6,0) NOT NULL,
    machine_id NUMBER(5,0) NOT NULL,
    treatment_date DATE NOT NULL, 
    treatment_type VARCHAR2(20) NOT NULL,
    pesticide_id NUMBER(4,0),
    amount NUMBER(4,2),
    unit_id VARCHAR2(2),
    CONSTRAINT fk_treat_field FOREIGN KEY (field_id) REFERENCES Fields(field_id),
    CONSTRAINT fk_treat_machine FOREIGN KEY (machine_id) REFERENCES Machines(machine_id),
    CONSTRAINT fk_treat_pest FOREIGN KEY (pesticide_id) REFERENCES Pesticides(pesticide_id),
    CONSTRAINT fk_treat_unit FOREIGN KEY (unit_id) REFERENCES Units(unit_id)
);

-- 6. Table Treatment_cost
CREATE TABLE Treatment_cost (
    treatment_id NUMBER(6,0) PRIMARY KEY,
    prod_cost NUMBER(8,2) NOT NULL,
    operating_cost NUMBER(8,2) NOT NULL,
    fuel_cost NUMBER(8,2) NOT NULL,
    total_cost NUMBER(10,2),
    CONSTRAINT fk_cost_treatment FOREIGN KEY (treatment_id) REFERENCES Treatments(treatment_id)
);


-- Trigger used to automatically populate the total_cost column
CREATE OR REPLACE TRIGGER trg_calculate_total_cost
BEFORE INSERT OR UPDATE ON Treatment_cost
FOR EACH ROW
BEGIN
    :NEW.total_cost := :NEW.prod_cost + :NEW.operating_cost + :NEW.fuel_cost;
END;
