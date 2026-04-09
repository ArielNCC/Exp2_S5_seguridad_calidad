USE mydatabase;
-- Crear tabla de usuarios
CREATE TABLE IF NOT EXISTS user (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100),
    password VARCHAR(255) NOT NULL
);

INSERT INTO user (username, email, password) VALUES
('admin', 'admin@ejemplo.com', 'adminpass'),
('user1', 'user1@ejemplo.com', 'user1pass');

-- Crear tabla de pacientes
CREATE TABLE IF NOT EXISTS patient (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    species VARCHAR(50),
    breed VARCHAR(50),
    age INT,
    owner VARCHAR(100)
);

INSERT INTO patient (name, species, breed, age, owner) VALUES
('Bobby', 'Perro', 'Labrador', 5, 'Juan Perez'),
('Mishi', 'Gato', 'Siames', 3, 'Ana Lopez');

-- Crear tabla de cuidados
CREATE TABLE IF NOT EXISTS care (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    cost DOUBLE
);

INSERT INTO care (name, cost) VALUES
('Vacunación', 15000),
('Desparasitación', 10000);

-- Crear tabla de medicamentos
CREATE TABLE IF NOT EXISTS medication (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    cost DOUBLE
);

INSERT INTO medication (name, cost) VALUES
('Antibiótico', 5000),
('Analgésico', 3000);

-- Crear tabla de citas
CREATE TABLE IF NOT EXISTS appointment (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    date DATE,
    time TIME,
    reason VARCHAR(255),
    veterinarian VARCHAR(100)
);

INSERT INTO appointment (date, time, reason, veterinarian) VALUES
('2026-04-10', '10:00:00', 'Control anual', 'Dr. House'),
('2026-04-11', '11:30:00', 'Vacunación', 'Dra. Smith');

-- Crear tabla de facturas
CREATE TABLE IF NOT EXISTS invoice (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    patientName VARCHAR(100),
    date DATE,
    time TIME,
    totalCost DOUBLE
);

INSERT INTO invoice (patientName, date, time, totalCost) VALUES
('Bobby', '2026-04-10', '10:00:00', 20000),
('Mishi', '2026-04-11', '11:30:00', 13000);

-- Tablas intermedias para relaciones ManyToMany
CREATE TABLE IF NOT EXISTS invoice_cares (
    invoice_id BIGINT,
    care_id BIGINT,
    PRIMARY KEY (invoice_id, care_id),
    FOREIGN KEY (invoice_id) REFERENCES invoice(id),
    FOREIGN KEY (care_id) REFERENCES care(id)
);

CREATE TABLE IF NOT EXISTS invoice_medications (
    invoice_id BIGINT,
    medication_id BIGINT,
    PRIMARY KEY (invoice_id, medication_id),
    FOREIGN KEY (invoice_id) REFERENCES invoice(id),
    FOREIGN KEY (medication_id) REFERENCES medication(id)
);
