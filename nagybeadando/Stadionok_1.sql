CREATE TABLE [Stadionok](
    [Stadion_id] [int] PRIMARY KEY,
    [Stadionnév] [nvarchar](255) NOT NULL
) ON [PRIMARY]

INSERT INTO [Stadionok] ([Stadion_id], [Stadionnév])
VALUES 
    (1,'Santiago Bernabéu Stadion'),
    (2,'Parc des Princes'),
    (3,'Anfield'),
    (4,'Stamford Bridge'),
    (5,'Allianz Stadium'),
    (6,'Wanda Metropolitano'),
    (7,'Camp Nou'),
    (8,'Etihad Stadium'),
    (9,'San Siro');