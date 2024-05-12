CREATE TABLE [Csapatok](
    [Csapat_id] [int] PRIMARY KEY,
  	[Tulajdonos] [nvarchar](255) NULL,
    [Tulajdonlás_kezdete] [int] NULL,
  	[Nemzetiség_id] [int] NOT NULL,
    [Érték (Millió $)] [int] CHECK (Érték_Millió >= 0),
  	FOREIGN key (Nemzetiség_id) REFERENCES Nemzetiségek(Nemzetiség_id),
  	foreign key (csapat_id) REFERENCES Csapatnév(csapat_id)
) ON [PRIMARY]

INSERT [Csapatok] ([Csapat_id], [Tulajdonos], [Tulajdonlás_kezdete], [Nemzetiség_id], [Érték (Millió $)]) 
VALUES
		(1, N'Florentino Pérez', 2009, 2, 500),
       (2, N'Joan Laporta', 2021, 2, 520),
       (3, N'Qatar Sports Investments', 2011, 5, 600),
       (4, N'Club members', 1900, 6, 450),
       (5, N'John W. Henry', 2010, 11, 470),
       (6, N'City Football Group', 2008, 11, 550),
       (7, N'Roman Abramovics', 2003, 11, 510),
       (8, N'The Glazer family', 2005, 11, 480),
       (9, N'The Agnelli family', 1923, 8, 490),
       (10, N'Suning Holdings Group', 2016, 8, 420),
       (11, N'Miguel Ángel Gil Marín', 1987, 2, 430),
       (12, N'Elliott Management Corporation', 2018, 8, 440)