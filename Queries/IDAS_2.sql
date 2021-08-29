
SELECT k.obsah, k.nazev 
from komentare k
left join skupiny s 
on s.id_komentare = s.id_komentare; 

create or replace view groupView as
select u.id_uzivatele, u.jmeno, k.id_komentare, k.obsah, k.nazev "NAME", s.id_skupiny, s.nazev
from uzivatele u 
left join komentare k on k.id_uzivatele = u.id_uzivatele
left join skupiny s on s.id_komentare = k.id_komentare;

select * from groupview;

select jmeno, obsah 
from groupview 
where id_komentare = 124; 

select jmeno, obsah from groupview where id_skupiny = 1;