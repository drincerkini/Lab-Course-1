Create database Libraria

use Libraria

--------------------------LIBRI---------------
drop table Libri
create table Libri(
ID int IDENTITY (1,1)primary key,
ISBN varchar(255) not null unique,
Emri varchar (50),
Autori varchar(20),
Pershkrimi varchar(500),
Shtepia_Botuese varchar(50),
Viti_Publikimit int,
Zhanri varchar(30),
Foto varchar(255)
)
select * from Libri
insert into Libri VALUES ('768478343298', 'Sekreti i Parisit', 'Natasha Lester', '"Sekreti i Parisit� nga Natasha Lester �sht� nj� histori zem�rthyese, e shkruar bukur, e treguar n� periudha t� ndryshme kohore q� t� �ojn� n� Paris, n� Angli dhe n� Australi.', 'OMBRA GVG',2020, 'Novel�','sp.png')
truncate table Libri

--insertimi i  te dhenave per Librat --------------------
insert into Libri values
(
	'9789928048110',
	'Rruga jone, rruga e suksesit ne biznes',
	'Vasil Naci',
	'Presidenti i Agna Group, trajnuesi dhe filantropi Vasil Na�i dhe Dr. Alma Bici sjellin p�r lexuesit librin e ri �Rruga jon�, rruga e suksesit n� biznes�, - i cili n� vetvete p�rmbledh nj� p�rvoj� t� gjat� n� zhvillimin e kompanis� Agna Group dhe q� ofrohet si model edhe p�r sip�rmarr�sit shqiptar�. Libri �sht� nj� variant i p�rpunuar i botimit t� m�parsh�m ��sht� rruga jon�, i par� me imt�si n� kontekstin e zhvillimeve t� reja n� biznes',
	'Agna Leadership Academy',
	2019,
	'Drame',
	'rrugaSuksesit'
)

insert into Libri values
(
	'9789995687076',
	'Pallati i endrrave',
	'Ismail Kadare',
	'Pallati i �ndrrave �sht� nj� nga romanet thelb�sore t� Ismail Kadares�, me frym�n e epik�s, t� cil�n let�rsia europiane e quante t� shteruar me nj�mb�dhjet� romane,
	 titujt kryesor� t� t� cil�ve po p�rkthehen her� pas here, vepra e tij vazhdimisht ka qen� n� list�n e kandidaturave p�r �mimin Nobel, n� em�r t� let�rsis� s� Shqip�ris� ',
	'Onufri',
	2017,
	'Roman',
	'pallati-i-endrrave.png'
)

insert into Libri values
(
	'9789989587641',
	'Dyzet nete V',
	'Ismail Kadare',
	'V�llimi i pest� i librit DYZET NET V �sht� si vazhd� e kat�r v�llimeve t� botuara m� par�, q� n�p�rmjet porosive kuranore p�rpiqet ta paraqes� fotografin� 
	e plot� t� Islamit dhe t� shtroj� nj� rrug�, e cila do t� na b�nte t� lumtur n� k�t� dhe n� bot�n tjet�r.
	K�to ligj�rata, n� fakt, paraqesin nj� bashk�si t� njohurive shkencore teologjike dhe t� emocionimit fetar.',
	'Logos A',
	2019,
	'Roman',
	'dyzet-nete-v.png'
)

insert into Libri VALUES
(
	'508575398932', 
	'Artistja e kenase', 
	'Alka Joshi', 
	'Plot jet� dhe t�rheq�s, n� portretizimin e betej�s s� nj� gruaje p�r vet�p�rmbushje, 
	n� nj� shoq�ri q� l�kundet mes tradicionales dhe modernes, libri �Artistja e k�nas� hap nj� der� drejt nj� bote sa t� harlisur e magjeps�se, aq edhe t� zymt� e mizore.',
	'MediaPrint', 
	2021,
	'Romanc�',
	'ak.png')




---- table per tekstet ----------------------------------

