# Authorized Keyword Search Over Outsourced Encrypted Data

## Project Overview

This project provides an authorized keyword search mechanism over outsourced encrypted data.

The main purpose is to allow authorized users to search encrypted data stored in a cloud environment without exposing the original data to the Cloud Service Provider.

## Problem Statement

When data is outsourced to cloud storage in encrypted form, searching the encrypted data becomes difficult.

Traditional methods may require downloading the complete database and decrypting the data before performing a keyword search. This can cause privacy and efficiency issues.

## Proposed System

The proposed system allows authorized users to perform keyword searches over encrypted data stored in the cloud.

The system includes:

- Data Owner
- Data User
- Attribute Authority
- Verification Authority
- Cloud Service Provider

Access rights are provided to authorized users based on their attributes and privileges.

## Main Modules

### Data Owner

The Data Owner encrypts the data and outsources it to the cloud server.

### Data User

The Data User can search and access data according to the permissions provided.

### Attribute Authority

The Attribute Authority manages user attributes and provides access rights to authorized users.

### Verification Authority

The Verification Authority verifies the user's search access rights.

### Cloud Service Provider

The Cloud Service Provider stores the encrypted data and performs keyword searches based on valid search access rights.

## Technologies Used

- Java
- JSP
- MySQL
- JDBC
- AES Encryption
- CP-ABE
- Attribute-Based Access Control
- Conjunctive Keyword Search

## System Architecture

The system follows a three-tier architecture:

1. Presentation Layer
2. Business Layer
3. Data Link Layer

## Database

The project uses MySQL as the database and JDBC for database connectivity.

## Security

The system is designed to protect outsourced data from unauthorized access while allowing authorized keyword searching.

## Project Structure

```text
Authorized-Keyword-Search/
│
├── documentation/
│   └── Project_Documentation.pdf
│
├── src/
│   ├── databaseconnection/
│   └── action/
│
├── web/
│   ├── index.jsp
│   ├── login.jsp
│   ├── owner.jsp
│   ├── user.jsp
│   └── search.jsp
│
└── database/
    └── securedata.sql