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
insert into Libri VALUES ('768478343298', 'Sekreti i Parisit', 'Natasha Lester', '"Sekreti i Parisit” nga Natasha Lester është një histori zemërthyese, e shkruar bukur, e treguar në periudha të ndryshme kohore që të çojnë në Paris, në Angli dhe në Australi.', 'OMBRA GVG',2020, 'Novelë','sp.png')
truncate table Libri

--insertimi i  te dhenave per Librat --------------------
insert into Libri values
(
	'9789928048110',
	'Rruga jone, rruga e suksesit ne biznes',
	'Vasil Naci',
	'Presidenti i Agna Group, trajnuesi dhe filantropi Vasil Naçi dhe Dr. Alma Bici sjellin për lexuesit librin e ri “Rruga jonë, rruga e suksesit në biznes”, - i cili në vetvete përmbledh një përvojë të gjatë në zhvillimin e kompanisë Agna Group dhe që ofrohet si model edhe për sipërmarrësit shqiptarë. Libri është një variant i përpunuar i botimit të mëparshëm “Është rruga jonë”, i parë me imtësi në kontekstin e zhvillimeve të reja në biznes',
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
	'Pallati i Ëndrrave është një nga romanet thelbësore të Ismail Kadaresë, me frymën e epikës, të cilën letërsia europiane e quante të shteruar me njëmbëdhjetë romane,
	 titujt kryesorë të të cilëve po përkthehen herë pas here, vepra e tij vazhdimisht ka qenë në listën e kandidaturave për çmimin Nobel, në emër të letërsisë së Shqipërisë ',
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
	'Vëllimi i pestë i librit DYZET NET V është si vazhdë e katër vëllimeve të botuara më parë, që nëpërmjet porosive kuranore përpiqet ta paraqesë fotografinë 
	e plotë të Islamit dhe të shtrojë një rrugë, e cila do të na bënte të lumtur në këtë dhe në botën tjetër.
	Këto ligjërata, në fakt, paraqesin një bashkësi të njohurive shkencore teologjike dhe të emocionimit fetar.',
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
	'Plot jetë dhe tërheqës, në portretizimin e betejës së një gruaje për vetëpërmbushje, 
	në një shoqëri që lëkundet mes tradicionales dhe modernes, libri “Artistja e kënasë” hap një derë drejt një bote sa të harlisur e magjepsëse, aq edhe të zymtë e mizore.',
	'MediaPrint', 
	2021,
	'Romancë',
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
	'Libri botohet për herë të parë. Ai e merr emrin nga një prej shkrimeve të tij përbërëse dhe është i ndërtuar me 12 të tillë',
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

insert into LibraPerFemije VALUES ('9789951817110', 'Vete-besimi', 'Charles Pepin', 'Vetëbesimi është një çështje aq qendrore në ekzistencat tona, sa s’mund të jetë objekt i vetëm një disipline. Për t’ia kuptuar zemrekët, s’duhet të kërkojmë ta studiojmë në një laborator, por ta vëzhgojmë në jetën e vërtetë, ta shohim duke u lindur dhe rritur, t’ia përqafojmë ritmin dhe t’ia ndjekim lëvizjet, ngurrimet dhe rrëmbimet, t’i vrapojmë përbri siç ndjekim një fëmijë që desh rrëzohet, e pastaj e gjen ekuilibrin dhe hidhet përpara.', 'PEMA', 2021,'Psikologji','sfsf')
insert into LibraPerFemije VALUES ('9789965435436', 'Vete-besimi', 'Charles Pepin', 'Vetëbesimi është një çështje aq qendrore në ekzistencat tona, sa s’mund të jetë objekt i vetëm një disipline. Për t’ia kuptuar zemrekët, s’duhet të kërkojmë ta studiojmë në një laborator, por ta vëzhgojmë në jetën e vërtetë, ta shohim duke u lindur dhe rritur, t’ia përqafojmë ritmin dhe t’ia ndjekim lëvizjet, ngurrimet dhe rrëmbimet, t’i vrapojmë përbri siç ndjekim një fëmijë që desh rrëzohet, e pastaj e gjen ekuilibrin dhe hidhet përpara.', 'PEMA', 2021,'Psikologji','sfsf')
insert into LibraPerFemije VALUES ('9789364374575', 'Vete-besimi', 'Charles Pepin', 'Vetëbesimi është një çështje aq qendrore në ekzistencat tona, sa s’mund të jetë objekt i vetëm një disipline. Për t’ia kuptuar zemrekët, s’duhet të kërkojmë ta studiojmë në një laborator, por ta vëzhgojmë në jetën e vërtetë, ta shohim duke u lindur dhe rritur, t’ia përqafojmë ritmin dhe t’ia ndjekim lëvizjet, ngurrimet dhe rrëmbimet, t’i vrapojmë përbri siç ndjekim një fëmijë që desh rrëzohet, e pastaj e gjen ekuilibrin dhe hidhet përpara.', 'PEMA', 2021,'Psikologji','sfsf')
insert into LibraPerFemije VALUES ('9789463254252', 'Vete-besimi', 'Charles Pepin', 'Vetëbesimi është një çështje aq qendrore në ekzistencat tona, sa s’mund të jetë objekt i vetëm një disipline. Për t’ia kuptuar zemrekët, s’duhet të kërkojmë ta studiojmë në një laborator, por ta vëzhgojmë në jetën e vërtetë, ta shohim duke u lindur dhe rritur, t’ia përqafojmë ritmin dhe t’ia ndjekim lëvizjet, ngurrimet dhe rrëmbimet, t’i vrapojmë përbri siç ndjekim një fëmijë që desh rrëzohet, e pastaj e gjen ekuilibrin dhe hidhet përpara.', 'PEMA', 2021,'Psikologji','sfsf')

create table Publikime(
ID int IDENTITY (400,1)primary key,
Emri varchar (50),
Autori varchar(20),
Pershkrimi varchar(500),
Lloji varchar(30),
Viti_Publikimit int,
Foto varchar(255)
)
insert into Publikime VALUES ( 'Vete-besimi', 'Charles Pepin', 'Vetëbesimi është një çështje aq qendrore në ekzistencat tona, sa s’mund të jetë objekt i vetëm një disipline. Për t’ia kuptuar zemrekët, s’duhet të kërkojmë ta studiojmë në një laborator, por ta vëzhgojmë në jetën e vërtetë, ta shohim duke u lindur dhe rritur, t’ia përqafojmë ritmin dhe t’ia ndjekim lëvizjet, ngurrimet dhe rrëmbimet, t’i vrapojmë përbri siç ndjekim një fëmijë që desh rrëzohet, e pastaj e gjen ekuilibrin dhe hidhet përpara.', 'PEMA', 2021,'sfsf')
insert into Publikime VALUES ( 'Vete-besimi', 'Charles Pepin', 'Vetëbesimi është një çështje aq qendrore në ekzistencat tona, sa s’mund të jetë objekt i vetëm një disipline. Për t’ia kuptuar zemrekët, s’duhet të kërkojmë ta studiojmë në një laborator, por ta vëzhgojmë në jetën e vërtetë, ta shohim duke u lindur dhe rritur, t’ia përqafojmë ritmin dhe t’ia ndjekim lëvizjet, ngurrimet dhe rrëmbimet, t’i vrapojmë përbri siç ndjekim një fëmijë që desh rrëzohet, e pastaj e gjen ekuilibrin dhe hidhet përpara.', 'PEMA', 2021,'sfsf')
insert into Publikime VALUES ( 'Vete-besimi', 'Charles Pepin', 'Vetëbesimi është një çështje aq qendrore në ekzistencat tona, sa s’mund të jetë objekt i vetëm një disipline. Për t’ia kuptuar zemrekët, s’duhet të kërkojmë ta studiojmë në një laborator, por ta vëzhgojmë në jetën e vërtetë, ta shohim duke u lindur dhe rritur, t’ia përqafojmë ritmin dhe t’ia ndjekim lëvizjet, ngurrimet dhe rrëmbimet, t’i vrapojmë përbri siç ndjekim një fëmijë që desh rrëzohet, e pastaj e gjen ekuilibrin dhe hidhet përpara.', 'PEMA', 2021,'sfsf')
insert into Publikime VALUES ( 'Vete-besimi', 'Charles Pepin', 'Vetëbesimi është një çështje aq qendrore në ekzistencat tona, sa s’mund të jetë objekt i vetëm një disipline. Për t’ia kuptuar zemrekët, s’duhet të kërkojmë ta studiojmë në një laborator, por ta vëzhgojmë në jetën e vërtetë, ta shohim duke u lindur dhe rritur, t’ia përqafojmë ritmin dhe t’ia ndjekim lëvizjet, ngurrimet dhe rrëmbimet, t’i vrapojmë përbri siç ndjekim një fëmijë që desh rrëzohet, e pastaj e gjen ekuilibrin dhe hidhet përpara.', 'PEMA', 2021,'sfsf')

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