SELECT IIF(GROUPING_ID(v.USERNEV) = 1,'Végösszeg',v.USERNEV),
    count(distinct (szh.SZALLAS_ID))
FROM Vendeg v LEFT JOIN Foglalas f ON f.UGYFEL_FK = v.USERNEV
    left JOIN Szoba szo ON szo.SZOBA_ID = f.SZOBA_FK
    left JOIN Szallashely szh ON szo.SZALLAS_FK = szh.SZALLAS_ID
GROUP BY ROLLUP (v.USERNEV)

select *,
    DATEDIFF(YEAR,SZUL_DAT,GETDATE()),
    AVG(DATEDIFF(YEAR,SZUL_DAT,GETDATE())) over(order by SZUL_DAT rows between 2 PRECEDING and 2 FOLLOWING)
from Vendeg

select v.USERNEV,v.NEV
from Vendeg v JOIN Foglalas f ON v.USERNEV = f.UGYFEL_FK
WHERE not EXISTS
(
    select *
    from foglalas f2
    where v.USERNEV = f2.UGYFEL_FK AND f2.FELNOTT_SZAM + f2.GYERMEK_SZAM <> 2
)

