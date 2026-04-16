CREATE INDEX idx_treat_field ON Treatments(field_id); -- Speeds up joins with the Fields table. Essential for historical reports for specific fields.
CREATE INDEX idx_treat_machine ON Treatments(machine_id); -- Optimizes queries checking the workload of specific machines and their usage history.
CREATE INDEX idx_pest_unit ON Pesticides(unit_id); -- Improves joins between pesticides and units. Useful for unit-based filtering and reporting.
CREATE INDEX idx_treat_date ON Treatments(treatment_date); -- Crucial for time-based reports (monthly/yearly). Avoids full table scans when filtering by date.
CREATE INDEX idx_machine_status ON Machines(status); -- Speeds up filtering of machines (e.g., quickly selecting only active machines 'A').