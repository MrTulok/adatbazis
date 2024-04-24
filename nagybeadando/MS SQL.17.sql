CREATE TABLE [Nemzetiségek] (
    [Nemzetiség_id] [int] PRIMARY KEY,
    [Nemzetiség] [nvarchar](50) NOT NULL
) ON [PRIMARY]

INSERT INTO [Nemzetiségek] ([Nemzetiség_id], [Nemzetiség]) 
VALUES 
    (1, 'Belga'),
    (2, 'Spanyol'),
    (3, 'Brazil'),
    (4, 'Horvát'),
    (5, 'Francia'),
    (6, 'Német'),
    (7, 'Argentin'),
    (8, 'Olasz'),
    (9, 'Costa Rican'),
    (10, 'Holland'),
    (11, 'Angol'),
    (12, 'Skót'),
    (13, 'Marokkói'),
    (14, 'Kameruni'),
    (15, 'Lengyel'),
    (16, 'Kanadai');