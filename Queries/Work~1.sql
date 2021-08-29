
/* ERROR ERROR ERROR
create or replace PROCEDURE USER_INSERT_UPDATE(
p_name out idas2.uzivatele%TYPE,
p_surename idas2.uzivatele%TYPE,
p_login idas2.uzivatele%TYPE ,
p_heslo idas2.uzivatele%TYPE,
p_email idas2.uzivatele%TYPE) 
AS
id_uz idas2.uzivatele.id_uzivatele%TYPE:= uz_id_sq.nextval;
BEGIN
insert into work.uzivatele(id_uzivatele,login,heslo,jmeno,prijmeni,email) 
values(id_uz,p_login,p_heslo,p_jmeno,p_prijmeni,p_email);
commit;
END USER_INSERT_UPDATE;
*/


set SERVEROUTPUT ON
exec TEST3(5117);
/
create or replace PROCEDURE USER_INSERT_UPDATE1(p_name varchar2, p_surename varchar2, p_login varchar2, p_heslo varchar2, p_email varchar2)  AS
id_uz NUMBER(10,0) := uziv_id_sq.nextval;
BEGIN
insert into uzivatele(id_uzivatele,login,heslo,jmeno,prijmeni,poznamka,email,blokace) values(id_uz,p_login,p_heslo,p_name,p_surename,null,p_email,1);
commit;
END USER_INSERT_UPDATE1;
/

create or replace PROCEDURE USER_INSERT_UPDATE(
p_name out uzivatele.jmeno%TYPE,
p_surename uzivatele.prijmeni%TYPE,
p_login uzivatele.login%TYPE,
p_heslo uzivatele.heslo%TYPE,
p_email uzivatele.email%TYPE) 
AS
id_uz uzivatele.id_uzivatele%TYPE:= uziv_id_sq.nextval;
BEGIN
insert into uzivatele(id_uzivatele,login,heslo,jmeno,prijmeni,email) 
values(id_uz,p_login,p_heslo,p_name,p_surename,p_email);
commit;
END USER_INSERT_UPDATE;
