-- 1.  Inserts into Units table
INSERT INTO Units (unit_id, unit_name) VALUES ('kg', 'Kilogram');
INSERT INTO Units (unit_id, unit_name) VALUES ('l', 'Litr');
INSERT INTO Units (unit_id, unit_name) VALUES ('t', 'Tona');

-- 2.  Inserts into Fields table
INSERT INTO Fields (field_number, localization, soil_quality, area_ha, topography) VALUES (101, 'Polnoc 1', 'Klasa I', 5.50, 'Plaskie');
INSERT INTO Fields (field_number, localization, soil_quality, area_ha, topography) VALUES (102, 'Polnoc 2', 'Klasa II', 3.20, 'Plaskie');
INSERT INTO Fields (field_number, localization, soil_quality, area_ha, topography) VALUES (201, 'Zachod 1', 'Klasa III', 10.0, 'Pagorki');
INSERT INTO Fields (field_number, localization, soil_quality, area_ha, topography) VALUES (202, 'Zachod 2', 'Klasa I', 7.45, 'Plaskie');
INSERT INTO Fields (field_number, localization, soil_quality, area_ha, topography) VALUES (301, 'Wschod 1', 'Klasa IV', 12.3, 'Strome');
INSERT INTO Fields (field_number, localization, soil_quality, area_ha, topography) VALUES (302, 'Wschod 2', 'Klasa II', 4.10, 'Plaskie');
INSERT INTO Fields (field_number, localization, soil_quality, area_ha, topography) VALUES (401, 'Poludnie 1', 'Klasa III', 8.80, 'Pagorki');
INSERT INTO Fields (field_number, localization, soil_quality, area_ha, topography) VALUES (402, 'Poludnie 2', 'Klasa I', 2.50, 'Plaskie');
INSERT INTO Fields (field_number, localization, soil_quality, area_ha, topography) VALUES (501, 'Centrum 1', 'Klasa II', 15.2, 'Plaskie');
INSERT INTO Fields (field_number, localization, soil_quality, area_ha, topography) VALUES (502, 'Centrum 2', 'Klasa III', 6.30, 'Pagorki');

-- 3.  Inserts into Pesticides table
INSERT INTO Pesticides (pesticide_name, pesticide_type, unit_id, stock_quantity, min_app_ha, max_app_ha) VALUES ('Roundup', 'Herbicyd', 'l', 100.0, 2.0, 5.0);
INSERT INTO Pesticides (pesticide_name, pesticide_type, unit_id, stock_quantity, min_app_ha, max_app_ha) VALUES ('Mospilan', 'Insektycyd', 'kg', 20.0, 0.1, 0.3);
INSERT INTO Pesticides (pesticide_name, pesticide_type, unit_id, stock_quantity, min_app_ha, max_app_ha) VALUES ('Tebu', 'Fungicyd', 'l', 40.0, 0.5, 1.0);
INSERT INTO Pesticides (pesticide_name, pesticide_type, unit_id, stock_quantity, min_app_ha, max_app_ha) VALUES ('Chwastox', 'Herbicyd', 'l', 150.0, 1.5, 3.0);
INSERT INTO Pesticides (pesticide_name, pesticide_type, unit_id, stock_quantity, min_app_ha, max_app_ha) VALUES ('Karate', 'Insektycyd', 'l', 10.0, 0.05, 0.1);
INSERT INTO Pesticides (pesticide_name, pesticide_type, unit_id, stock_quantity, min_app_ha, max_app_ha) VALUES ('Amistar', 'Fungicyd', 'l', 30.0, 0.8, 1.2);
INSERT INTO Pesticides (pesticide_name, pesticide_type, unit_id, stock_quantity, min_app_ha, max_app_ha) VALUES ('Bizon', 'Herbicyd', 'l', 60.0, 1.0, 1.5);
INSERT INTO Pesticides (pesticide_name, pesticide_type, unit_id, stock_quantity, min_app_ha, max_app_ha) VALUES ('Delan', 'Fungicyd', 'kg', 15.0, 0.5, 0.8);
INSERT INTO Pesticides (pesticide_name, pesticide_type, unit_id, stock_quantity, min_app_ha, max_app_ha) VALUES ('Fastac', 'Insektycyd', 'l', 25.0, 0.1, 0.2);
INSERT INTO Pesticides (pesticide_name, pesticide_type, unit_id, stock_quantity, min_app_ha, max_app_ha) VALUES ('Glyfos', 'Herbicyd', 'l', 80.0, 3.0, 4.0);

