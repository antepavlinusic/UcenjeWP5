use master;
go
drop database if exists legolas;
go
create database legolas;
go
use legolas;

create table kupci(
sifra int not null primary key identity (1,1),
ime varchar(40) not null,
prezime varchar(40) not null,
adresa varchar(60),
korisnicko_ime varchar(100),
lozinka varchar(100)
);

create table kosarica(
sifra int primary key not null identity (1,1),
kupci int not null,
datum datetime
);

create table proizvodi(
sifra int primary key not null identity (1,1),
naziv varchar(100) not null,
cijena  decimal(18,2)not null,
dostupno bit,
kolicina int not null,
kategorije varchar(100) not null
);



create table stavke(
sifra int primary key not null identity (1,1),
kosarica int not null,
proizvodi int not null
);



alter table kosarica add foreign key (kupci) references kupci (sifra);

alter table stavke add foreign key (kosarica) references kosarica (sifra);

alter table stavke add foreign key (proizvodi) references proizvodi (sifra);


insert into kupci (ime,prezime, korisnicko_ime) values
('Ante', 'Pavlinusic' , 'ante_pavlinusic'),
('John', 'Wick', 'babayaga'),
('Mike', 'Tyson', 'IronMike'),
('Greg', 'Popovich', 'Chosenone');

INSERT INTO proizvodi (naziv, cijena, kategorije, kolicina) values
('Crosshair Ultimat0' , 2134.55, 'Samostreli', '250'),
('Plinska boca', 80.99, 'Preživljavanje', '400'),
('Target splitter',65.78, 'Dodaci za strijele', '300');

select * from proizvodi;

select * from proizvodi where sifra=1;