create table Tekste(
ID int IDENTITY (100,1)primary key,
ISBN varchar(255) not null unique,
Emri varchar (50),
Autori varchar(20),
Pershkrimi varchar(500),
Shtepia_Botuese varchar(50),
Viti_Publikimit int,
Zhanri varchar(30),
Foto varchar(255)
)
select * from Tekste
truncate table Tekste
insert into Tekste values(
	'9789928428738',
	'Politika e instalacionit',
	'Boris Groys',
	'Libri botohet p�r her� t� par�. Ai e merr emrin nga nj� prej shkrimeve t� tij p�rb�r�se dhe �sht� i nd�rtuar me 12 t� till�',
	'Botimet Princ',
	2015,
	'Politike',
	'politika-e-instalacionit.png'

)

select * from tekste

--- pjesae e tabe;es per revista --------------

drop table Revista
create table Revista(
ID int IDENTITY (200,1)primary key,
ISBN varchar(255) not null unique,
Emri varchar (50),
Autori varchar(20),
Pershkrimi varchar(500),
Shtepia_Botuese varchar(50),
Viti_Publikimit int,
Zhanri varchar(30),
Foto varchar(255)
)
truncate table Revista

insert into Revista values(
	'97899284281534',
	'Revista Business Magazine',
	'New Media',
	'Business Magazine eshte revista e pare online kushtuar sipermarrjes dhe qe tashme i ofrohet lexuesve edhe ne versionin e printuar. Ne kete reviste do te gjeni te informacione,',
	'Botimet Princ',
	2020,
	'Politike',
	'revista-business-magazine.png'
)

create table LibraPerFemije(
ID int IDENTITY (300,1)primary key,
ISBN varchar(255) not null unique,
Emri varchar (50),
Autori varchar(20),
Pershkrimi varchar(500),
Shtepia_Botuese varchar(50),
Viti_Publikimit int,
Zhanri varchar(30),
Foto varchar(255)
)

insert into LibraPerFemije VALUES ('9789951817110', 'Vete-besimi', 'Charles Pepin', 'Vet�besimi �sht� nj� ��shtje aq qendrore n� ekzistencat tona, sa s�mund t� jet� objekt i vet�m nj� disipline. P�r t�ia kuptuar zemrek�t, s�duhet t� k�rkojm� ta studiojm� n� nj� laborator, por ta v�zhgojm� n� jet�n e v�rtet�, ta shohim duke u lindur dhe rritur, t�ia p�rqafojm� ritmin dhe t�ia ndjekim l�vizjet, ngurrimet dhe rr�mbimet, t�i vrapojm� p�rbri si� ndjekim nj� f�mij� q� desh rr�zohet, e pastaj e gjen ekuilibrin dhe hidhet p�rpara.', 'PEMA', 2021,'Psikologji','sfsf')
insert into LibraPerFemije VALUES ('9789965435436', 'Vete-besimi', 'Charles Pepin', 'Vet�besimi �sht� nj� ��shtje aq qendrore n� ekzistencat tona, sa s�mund t� jet� objekt i vet�m nj� disipline. P�r t�ia kuptuar zemrek�t, s�duhet t� k�rkojm� ta studiojm� n� nj� laborator, por ta v�zhgojm� n� jet�n e v�rtet�, ta shohim duke u lindur dhe rritur, t�ia p�rqafojm� ritmin dhe t�ia ndjekim l�vizjet, ngurrimet dhe rr�mbimet, t�i vrapojm� p�rbri si� ndjekim nj� f�mij� q� desh rr�zohet, e pastaj e gjen ekuilibrin dhe hidhet p�rpara.', 'PEMA', 2021,'Psikologji','sfsf')
insert into LibraPerFemije VALUES ('9789364374575', 'Vete-besimi', 'Charles Pepin', 'Vet�besimi �sht� nj� ��shtje aq qendrore n� ekzistencat tona, sa s�mund t� jet� objekt i vet�m nj� disipline. P�r t�ia kuptuar zemrek�t, s�duhet t� k�rkojm� ta studiojm� n� nj� laborator, por ta v�zhgojm� n� jet�n e v�rtet�, ta shohim duke u lindur dhe rritur, t�ia p�rqafojm� ritmin dhe t�ia ndjekim l�vizjet, ngurrimet dhe rr�mbimet, t�i vrapojm� p�rbri si� ndjekim nj� f�mij� q� desh rr�zohet, e pastaj e gjen ekuilibrin dhe hidhet p�rpara.', 'PEMA', 2021,'Psikologji','sfsf')
insert into LibraPerFemije VALUES ('9789463254252', 'Vete-besimi', 'Charles Pepin', 'Vet�besimi �sht� nj� ��shtje aq qendrore n� ekzistencat tona, sa s�mund t� jet� objekt i vet�m nj� disipline. P�r t�ia kuptuar zemrek�t, s�duhet t� k�rkojm� ta studiojm� n� nj� laborator, por ta v�zhgojm� n� jet�n e v�rtet�, ta shohim duke u lindur dhe rritur, t�ia p�rqafojm� ritmin dhe t�ia ndjekim l�vizjet, ngurrimet dhe rr�mbimet, t�i vrapojm� p�rbri si� ndjekim nj� f�mij� q� desh rr�zohet, e pastaj e gjen ekuilibrin dhe hidhet p�rpara.', 'PEMA', 2021,'Psikologji','sfsf')

