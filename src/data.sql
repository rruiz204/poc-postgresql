INSERT INTO library.loan_states (name) VALUES 
('Pendiente'),
('Devuelto'),
('Vencido'),
('Perdido');

INSERT INTO library.users (first_name, last_name, email, phone) VALUES 
('Juan', 'Pérez', 'juan.perez@email.com', '+506 23456789'),
('María', 'Gómez', 'maria.gomez@email.com', '+506 98765432'),
('Carlos', 'López', 'carlos.lopez@email.com', '+506 34567890'),
('Ana', 'Martínez', 'ana.martinez@email.com', '+506 45678901'),
('Pedro', 'Rodríguez', 'pedro.rodriguez@email.com', '+506 56789012'),
('Laura', 'Fernández', 'laura.fernandez@email.com', '+506 67890123'),
('Diego', 'García', 'diego.garcia@email.com', '+506 78901234'),
('Sofía', 'Díaz', 'sofia.diaz@email.com', '+506 89012345');

INSERT INTO library.editorials (name, email, phone, country, website, is_active) VALUES 
('Editorial Planeta', 'contacto@planeta.com', '+34911234567', 'España', 'www.planeta.com', true),
('Penguin Random House', 'info@penguin.com', '+442071234567', 'Reino Unido', 'www.penguinrandomhouse.com', true),
('Alfaguara', 'contacto@alfaguara.com', '+5491145678901', 'Argentina', 'www.alfaguara.com.ar', true),
('Editorial Anagrama', 'info@anagrama.com', '+34934876543', 'España', 'www.anagrama-ed.es', true),
('Siglo XXI Editores', 'ventas@sigloxxi.com', '+5491156789012', 'Argentina', 'www.sigloxxieditores.com.ar', false);

INSERT INTO library.authors (first_name, last_name, website, is_active) VALUES 
('Jorge Luis', 'Borges', 'www.borges.org', true),
('Julio', 'Cortázar', 'www.cortazar.com', true),
('Gabriel', 'García Márquez', 'www.gabogarcia.com', true),
('Mario', 'Vargas Llosa', 'www.vargasllosa.com', true),
('Isabel', 'Allende', 'www.isabelallende.com', true),
('Ernesto', 'Sábato', 'www.sabato.com.ar', false),
('Clarice', 'Lispector', 'www.claricelispector.com.br', true),
('Pablo', 'Neruda', 'www.neruda.org', true);

INSERT INTO library.books (isbn, title, total_amount, available_amount, author_id, editorial_id) VALUES 
('978-0307476463', 'Cien años de soledad', 5, 3, 3, 1),
('978-8437604947', 'Rayuela', 3, 1, 2, 3),
('978-8420471839', 'El Aleph', 4, 4, 1, 1),
('978-8497592208', 'La ciudad y los perros', 2, 0, 4, 2),
('978-9500728672', 'Sobre héroes y tumbas', 3, 2, 6, 3),
('978-0061120084', 'La casa de los espíritus', 4, 3, 5, 2),
('978-9871138558', 'Ficciones', 5, 5, 1, 3),
('978-9507315858', 'El túnel', 2, 1, 6, 4),
('978-9500418039', 'Veinte poemas de amor y una canción desesperada', 3, 2, 8, 5),
('978-8571640631', 'La hora de la estrella', 2, 2, 7, 2);

INSERT INTO library.loans (due_date, return_date, borrowed_date, user_id, book_id, state_id) VALUES 
('2023-06-15', '2023-06-10', '2023-05-15', 1, 1, 2),
('2023-07-20', '2023-07-25', '2023-06-20', 2, 2, 3),
('2023-08-10', '2023-08-05', '2023-07-10', 3, 3, 2),
('2023-09-05', '2023-09-10', '2023-08-05', 4, 4, 3),
('2023-10-15', '2023-10-20', '2023-09-15', 5, 5, 3),
('2023-11-20', '2023-11-15', '2023-10-20', 6, 6, 2),
('2023-12-10', '2023-12-05', '2023-11-10', 7, 7, 2),
('2024-01-15', '2024-01-20', '2023-12-15', 8, 8, 3),
('2024-02-20', '2024-02-15', '2024-01-20', 1, 9, 2),
('2024-03-25', '2024-03-30', '2024-02-25', 2, 10, 3),
('2024-04-10', '2024-04-05', '2024-03-10', 3, 1, 2),
('2024-05-15', NULL, '2024-04-15', 4, 2, 1),
('2024-06-20', NULL, '2024-05-20', 5, 3, 1);