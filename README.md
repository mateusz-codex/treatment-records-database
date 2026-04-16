# Database Project

## Project Goal
The goal of this project is to design and implement a relational database supporting the management of a modern agricultural farm. The system aims to:

- Resource management: storing data about fields, machine fleet, and plant protection products.
- Treatment monitoring: recording agricultural operations with precise assignment of machines and used products.
- Data analysis: generating reports that allow cost optimization and monitoring of machine technical condition.

This project was developed as part of an academic course at university.

Conceptual model diagram is included in the project documentation.

## Author
- Mateusz Desperak – conceptual and logical database model design, implementation of table structures (DDL), creation of automation mechanisms

## Technology
Oracle Database, SQL Live  
SQL with basic elements of PL/SQL (Procedural Language)

## Version
v1.0 - 2026

## Instructions
1. Run `01_create_tables.sql`
2. Then run `02_indexes.sql`, `03_views.sql`, `04_sequences.sql`
3. Insert data using `05_insert_data.sql`
4. Test the database using `06_test_queries.sql`