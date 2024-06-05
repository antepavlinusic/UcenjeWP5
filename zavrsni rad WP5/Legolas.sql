use master;
go
drop database if exists legolas;
go
create database legolas;
go
use legolas;

create table kupci(
sifra int primary key identity (1,1),
ime varchar(40),
prezime varchar(40),
adresa varchar(60),
korisnicko_ime varchar(100),
lozinka varchar(100)
);

create table kosarica(
sifra int primary key identity (1,1),
kupci int,
datum datetime
);

create table proizvodi(
sifra int primary key identity (1,1),
naziv varchar(100),
cijena decimal(18,2),
dostupno bit,
kolicina int,
kategorije varchar(100)
);



create table stavke(
sifra int primary key identity (1,1),
kosarica int,
proizvodi int
);



alter table kosarica add foreign key (kupci) references kupci (sifra);

alter table stavke add foreign key (kosarica) references kosarica (sifra);

alter table stavke add foreign key (proizvodi) references proizvodi (sifra);
