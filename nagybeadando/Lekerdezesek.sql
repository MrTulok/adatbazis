select iif(grouping_id(n.Nemzetiség) = 0, n.Nemzetiség,'Összesen:'),COUNT(*) as 'Játékosok száma'
from Játékosok j join Nemzetiségek n on j.Nemzetiség_id = n.Nemzetiség_id
GROUP BY rollup (n.Nemzetiség)
ORDER by COUNT(*)

SELECT s.Stadionnév, AVG(m.Hazai_pont+m.Vendég_pont) AS 'Rúgott_átlag'
FROM Meccsek m join Stadionok s on m.Stadion_id=s.Stadion_id
GROUP by s.Stadionnév

SELECT csn.Csapatnév,
	(isnull(j.Keresztnév,'') + ' ' + isnull(j.Középső_név,'') + ' ' + isnull(j.Vezetéknév,'')) AS 'Név',
    j.Poszt
FROM Játékosok j
    JOIN Csapatok cs ON cs.Csapat_id = j.Csapat_id
    JOIN Csapatnév csn ON cs.Csapat_id = csn.Csapat_id
    join Nemzetiségek n on j.Nemzetiség_id = n.Nemzetiség_id
where n.Nemzetiség = 'Spanyol'
GROUP BY j.Keresztnév, j.Középső_név, j.Vezetéknév, csn.Csapatnév, j.Poszt
order by csn.Csapatnév, j.Poszt

SELECT DENSE_RANK() OVER (ORDER BY j.Érték_millió_$ DESC, j.Keresztnév ASC) AS 'érték rangsor',
	(ISNULL(j.Keresztnév,'') + ' ' + ISNULL(j.Középső_név,'') + ' ' + ISNULL(j.Vezetéknév,'')) AS 'Név',
	j.Érték_millió_$
FROM Játékosok j

SELECT DISTINCT csn.Csapatnév, m1.Hazai_pont as 'Legnagyobb hazai pont'
FROM Csapatok cs 
JOIN Csapatnév csn ON cs.Csapat_id = csn.Csapat_id
JOIN Meccsek m1 ON cs.Csapat_id = m1.Hazai_csapat
WHERE m1.Hazai_pont = (
    SELECT MAX(m2.Hazai_pont)
    FROM Meccsek m2
    WHERE m1.Hazai_csapat = m2.Hazai_csapat)