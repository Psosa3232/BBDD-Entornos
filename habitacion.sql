CREATE TABLE Habitacion (
    id_habitacion INT PRIMARY KEY AUTO_INCREMENT,
    num_habitacion INT NOT NULL UNIQUE,
    tipo VARCHAR(50) NOT NULL
);