create table Publikime(
ID int IDENTITY (400,1)primary key,
Emri varchar (50),
Autori varchar(20),
Pershkrimi varchar(500),
Lloji varchar(30),
Viti_Publikimit int,
Foto varchar(255)
)
insert into Publikime VALUES ( 'Vete-besimi', 'Charles Pepin', 'Vet�besimi �sht� nj� ��shtje aq qendrore n� ekzistencat tona, sa s�mund t� jet� objekt i vet�m nj� disipline. P�r t�ia kuptuar zemrek�t, s�duhet t� k�rkojm� ta studiojm� n� nj� laborator, por ta v�zhgojm� n� jet�n e v�rtet�, ta shohim duke u lindur dhe rritur, t�ia p�rqafojm� ritmin dhe t�ia ndjekim l�vizjet, ngurrimet dhe rr�mbimet, t�i vrapojm� p�rbri si� ndjekim nj� f�mij� q� desh rr�zohet, e pastaj e gjen ekuilibrin dhe hidhet p�rpara.', 'PEMA', 2021,'sfsf')
insert into Publikime VALUES ( 'Vete-besimi', 'Charles Pepin', 'Vet�besimi �sht� nj� ��shtje aq qendrore n� ekzistencat tona, sa s�mund t� jet� objekt i vet�m nj� disipline. P�r t�ia kuptuar zemrek�t, s�duhet t� k�rkojm� ta studiojm� n� nj� laborator, por ta v�zhgojm� n� jet�n e v�rtet�, ta shohim duke u lindur dhe rritur, t�ia p�rqafojm� ritmin dhe t�ia ndjekim l�vizjet, ngurrimet dhe rr�mbimet, t�i vrapojm� p�rbri si� ndjekim nj� f�mij� q� desh rr�zohet, e pastaj e gjen ekuilibrin dhe hidhet p�rpara.', 'PEMA', 2021,'sfsf')
insert into Publikime VALUES ( 'Vete-besimi', 'Charles Pepin', 'Vet�besimi �sht� nj� ��shtje aq qendrore n� ekzistencat tona, sa s�mund t� jet� objekt i vet�m nj� disipline. P�r t�ia kuptuar zemrek�t, s�duhet t� k�rkojm� ta studiojm� n� nj� laborator, por ta v�zhgojm� n� jet�n e v�rtet�, ta shohim duke u lindur dhe rritur, t�ia p�rqafojm� ritmin dhe t�ia ndjekim l�vizjet, ngurrimet dhe rr�mbimet, t�i vrapojm� p�rbri si� ndjekim nj� f�mij� q� desh rr�zohet, e pastaj e gjen ekuilibrin dhe hidhet p�rpara.', 'PEMA', 2021,'sfsf')
insert into Publikime VALUES ( 'Vete-besimi', 'Charles Pepin', 'Vet�besimi �sht� nj� ��shtje aq qendrore n� ekzistencat tona, sa s�mund t� jet� objekt i vet�m nj� disipline. P�r t�ia kuptuar zemrek�t, s�duhet t� k�rkojm� ta studiojm� n� nj� laborator, por ta v�zhgojm� n� jet�n e v�rtet�, ta shohim duke u lindur dhe rritur, t�ia p�rqafojm� ritmin dhe t�ia ndjekim l�vizjet, ngurrimet dhe rr�mbimet, t�i vrapojm� p�rbri si� ndjekim nj� f�mij� q� desh rr�zohet, e pastaj e gjen ekuilibrin dhe hidhet p�rpara.', 'PEMA', 2021,'sfsf')

