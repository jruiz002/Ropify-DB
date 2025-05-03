# Ropify Reports – SQL Setup

## Overview

This repository contains the SQL scripts required to set up the PostgreSQL database used by the **Ropify Reports** frontend application. These scripts define the database structure, insert initial data, and create the necessary functions and triggers for dynamic report generation.

## Execution Order

It's important to execute the SQL files in the following order to ensure proper database configuration:

1. **Create the database**

   Before running the scripts, make sure to create a PostgreSQL database (e.g., `ropify_reports`).

2. **`ddl.sql`**

   Contains all Data Definition Language (DDL) statements:
   - Table creation
¿
3. **`triggers.sql`**

   Defines triggers and trigger functions that respond to database events.

4. **`dml.sql`**

   Inserts the initial data required for the system to function.

5. **`functions.sql`**

   Includes custom PostgreSQL functions used by the frontend to dynamically generate and filter reports.

## Recommendations

- Make sure to run the scripts using a PostgreSQL user with sufficient privileges to create tables, views, functions, and triggers.
- You can use tools like `pgAdmin` or a SQL terminal connected to your database to run the files in the specified order.
- All scripts are designed for PostgreSQL version 13 or higher.