-- 4.  Inserts into Machines table
INSERT INTO Machines (machine_name, machine_type, prod_year, buy_date, status, price, engine_power, weight_kg) VALUES ('Ursus C-360', 'Ciagnik', 1985, TO_DATE('1985-06-15', 'YYYY-MM-DD'), 'A', 25000.00, 60, 2800.00);
INSERT INTO Machines (machine_name, machine_type, prod_year, buy_date, status, price, engine_power, weight_kg) VALUES ('John Deere 6R', 'Ciagnik', 2022, TO_DATE('2022-10-20', 'YYYY-MM-DD'), 'A', 450000.00, 155, 6500.50);
INSERT INTO Machines (machine_name, machine_type, prod_year, buy_date, status, price, engine_power, weight_kg) VALUES ('Amazone UX', 'Opryskiwacz', 2018, TO_DATE('2019-03-12', 'YYYY-MM-DD'), 'A', 120000.00, NULL, 1250.00);
INSERT INTO Machines (machine_name, machine_type, prod_year, buy_date, status, price, engine_power, weight_kg) VALUES ('New Holland CX', 'Kombajn', 2020, TO_DATE('2020-07-01', 'YYYY-MM-DD'), 'A', 680000.00, 360, 14500.00);
INSERT INTO Machines (machine_name, machine_type, prod_year, buy_date, status, price, engine_power, weight_kg) VALUES ('Plow 4-skibowy', 'Plow', 2015, TO_DATE('2015-09-10', 'YYYY-MM-DD'), 'A', 45000.00, NULL, 850.75);
INSERT INTO Machines (machine_name, machine_type, prod_year, buy_date, status, price, engine_power, weight_kg) VALUES ('Zetor Proxima', 'Ciagnik', 2012, TO_DATE('2012-05-20', 'YYYY-MM-DD'), 'S', 140000.00, 100, 4200.00);
INSERT INTO Machines (machine_name, machine_type, prod_year, buy_date, status, price, engine_power, weight_kg) VALUES ('Kverneland', 'Siewnik', 2021, TO_DATE('2021-02-28', 'YYYY-MM-DD'), 'A', 85000.00, NULL, 1500.00);
INSERT INTO Machines (machine_name, machine_type, prod_year, buy_date, status, price, engine_power, weight_kg) VALUES ('Massey Ferguson', 'Ciagnik', 2019, TO_DATE('2019-11-11', 'YYYY-MM-DD'), 'A', 320000.00, 140, 5800.00);
INSERT INTO Machines (machine_name, machine_type, prod_year, buy_date, status, price, engine_power, weight_kg) VALUES ('Hardi Navigator', 'Opryskiwacz', 2016, TO_DATE('2016-04-15', 'YYYY-MM-DD'), 'A', 110000.00, NULL, 2100.00);
INSERT INTO Machines (machine_name, machine_type, prod_year, buy_date, status, price, engine_power, weight_kg) VALUES ('Case IH Puma', 'Ciagnik', 2023, TO_DATE('2023-01-10', 'YYYY-MM-DD'), 'A', 550000.00, 190, 7200.00);

