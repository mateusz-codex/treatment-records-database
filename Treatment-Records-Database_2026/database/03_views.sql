/* 
Displays the full history of field operations in a clear and operator-friendly format.
Uses a LEFT JOIN for pesticides, ensuring that mechanical treatments 
(e.g., plowing) that do not require chemical agents are also included.
*/
CREATE OR REPLACE VIEW v_history_details AS
SELECT 
    t.treatment_date AS treatment_date,
    f.field_number AS field_no,
    t.treatment_type AS work_type,
    m.machine_name AS machine,
    p.pesticide_name AS agent_name,
    t.amount || ' ' || t.unit_id AS dosage
FROM Treatments t
JOIN Fields f ON t.field_id = f.field_id
JOIN Machines m ON t.machine_id = m.machine_id
LEFT JOIN Pesticides p ON t.pesticide_id = p.pesticide_id;

/*
Allows management to quickly assess which machines are used most frequently 
and which generate the highest fuel costs, 
along with their current technical status.
*/
CREATE OR REPLACE VIEW v_machine_usage AS
SELECT 
    m.machine_name AS machine_name,
    COUNT(t.treatment_id) AS total_treatments,
    SUM(tc.fuel_cost) AS total_fuel_expenses,
    m.status AS technical_status
FROM Machines m
LEFT JOIN Treatments t ON m.machine_id = t.machine_id
LEFT JOIN Treatment_cost tc ON t.treatment_id = tc.treatment_id
GROUP BY m.machine_name, m.status;