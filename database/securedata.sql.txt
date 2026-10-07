CREATE DATABASE IF NOT EXISTS securedata;

USE securedata;

CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL,
    password VARCHAR(50) NOT NULL,
    role VARCHAR(20) NOT NULL
);

INSERT INTO users (username, password, role)
VALUES
('owner', 'owner123', 'Owner'),
('user', 'user123', 'User');

CREATE TABLE encrypted_data (
    id INT PRIMARY KEY AUTO_INCREMENT,
    filename VARCHAR(100) NOT NULL,
    keyword VARCHAR(100) NOT NULL,
    encrypted_data TEXT NOT NULL
);