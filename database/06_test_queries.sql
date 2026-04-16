-- 1. Total cost of treatments per field
SELECT f.field_number, f.localization, SUM(tc.total_cost) AS suma_kosztow
FROM Fields f
JOIN Treatments t ON f.field_id = t.field_id
JOIN Treatment_cost tc ON t.treatment_id = tc.treatment_id
GROUP BY f.field_number, f.localization;

-- 2. Monitoring pesticide stock levels (below 30 units)
SELECT pesticide_name, stock_quantity, unit_id
FROM Pesticides
WHERE stock_quantity < 30.0;

-- 3. Machine status overview (number of machines per status)
SELECT status, COUNT(*) AS liczba_maszyn
FROM Machines
GROUP BY status;

-- 4. Most active machines ranking (by number of treatments)
SELECT m.machine_name, COUNT(t.treatment_id) AS liczba_zabiegow
FROM Machines m
LEFT JOIN Treatments t ON m.machine_id = t.machine_id
GROUP BY m.machine_name
ORDER BY liczba_zabiegow DESC;

-- 5. Fields with high soil quality on flat terrain
SELECT field_number, localization, area_ha
FROM Fields
WHERE soil_quality = 'Klasa I' AND topography = 'Plaskie';

-- 6. Frequency of treatment types
SELECT treatment_type, COUNT(*) AS ilosc
FROM Treatments
GROUP BY treatment_type;

-- 7. Usage report for a specific pesticide (e.g. Roundup)
SELECT p.pesticide_name, SUM(t.amount) AS zuzycie_laczne, p.unit_id
FROM Pesticides p
JOIN Treatments t ON p.pesticide_id = t.pesticide_id
WHERE p.pesticide_name = 'Roundup'
GROUP BY p.pesticide_name, p.unit_id;

-- 8. Machines not used in the current year (2026)
SELECT machine_name, machine_type
FROM Machines
WHERE machine_id NOT IN (
    SELECT machine_id FROM Treatments 
    WHERE treatment_date >= TO_DATE('2026-01-01', 'YYYY-MM-DD')
);

-- 9. Machines currently unavailable (status other than 'A')
SELECT machine_name, machine_type, status
FROM Machines
WHERE status != 'A';

-- 10. Five oldest machines in the farm
SELECT * FROM (
    SELECT machine_name, prod_year, (2026 - prod_year) AS wiek
    FROM Machines
    ORDER BY prod_year ASC
) WHERE ROWNUM <= 5;