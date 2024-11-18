# Hospital Management System (Health Systems)

## Table of Contents
1. Overview
2. Features
3. System Design
4. Setup Instructions
5. Usage Guide
6. Testing
7. Contributors
8. License

### Overview
The is a database-driven solution developed to streamline hospital administrative operations. It focuses on efficient management of patient records, room allocation, appointment scheduling, drug prescriptions, and physician schedules. The system ensures data integrity and enhances hospital workflows through automation.



# Features
- Patient Management: Add, update, and retrieve patient details.
- Room Allocation: Assign rooms based on availability dynamically.
- Appointment Scheduling: Schedule and track appointments between patients and physicians.
- Drug Prescription Management*: Store prescription data and track medications.
- Reporting Tools: Generate advanced reports on appointments, prescriptions, and occupancy.

--

## System Design

### Core Tables
- Patient Table: Stores patient details and admission numbers.
- Room Tabe: Tracks room allocations and their respective buildings.
- Physician Table: Manages physician details and specializations.
- Appointment Table: Links patients with physicians for scheduled appointments.
- Drug Table: Contains medication details and unique drug codes.
- Drug Prescription Table: Tracks prescriptions issued to patients.

### ER Diagram
Refer to the repository’s design folder for the full ER diagram.



# Setup Instructions

## Prerequisites
- Database: MySQL 8.0 or higher.
- Languages: Python, PHP, or any other language for front-end integration.
- Tools: MySQL Workbench for database management.

### Installation Steps
1. Clone the Repository:
   ```bash
   git clone https://github.com/<username>/hospital-management-system.git
   cd hospital-management-system