select * from Publikime


create table Users(
ID int IDENTITY (10000,1)primary key,
Emri varchar (50),
Mbiemri varchar (50),
Username varchar (50),
Email varchar (50),
)


insert into Users VALUES('Rina','Rexhepi','rinarexhepi','rinarexhepi@gmail.com');
insert into Users VALUES('Fatlind','Bytyqi','fatlindbytyqi','fatlindbytyqi@gmail.com');
insert into Users VALUES('Drin','Cerkini','drincerkini','drincerkini@gmail.com');



--create table Blog(
--ID int IDENTITY (2000,1)primary key,
--Titulli varchar (50),
--Komenti varchar(255),
--)

--drop table Blog

create table Komente(
ID int IDENTITY (1000,1)primary key,
Username varchar (50),
Komenti varchar(255),
)

insert into Komente VALUES('fatlindbytyqi', 'Hello from ubt');
insert into Komente VALUES('drincerkini', 'hnjsknhkfka');
insert into Komente VALUES('rinarexhepi', 'hnjsknhkfka');

select * from Komente

create table Autori(
ID int IDENTITY (20000,1)primary key,
Emri varchar (50),
Mbiemri varchar (50),
VitiLindjes int,
Biografia varchar (50),
Foto varchar (255),
)

insert into Autori VALUES('Fan', 'Noli', 1882, 'frsgrfsgsgs', 'noli.png');
insert into Autori VALUES('Faik', 'Konica', 1975, 'tyrydfgsfdsf', 'konica.png');
insert into Autori VALUES('Rexhep', 'Hoxha', 1949, 'frsgrfsgsgs', 'noli.png');


select * from Autori

create table LibraTeRinj(
ID int IDENTITY (700,1)primary key,
ISBN varchar(255),
Titulli varchar (50),
Pershkrimi varchar (255),
Autori varchar(20),
Zhanri varchar(30),
Foto varchar(255)
)

insert into LibraTeRinj VALUES ('9789587469845', 'Vete-besimi', 'jsgbjb', 'Charles Pepin', 'drame','sfsf')
insert into LibraTeRinj VALUES ('9789587467845', 'Vete-besimi', 'jsgbjb', 'Charles Pepin', 'drame','sfsf')
insert into LibraTeRinj VALUES ('9789587468845', 'Vete-besimi', 'jsgbjb', 'Charles Pepin', 'drame','sfsf')
insert into LibraTeRinj VALUES ('9789587462845', 'Vete-besimi', 'jsgbjb', 'Charles Pepin', 'drame','sfsf')

drop table LibraTeRinj


create table LibraBoteror(
    Id int identity(600, 1),
    Isbn varchar(50),
    Titulli varchar(50),
	Pershkrimi varchar (255),
    Autori varchar (100),
    Zhanri varchar(100),
    Gjuha varchar(100),
    Foto varchar(255)
)

