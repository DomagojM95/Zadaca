use master;
drop database if exists knjiznica2;
go
create database knjiznica2;
go
use knjiznica2;

create table knjige(
	sifra int not null primary key identity,
	naslov varchar(50),
	pisac varchar(50),
	vlasnik int,
	clan int,
	datumpos datetime,
	datumvraca  datetime
);

create table clan(
	sifra int not null primary key identity,
	clbroj int
);

create table vlasnik(
	sifra int not null primary key identity,
	knjiga int
);

create table osoba(
	sifra int not null primary key identity,
	ime varchar(50),
	prezime varchar(50),
	adresa varchar(50),
	email varchar(50)
);

alter table knjige add foreign key (clan) references clan(sifra);
alter table knjige add foreign key (vlasnik) references vlasnik(sifra);S