--5. Inserts into Treatments table
INSERT INTO Treatments (field_id, machine_id, treatment_date, treatment_type, pesticide_id, amount, unit_id) VALUES (1, 3, TO_DATE('2026-03-10', 'YYYY-MM-DD'), 'Oprysk', 1, 2.5, 'l');
INSERT INTO Treatments (field_id, machine_id, treatment_date, treatment_type, pesticide_id, amount, unit_id) VALUES (2, 5, TO_DATE('2026-03-12', 'YYYY-MM-DD'), 'Orka', NULL, NULL, NULL);
INSERT INTO Treatments (field_id, machine_id, treatment_date, treatment_type, pesticide_id, amount, unit_id) VALUES (3, 7, TO_DATE('2026-03-15', 'YYYY-MM-DD'), 'Siew', NULL, 200.0, 'kg');
INSERT INTO Treatments (field_id, machine_id, treatment_date, treatment_type, pesticide_id, amount, unit_id) VALUES (4, 8, TO_DATE('2026-03-20', 'YYYY-MM-DD'), 'Nawozenie', NULL, 150.0, 'kg');
INSERT INTO Treatments (field_id, machine_id, treatment_date, treatment_type, pesticide_id, amount, unit_id) VALUES (5, 9, TO_DATE('2026-03-25', 'YYYY-MM-DD'), 'Oprysk', 2, 0.2, 'kg');
INSERT INTO Treatments (field_id, machine_id, treatment_date, treatment_type, pesticide_id, amount, unit_id) VALUES (6, 2, TO_DATE('2026-04-01', 'YYYY-MM-DD'), 'Kultywacja', NULL, NULL, NULL);
INSERT INTO Treatments (field_id, machine_id, treatment_date, treatment_type, pesticide_id, amount, unit_id) VALUES (7, 3, TO_DATE('2026-04-05', 'YYYY-MM-DD'), 'Oprysk', 3, 0.8, 'l');
INSERT INTO Treatments (field_id, machine_id, treatment_date, treatment_type, pesticide_id, amount, unit_id) VALUES (8, 1, TO_DATE('2026-04-10', 'YYYY-MM-DD'), 'Transport', NULL, NULL, NULL);
INSERT INTO Treatments (field_id, machine_id, treatment_date, treatment_type, pesticide_id, amount, unit_id) VALUES (9, 9, TO_DATE('2026-04-15', 'YYYY-MM-DD'), 'Oprysk', 6, 1.0, 'l');
INSERT INTO Treatments (field_id, machine_id, treatment_date, treatment_type, pesticide_id, amount, unit_id) VALUES (10, 4, TO_DATE('2026-04-20', 'YYYY-MM-DD'), 'Zbior', NULL, 8.5, 't');

--6. Inserts into Treatment_cost table
INSERT INTO Treatment_cost (treatment_id, prod_cost, operating_cost, fuel_cost) VALUES (1, 150.00, 40.00, 30.00);
INSERT INTO Treatment_cost (treatment_id, prod_cost, operating_cost, fuel_cost) VALUES (2, 0.00, 60.00, 250.00);
INSERT INTO Treatment_cost (treatment_id, prod_cost, operating_cost, fuel_cost) VALUES (3, 0.00, 80.00, 120.00);
INSERT INTO Treatment_cost (treatment_id, prod_cost, operating_cost, fuel_cost) VALUES (4, 200.00, 35.00, 45.00);
INSERT INTO Treatment_cost (treatment_id, prod_cost, operating_cost, fuel_cost) VALUES (5, 85.50, 40.00, 35.00);
INSERT INTO Treatment_cost (treatment_id, prod_cost, operating_cost, fuel_cost) VALUES (6, 0.00, 50.00, 180.00);
INSERT INTO Treatment_cost (treatment_id, prod_cost, operating_cost, fuel_cost) VALUES (7, 110.00, 40.00, 40.00);
INSERT INTO Treatment_cost (treatment_id, prod_cost, operating_cost, fuel_cost) VALUES (8, 0.00, 30.00, 90.00);
INSERT INTO Treatment_cost (treatment_id, prod_cost, operating_cost, fuel_cost) VALUES (9, 95.00, 45.00, 35.00);
INSERT INTO Treatment_cost (treatment_id, prod_cost, operating_cost, fuel_cost) VALUES (10, 0.00, 150.00, 450.00);
