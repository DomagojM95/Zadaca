use master;
drop database if exists fejs;
go
create database fejs;
go
use fejs;

create table osoba(
	sifra int not null primary key identity(1,1),
	ime varchar(50)not null,
	prezime varchar(50)not null,
	datumrodenja datetime,
	email varchar(50),
	lozinka int,
	brojtel int not null,
	slika varchar(100),
	administrator bit not null,
	stanje bit not null,
	aktivan bit not null,
	uniqueid varchar(255)
);

create table svidamise(
	sifra int not null primary key identity(1,1),
	vrijemesvidanja datetime,
	objava int,
	osoba int

);

create table objava(
	sifra int not null primary key identity(1,1),
	naslov varchar(50)not null,
	upis varchar(50) not null,
	vrijemeizrade datetime,
	ipadresa varchar(50),
	osoba int not null
);

create table komentar(
	sifra int not null primary key identity(1,1),
	vrijemekomentiranja datetime not null,
	opis varchar(50),
	objava int not null,
	osoba int  not null

);

create table svidamise_komentar(
	sifra int not null primary key identity(1,1),
	osoba int not null,
	komentar int not null


);


alter table svidamise_komentar add foreign key (osoba) references osoba(sifra);
alter table svidamise_komentar add foreign key (komentar) references komentar(sifra);
alter table komentar add foreign key (objava) references objava(sifra);
alter table komentar  add foreign key (osoba) references osoba(sifra);
alter table objava add foreign key (osoba) references osoba(sifra);
alter table svidamise add foreign key (objava) references objava(sifra);
alter table svidamise add foreign key (osoba) references osoba(sifra);