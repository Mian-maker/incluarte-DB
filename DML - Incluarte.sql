USE incluarte;

-- INSERT INTO Users(full_name, mail, pwd, media_options, roles) VALUES ('', '', '', {}, '');
INSERT INTO Users(full_name, mail, pwd, media_options, roles) VALUES ('Jhon Lennon', 'jhon@gmail.com', '1234', '{"Sordo": true}', 'Cliente');
INSERT INTO Users(full_name, mail, pwd, media_options, roles) VALUES ('Michael Jackson', 'michael@gmail.com', '1234', '{"Sordo": true}', 'Cliente');
INSERT INTO Users(full_name, mail, pwd, media_options, roles) VALUES ('Josh Nicols', 'nicols@gmail.com', '1234', '{"Ciego": true}', 'Cliente');

SELECT * FROM Users u;


-- INSERT INTO Medals(name, visit_to_get) VALUES ('', 0);
INSERT INTO Medals(name, visit_to_get) VALUES ('Conocedor principiante', 1);
INSERT INTO Medals(name, visit_to_get) VALUES ('Conocedor en procesoe', 5);
INSERT INTO Medals(name, visit_to_get) VALUES ('Conocedor intermedio', 10);
INSERT INTO Medals(name, visit_to_get) VALUES ('Conocedor avanzado', 15);

SELECT * FROM Medals m;


-- INSERT INTO Users_has_Medals(id_user, id_medal) VALUES (0, 0);
INSERT INTO Users_has_Medals(id_user, id_medal) VALUES (1, 1);
INSERT INTO Users_has_Medals(id_user, id_medal) VALUES (1, 2);
INSERT INTO Users_has_Medals(id_user, id_medal) VALUES (2, 1);

SELECT * FROM Users_has_Medals uhm;


-- INSERT INTO Cards(number_card, due_month, due_year, CCV, id_user) VALUES ('', 00, 00, 000, 0);
INSERT INTO Cards(number_card, due_month, due_year, CCV, id_user) VALUES ('1234123412341234', 12, 2026, 123, 1);
INSERT INTO Cards(number_card, due_month, due_year, CCV, id_user) VALUES ('5678123412345678', 06, 2024, 111, 1);

SELECT * FROM Cards c;


-- INSERT INTO Rewards(title, description, discount, status, id_user) VALUES ('', '', 000, true, 0);
INSERT INTO Rewards(title, description, discount, status, id_user) VALUES ('DESCUENTO 10% EN TU PROXIMA VISITA', 'Cupon aplicable a cualquier mueso', 10, true, 1);

SELECT * FROM Rewards r;


-- INSERT INTO Museums(name, mail, pwd, location, phone, ticket_cost, days, open_hr, close_hr, description, func_licence) VALUES ('', '', '', '', '', 00.00, '', '', '', '', '');
INSERT INTO Museums(name, mail, pwd, location, phone, ticket_cost, days, open_hr, close_hr, description, func_licence) VALUES
('Museo de artes naturales', 'museo@artes.com', '1234', 'Cuernavaca, Mor', '7771234567', 50.00, 'L|M|M|J|V', '10:00:00', '16:00:00', 'El mejor museo de artes del estado de Morelos', 'http://link-to-file.com');
				  
SELECT * FROM Museums m;


-- INSERT INTO Tickets(visit_day, price, status, id_user, id_museum) VALUES ('', {}, false, 0, 0);
INSERT INTO Tickets(visit_day, price, status, id_user, id_museum) VALUES ('2022-06-01 10:00:00', '{"entradas": 2, "precio_unidad": 100.00, "decuento": 0.00, "subtotal": 200.00, "total": 232.00}', false, 1, 1);

SELECT * FROM Tickets t;


-- INSERT INTO Artworks(thumbnail, name, description, media, id_museum) VALUES ({}, '', '', {}, 0);
INSERT INTO Artworks(thumbnail, name, description, media, id_museum) VALUES ('{"thumbnail1": "http://link-to-thumbnail.com"}', 'Carta a Emiliano Zapata', 'Esta carta fue escrita en 1900 ...', '{"media1": {"name": "Video LSM", "media": "http://link-to-media.com"}, "media2": {"name": "Audio-guia", "media": "http://link-to-media.com"}}', 1);
INSERT INTO Artworks(thumbnail, name, description, media, id_museum) VALUES ('{"thumbnail1": "http://link-to-thumbnail.com"}', 'Carta a Morelos', 'Esta carta fue escrita en 1900 ...', '{"media1": {"name": "Video LSM", "media": "http://link-to-media.com"}, "media2": {"name": "Audio-guia", "media": "http://link-to-media.com"}}', 1);

SELECT * FROM Artworks a;


-- INSERT INTO Events(name, description, event_day, price, id_museum) VALUES ('', '', '', 00.00, 0);
INSERT INTO Events(name, description, event_day, price, id_museum) VALUES ('Dia del niño - Museo', 'Ven y celebra el dia ...', '2022-04-30 10:00:00', 20.00, 1);

SELECT * FROM Events e;


-- INSERT INTO Collections(name, description, id_museum) VALUES ('', '', 0);
INSERT INTO Collections(name, description, id_museum) VALUES ('Galeria arte urbano', 'Ven a conocer la nueva expocicion disponible ...', 1);

SELECT * FROM Collections c;
