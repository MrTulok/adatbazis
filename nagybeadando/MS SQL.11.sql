CREATE TABLE [Helyezések](
  	[Helyezés] [int] NOT NULL,
    [Csapat_id] [int] PRIMARY key,
    [Pont] [int] CHECK (Pont >= 0),
    [Győzelem] [int] NULL,
    [Döntetlen] [int] NULL,
    [Vereség] [int] NULL,
    [Lőtt gól] [int] NULL,
    [Kapott gól] [int] NULL,
  	foreign key (csapat_id) REFERENCES Csapatok(csapat_id)
) ON [PRIMARY]

INSERT INTO [Helyezések] ([Helyezés], [Csapat_id], [Pont], [Győzelem], [Döntetlen], [Vereség], [Lőtt gól], [Kapott gól]) 
VALUES 
      (1, 6, 55, 18, 1, 3, 48, 19),
      (2, 8, 53, 17, 2, 3, 43, 19),
      (3, 3, 50, 15, 5, 2, 36, 20),
      (4, 4, 45, 14, 3, 5, 39, 24),
      (5, 1, 41, 13, 2, 7, 42, 27),
      (6, 5, 39, 12, 3, 7, 40, 28),
      (7, 7, 36, 11, 3, 8, 40, 32),
      (8, 2, 34, 10, 4, 8, 37, 35),
      (9, 9, 27, 8, 3, 11, 30, 37),
      (10, 10, 26, 8, 2, 12, 31, 39),
      (11, 12, 22, 6, 4, 12, 30, 40),
      (12, 11, 18, 5, 3, 14, 30, 45);