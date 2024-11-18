# Hospital Management System(Health Systems)

## Table of Contents
1. Introduction
2. Features
3. System Design
4. Installation Instructions
5. Usage Guidelines
6. Testing
7. Donors
8. License

### Overview
This is a database-driven solution designed to manage all the administrative functions of any hospital. It is targeted at managing patient records, room allotments, appointment scheduling, and medication and physician timetables with efficiency. The system thus checks data integrity and enhances hospital workflow with automation.



# Features
- Patient Management: creation, updating, pulling of information about patients.
-Room Allotment: Rooms are alloted on dynamic availability.
- Appointment Scheduling: Schedule and track appointments between patients and physicians.
- Prescription Management: Store prescription data, track medication administration.
Reporting Tools:  Provides appointments, prescription, and occupancy reporting tools to the next level.



## System Design

### Core Tables
- Patient Table: Stores information about patients with their admission number.
- Room Table: Stores information about room allocations and their buildings.
- Doctor Table: Maintains doctor information and specialties.
- Appointment Table: This table links patients and physicians over scheduled appointments.
Drug Table: Information of drugs with their unique code.
Prescription Table-Drug: A table maintaining the drugs issued to the patient.

### ER Diagram
Full ER diagram can be viewed in the design folder of this repository.



# Setup Instructions

## Prerequisites
MySQL Version Used: 8.0 and above. Languages: Python, PHP, or any other for front-end integration.

- Tools: MySQL Workbench for database management. ### Installation Steps 1. Clone the Repository: bash git clone https://github.com/<your-username>/hospital-management-system.git cd hospital-management-system