CREATE TABLE [Játékosok](
  	[Játékos_id] [int] PRIMARY KEY,
    [Csapat_id] [int] NOT NULL,
  	[Keresztnév] [nvarchar](255) NULL,
  	[Középső_név] [nvarchar](255) NULL,
  	[Vezetéknév] [nvarchar](255) NOT NULL,
  	[Poszt] [nvarchar](255) NOT NULL,
  	[Kor] [int] CHECK (Kor >= 15 AND Kor <= 100),
  	[Érték_millió_$] [int] CHECK (Érték_millió >= 0),
  	[Nemzetiség_id] [int] NOT NULL,
  	FOREIGN KEY (Csapat_id) REFERENCES Csapatok(Csapat_id),
  	FOREIGN key (Nemzetiség_id) REFERENCES Nemzetiségek(Nemzetiség_id)
) ON [PRIMARY]

INSERT INTO [Játékosok] ([Játékos_id], [Csapat_id], [Keresztnév], [Középső_név], [Vezetéknév], [Poszt], [Kor], [Érték_millió_$], [Nemzetiség_id]) 
VALUES 
    (1, 1, 'Thibaut', NULL, 'Courtois', 'Kapus', 29, 80, 1),
    (2, 1, 'Daniel', NULL, 'Carvajal', 'Védő', 30, 40, 2),
    (3, 1, 'Éder', NULL, 'Militao', 'Védő', 23, 50, 4),
    (4, 1, 'David', NULL, 'Alaba', 'Védő', 29, 60, 2),
    (5, 1, 'Ferland', NULL, 'Mendy', 'Védő', 27, 50, 3),
    (6, 1, 'Luka', NULL, 'Modric', 'Középpályás', 36, 50, 4),
    (7, 1, NULL, NULL, 'Casemiro', 'Középpályás', 29, 70, 7),
    (8, 1, 'Toni', NULL, 'Kroos', 'Középpályás', 32, 60, 6),
    (9, 1, 'Goes', NULL, 'Rodrygo', 'Támadó', 21, 70, 4),
    (10, 1, 'Karim', NULL, 'Benzema', 'Támadó', 34, 80, 6),
    (11, 1, 'Vinicíus', NULL, 'Júnior', 'Támadó', 21, 60, 4),
    (12, 1, 'Lucas', NULL, 'Vázquez', 'Cserék', 30, 25, 2),
    (13, 1, 'Federico', NULL, 'Valverde', 'Cserék', 23, 40, 4),
    (14, 1, 'Diaz', NULL, 'Mariano', 'Cserék', 28, 20, 7),
    (15, 2, 'Marc-André', NULL, 'Ter Stegen', 'Kapus', 29, 75, 1),
    (16, 2, 'Gerard', NULL, 'Pique', 'Védő', 34, 30, 11),
    (17, 2, 'Ronald', NULL, 'Araújo', 'Védő', 23, 50, 3),
    (18, 2, 'Sergi', NULL, 'Roberto', 'Védő', 29, 30, 2),
    (19, 2, 'Frenkie', NULL, 'De Jong', 'Középpályás', 24, 90, 2),
    (20, 2, 'Sergio', NULL, 'Busquets', 'Középpályás', 33, 40, 2),
    (21, 2, 'Pedri', NULL, 'Pedri', 'Középpályás', 19, 70, 2),
    (22, 2, 'Memphis', NULL, 'Depay', 'Támadó', 27, 60, 3),
    (23, 2, 'Ousmane', NULL, 'Dembele', 'Támadó', 24, 50, 7),
    (24, 2, 'Martin', NULL, 'Braithwaite', 'Cserék', 30, 15, 5),
    (25, 2, 'Antoine', NULL, 'Griezmann', 'Cserék', 30, 60, 5),
    (26, 2, 'Maxim', NULL, 'Choupo-Moting', 'Cserék', 32, 10, 14),
    (27, 3, 'Keylor', NULL, 'Navas', 'Kapus', 34, 10, 7),
    (28, 3, 'Marquinhos', NULL, 'Marquinhos', 'Védő', 27, 75, 3),
    (29, 3, 'Thiago', 'Emiliano', 'Silva', 'Védő', 37, 5, 4),
    (30, 3, 'Presnel', NULL, 'Kimpembe', 'Védő', 25, 45, 4),
    (31, 3, 'Achraf', NULL, 'Hakimi', 'Védő', 22, 60, 4),
    (32, 3, 'Leandro', NULL, 'Paredes', 'Középpályás', 27, 35, 7),
    (33, 3, 'Marco', NULL, 'Verratti', 'Középpályás', 29, 60, 8),
    (34, 3, 'Ángel', NULL, 'Di María', 'Középpályás', 33, 40, 2),
    (35, 3, 'Kylian', NULL, 'Mbappé', 'Támadó', 23, 180, 2),
    (36, 3, 'Neymar', NULL, 'Neymar', 'Támadó', 30, 160, 3),
    (37, 3, 'Gianluigi', NULL, 'Donnarumma', 'Cserék', 22, 70, 8),
    (38, 3, 'Idrissa', NULL, 'Gueye', 'Cserék', 32, 35, 14),
    (39, 3, 'Mauro', NULL, 'Icardi', 'Cserék', 29, 50, 7),
    (40, 3, 'Nuno', NULL, 'Mendes', 'Cserék', 21, 25, 4),
    (41, 4, 'Alisson', NULL, 'Becker', 'Kapus', 29, 80, 3),
    (42, 4, 'Trent', NULL, 'Alexander-Arnold', 'Védő', 23, 90, 11),
    (43, 4, 'Virgil', NULL, 'van Dijk', 'Védő', 30, 90, 10),
    (44, 4, 'Joe', NULL, 'Gomez', 'Védő', 24, 50, 11),
    (45, 4, 'Andrew', NULL, 'Robertson', 'Védő', 27, 75, 12),
    (46, 4, 'Jordan', NULL, 'Henderson', 'Középpályás', 31, 50, 11),
    (47, 4, 'Fabinho', NULL, 'Fabinho', 'Középpályás', 28, 70, 7),
    (48, 4, 'Thiago', NULL, 'Thiago', 'Középpályás', 30, 70, 4),
    (49, 4, 'James', NULL, 'Milner', 'Középpályás', 35, 10, 11),
    (50, 4, 'Sadio', NULL, 'Mané', 'Támadó', 29, 120, 14),
    (51, 4, 'Roberto', NULL, 'Firmino', 'Támadó', 30, 90, 16),
    (52, 4, 'Mohamed', NULL, 'Salah', 'Támadó', 29, 150, 4),
    (53, 4, 'Naby', NULL, 'Keita', 'Cserék', 26, 35, 13),
    (54, 4, 'Diogo', NULL, 'Jota', 'Cserék', 25, 60, 15),
    (55, 4, 'Curtis', NULL, 'Jones', 'Cserék', 21, 25, 11),
    (56, 4, 'Takumi', NULL, 'Minamino', 'Cserék', 27, 10, 11),
    (57, 5, 'Edouard', NULL, 'Mendy', 'Kapus', 29, 70, 3),
    (58, 5, 'Reece', NULL, 'James', 'Védő', 22, 60, 11),
    (59, 5, 'Andreas', NULL, 'Christensen', 'Védő', 25, 40, 6),
    (60, 5, 'Antonio', NULL, 'Rudiger', 'Védő', 28, 50, 4),
    (61, 5, 'Marcos', NULL, 'Alonso', 'Védő', 31, 25, 8),
    (62, 5, 'Jorginho', NULL, 'Jorginho', 'Középpályás', 30, 60, 4),
    (63, 5, 'Mateo', NULL, 'Kovacic', 'Középpályás', 27, 45, 4),
    (64, 5, 'N’Golo', NULL, 'Kanté', 'Középpályás', 30, 80, 4),
    (65, 5, 'Hakim', NULL, 'Ziyech', 'Középpályás', 28, 50, 13),
    (66, 5, 'Mason', NULL, 'Mount', 'Középpályás', 22, 80, 11),
    (67, 5, 'Christian', NULL, 'Pulisic', 'Támadó', 23, 70, 16),
    (68, 5, 'Kai', NULL, 'Havertz', 'Támadó', 22, 90, 15),
    (69, 5, 'Timo', NULL, 'Werner', 'Támadó', 26, 60, 11),
    (70, 5, 'Ben', NULL, 'Chilwell', 'Cserék', 24, 50, 11),
    (71, 5, 'Callum', NULL, 'Hudson-Odoi', 'Cserék', 21, 30, 11),
    (72, 5, 'Mateo', NULL, 'Kovacic', 'Cserék', 27, 45, 4),
    (73, 6, 'Gianluigi', NULL, 'Donnarumma', 'Kapus', 22, 70, 8),
    (74, 6, 'Giovanni', NULL, 'Di Lorenzo', 'Védő', 28, 35, 2),
    (75, 6, 'Leonardo', NULL, 'Bonucci', 'Védő', 34, 40, 8),
    (76, 6, 'Giorgio', NULL, 'Chiellini', 'Védő', 37, 10, 8),
    (77, 6, 'Emerson', NULL, 'Palmieri', 'Védő', 27, 15, 16),
    (78, 6, 'Jorginho', NULL, 'Jorginho', 'Középpályás', 30, 60, 4),
    (79, 6, 'Manuel', NULL, 'Locatelli', 'Középpályás', 24, 50, 8),
    (80, 6, 'Nicolo', NULL, 'Barella', 'Középpályás', 25, 60, 8),
    (81, 6, 'Federico', NULL, 'Chiesa', 'Támadó', 24, 70, 8),
    (82, 6, 'Lorenzo', NULL, 'Insigne', 'Támadó', 30, 80, 4),
    (83, 6, 'Ciro', NULL, 'Immobile', 'Támadó', 31, 50, 8),
    (84, 6, 'Domenico', NULL, 'Berardi', 'Cserék', 27, 40, 8),
    (85, 6, 'Matteo', NULL, 'Politano', 'Cserék', 28, 20, 8),
    (86, 6, 'Bryan', NULL, 'Cristante', 'Cserék', 27, 20, 4),
    (87, 7, 'Keylor', NULL, 'Navas', 'Kapus', 34, 10, 7),
    (88, 7, 'Douglas', NULL, 'Luis', 'Védő', 32, 10, 7),
    (89, 7, 'Cristian', NULL, 'Romero', 'Védő', 24, 60, 4),
    (90, 7, 'Giancarlo', NULL, 'González', 'Védő', 34, 20, 7),
    (91, 7, 'Francisco', NULL, 'Calvo', 'Védő', 28, 10, 7),
    (92, 7, 'Yeltsin', NULL, 'Tejeda', 'Középpályás', 29, 5, 7),
    (93, 7, 'Celso', NULL, 'Borges', 'Középpályás', 33, 5, 7),
    (94, 7, 'Rodney', NULL, 'Wallace', 'Középpályás', 33, 5, 7),
    (95, 7, 'Bryan', NULL, 'Ruiz', 'Támadó', 36, 5, 7),
    (96, 7, 'Joel', NULL, 'Campbell', 'Támadó', 29, 5, 7),
    (97, 7, 'Johan', NULL, 'Venegas', 'Támadó', 33, 5, 7),
    (98, 7, 'Jonathan', NULL, 'McDonald', 'Cserék', 34, 5, 7),
    (99, 8, 'Maarten', NULL, 'Stekelenburg', 'Kapus', 39, 2, 10),
    (100, 8, 'Perr', NULL, 'Schuurs', 'Védő', 22, 25, 10),
    (101, 8, 'Jurrien', NULL, 'Timber', 'Védő', 20, 20, 10),
    (102, 8, 'Nicolás', NULL, 'Tagliafico', 'Védő', 29, 30, 7),
    (103, 8, 'Ryan', NULL, 'Grimmer', 'Védő', 27, 1, 10),
    (104, 8, 'Davy', NULL, 'Klaassen', 'Középpályás', 28, 15, 10),
    (105, 8, 'Edson', NULL, 'Álvarez', 'Középpályás', 24, 25, 7),
    (106, 8, 'Mohammed', NULL, 'Kudus', 'Középpályás', 21, 15, 5),
    (107, 8, 'Davy', NULL, 'Klaassen', 'Középpályás', 28, 15, 10),
    (108, 8, 'Davy', NULL, 'Klaassen', 'Középpályás', 28, 15, 10),
    (109, 8, 'Davy', NULL, 'Klaassen', 'Középpályás', 28, 15, 10),
    (110, 8, 'Steven', NULL, 'Berghuis', 'Támadó', 30, 25, 10),
    (111, 8, 'Dusan', NULL, 'Tadic', 'Támadó', 32, 25, 3),
    (112, 8, 'Sebastien', NULL, 'Hallér', 'Támadó', 28, 40, 4),
    (113, 8, 'Carel', NULL, 'Eiting', 'Cserék', 23, 5, 10),
    (114, 8, 'Mohammed', NULL, 'Kudus', 'Cserék', 21, 15, 5),
    (115, 9, 'Emiliano', NULL, 'Martinez', 'Kapus', 29, 70, 4),
    (116, 9, 'Juan', NULL, 'Foyth', 'Védő', 24, 15, 4),
    (117, 9, 'Lucas', NULL, 'Martinez', 'Védő', 24, 20, 4),
    (118, 9, 'Nicolas', NULL, 'Otamendi', 'Védő', 34, 10, 7),
    (119, 9, 'Marcos', NULL, 'Acuna', 'Védő', 30, 15, 4),
    (120, 9, 'Leandro', NULL, 'Paredes', 'Középpályás', 27, 35, 7),
    (121, 9, 'Giovani', NULL, 'Lo Celso', 'Középpályás', 25, 40, 7),
    (122, 9, 'Rodrigo', NULL, 'De Paul', 'Középpályás', 27, 50, 4),
    (123, 9, 'Lionel', NULL, 'Messi', 'Támadó', 34, 200, 7),
    (124, 9, 'Angel', NULL, 'Di Maria', 'Támadó', 33, 40, 2),
    (125, 9, 'Lautaro', NULL, 'Martinez', 'Támadó', 24, 90, 4),
    (126, 9, 'Nahuel', NULL, 'Molina', 'Cserék', 24, 10, 4),
    (127, 9, 'Exequiel', NULL, 'Palacios', 'Cserék', 23, 20, 4),
    (128, 10, 'Jasper', NULL, 'Cillessen', 'Kapus', 33, 5, 10),
    (129, 10, 'Denzel', NULL, 'Dumfries', 'Védő', 25, 25, 10),
    (130, 10, 'Matthijs', NULL, 'de Ligt', 'Védő', 22, 90, 10),
    (131, 10, 'Virgil', NULL, 'van Dijk', 'Védő', 30, 90, 10),
    (132, 10, 'Daley', NULL, 'Blind', 'Védő', 31, 20, 10),
    (133, 10, 'Frenkie', NULL, 'de Jong', 'Középpályás', 24, 90, 2),
    (134, 10, 'Georginio', NULL, 'Wijnaldum', 'Középpályás', 31, 45, 10),
    (135, 10, 'Davy', NULL, 'Klaassen', 'Középpályás', 28, 15, 10),
    (136, 10, 'Quincy', NULL, 'Promes', 'Középpályás', 29, 15, 10),
    (137, 10, 'Steven', NULL, 'Berghuis', 'Támadó', 30, 25, 10),
    (138, 10, 'Memphis', NULL, 'Depay', 'Támadó', 27, 60, 3),
    (139, 10, 'Donyell', NULL, 'Malen', 'Támadó', 22, 50, 10),
    (140, 10, 'Wout', NULL, 'Weghorst', 'Támadó', 29, 25, 10),
    (141, 10, 'Ryan', NULL, 'Gravenberch', 'Cserék', 19, 15, 10),
    (142, 10, 'Donny', NULL, 'van de Beek', 'Cserék', 24, 30, 10),
    (143, 11, 'Omar', NULL, 'Alderrawi', 'Kapus', 34, 5, 11),
    (144, 11, 'Hakimi', NULL, 'Achraf', 'Védő', 23, 60, 4),
    (145, 11, 'Achraf', NULL, 'Hakimi', 'Védő', 22, 60, 4),
    (146, 11, 'Medhi', NULL, 'Benatia', 'Védő', 35, 15, 4),
    (147, 11, 'Mehdi', NULL, 'Carcela-Gonzalez', 'Középpályás', 32, 5, 4),
    (148, 11, 'Fayçal', NULL, 'Fajr', 'Középpályás', 33, 5, 16),
    (149, 11, 'Youssef', NULL, 'El Arabi', 'Támadó', 35, 5, 4),
    (150, 11, 'Achraf', NULL, 'Dari', 'Támadó', 33, 5, 4),
    (151, 11, 'Nordin', NULL, 'Amrabat', 'Támadó', 34, 5, 4),
    (152, 11, 'Amine', NULL, 'Harit', 'Cserék', 24, 10, 4),
    (153, 11, 'Yassine', NULL, 'Bounou', 'Cserék', 31, 5, 4),
    (154, 12, 'Borjan', NULL, 'Milan', 'Kapus', 34, 5, 12),
    (155, 12, 'Marko', NULL, 'Gobeljic', 'Védő', 29, 5, 12),
    (156, 12, 'Nemanja', NULL, 'Milunovic', 'Védő', 31, 5, 12),
    (157, 12, 'Stefan', NULL, 'Sanic', 'Védő', 30, 5, 12),
    (158, 12, 'Milan', NULL, 'Gajic', 'Védő', 26, 5, 12),
    (159, 12, 'El Fardou', NULL, 'Ben', 'Középpályás', 32, 5, 12),
    (160, 12, 'Mirko', NULL, 'Ilic', 'Középpályás', 27, 5, 12),
    (161, 12, 'Guelor', NULL, 'Kanga', 'Középpályás', 30, 5, 12),
    (162, 12, 'Veljko', NULL, 'Nikolic', 'Támadó', 32, 5, 12),
    (163, 12, 'Tomane', NULL, 'Tomane', 'Támadó', 34, 5, 12),
    (164, 12, 'Milos', NULL, 'Vulic', 'Cserék', 23, 5, 12),
    (165, 12, 'Nikola', NULL, 'Kravic', 'Cserék', 24, 5, 12);