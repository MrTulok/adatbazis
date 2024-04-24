CREATE TABLE [Csapatnév] (
    [Csapat_id] [int] PRIMARY key,
    [Csapatnév] [nvarchar](255) NOT NULL
) ON [PRIMARY]

INSERT INTO [Csapatnév] ([Csapat_id], [Csapatnév])
VALUES
      (1, 'Real Madrid'),
      (2, 'FC Barcelona'),
      (3, 'Paris Saint-Germain'),
      (4, 'FC Bayern München'),
      (5, 'Liverpool FC'),
      (6, 'Manchester City'),
      (7, 'Chelsea FC'),
      (8, 'Manchester United'),
      (9, 'Juventus'),
      (10, 'Inter Milan'),
      (11, 'Atletico Madrid'),
      (12, 'AC Milan');