insert into LibraBoteror VALUES(8976665447,'jsruhngihsn','bfrbs','fshfs','fsgsbd','fsgdsrrr', 'fsgdsrrr')
insert into LibraBoteror VALUES(8976684443,'jsruhngihsn','bfrbs','fshfs','fsgsbd','fsgdsrrr', 'fsgdsrrr')
insert into LibraBoteror VALUES(8976661443,'jsruhngihsn','bfrbs','fshfs','fsgsbd','fsgdsrrr', 'fsgdsrrr')
insert into LibraBoteror VALUES(8976663443,'jsruhngihsn','bfrbs','fshfs','fsgsbd','fsgdsrrr', 'fsgdsrrr')
insert into LibraBoteror VALUES(8976667443,'jsruhngihsn','bfrbs','fshfs','fsgsbd','fsgdsrrr', 'fsgdsrrr')

drop table LibraBoteror

create table Kontakti(
    ID int IDENTITY (5000,1)primary key,
    Emri varchar(50),
    Mbiemri varchar(50),
    Email varchar(50),
    Mesazhi varchar(255),
)

insert into Kontakti(Emri, Mbiemri, Email, Mesazhi) values('drin', 'cerkini', 'drin@gmail.com', 'hello from ubt')
insert into Kontakti(Emri, Mbiemri, Email, Mesazhi) values('fatlind', 'bytyqi', 'fatlind@gmail.com', 'hello from ubt prishtine')
insert into Kontakti(Emri, Mbiemri, Email, Mesazhi) values('rina', 'rexhepi', 'rina@gmail.com', 'hello from kosovo')
insert into Kontakti(Emri, Mbiemri, Email, Mesazhi) values('filan', 'fisteku', 'filan@gmail.com', 'not hello from ubt')

select * from Kontakti

drop table Kontakti

create table AutoriBoteror(
ID int IDENTITY (40000,1)primary key,
Emri varchar (50),
Mbiemri varchar (50),
VitiLindjes int,
VendLindja varchar(255),
Biografia varchar (50),
Foto varchar (255),
)

insert into AutoriBoteror VALUES('Leo', 'Tolstoy', 1949, 'frsgrfsgsgs', 'hfsjhgsu','ghusk');
insert into AutoriBoteror VALUES('Fjodor', 'Dostoevsky', 1949, 'frsgrfsgsgs', 'Russia','dostoevsky.png');
insert into AutoriBoteror VALUES('Honore De', 'Balsac', 1873, 'dsfsfsfssfs', 'French','balsac.png');

select * from AutoriBoteror

drop table AutoriBoteror

create table Ekipa(
	ID int IDENTITY (50000, 1) PRIMARY KEY,
	Emri varchar(50),
	Mbiemri varchar(50),
	Pozita varchar (255),
	Pershkrimi varchar(255),
	Foto varchar(255)
)


insert into Ekipa values('hell', 'world', 'IT', 'lorem ipsun', 'ak.png')
insert into Ekipa values('wordl', 'asdad', 'Software engineer', 'lorem ipsun', 'ak.png')
insert into Ekipa values('vbvbvb', 'aererer', 'Full stack ', 'lorem ipsun', 'ak.png')


create table Users(
	ID int IDENTITY (100000, 1) PRIMARY KEY,
	Emri varchar(50),
	Mbiemri varchar(50),
	Username varchar(50),
	Email varchar(50),
	Password varchar(50),
)

insert into Users values('rina','rexhepi','rinarexhepi','rinnaarexhepi@gmail.com','jeu892i7;q=0')
insert into Users values('fatlind','bytyqi','fbytyqi','fatlindbytyqi@gmail.com','16784&9jisz8902=0')
insert into Users values('drin','cerkini','drincerkini','drincerkini@gmail.com','i9u9%2iAKf$7;q=0')
insert into Users values('filan','fisteku','ffisteku','fistekufilan@gmail.com','FUnjdgj982&;q=0')