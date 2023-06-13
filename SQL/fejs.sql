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
	lozinka varchar(50),
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


insert into osoba(ime,prezime,datumrodenja,email,lozinka,brojtel,slika,administrator,stanje,aktivan,uniqueid)
values('per','peric','2023-05-07','per@gmai.com','dadasdads',80808080,'slika',0,0,0,'yes'),
('per','peric','2023-05-07','per@gmai.com','dadasdads',80808080,'slika',0,0,0,'yes'),
('per','peric','2023-05-07','per@gmai.com','dadasdads',80808080,'slika',0,0,0,'yes');

insert into objava (naslov,upis,vrijemeizrade,ipadresa,osoba)
values ('naslov','hahah','2023-05-05 17:00:00','81281288122',1),
('naslov','hahah','2023-05-05 17:00:00','81281288122',3),
('naslov','hahah','2023-05-05 17:00:00','81281288122',2);


insert into komentar(vrijemekomentiranja,opis,objava,osoba)
values ('2023-04-07 08:00:00','hello',1,1),('2023-04-07 08:00:00','hello',3,1),('2023-04-07 08:00:00','hello',2,1);


insert into svidamise(vrijemesvidanja,objava,osoba)
values ('2023-03-05 05:00:00',1,1),('2023-03-05 05:00:00',2,2),('2023-03-05 05:00:00',3,3);

insert into svidamise_komentar(osoba,komentar)
values(3,1),(2,2),(3,2);

select *  from osoba;

update osoba set ime='marko'
where sifra=2;

update osoba set lozinka='LOZINKA'
where sifra=3;

update svidamise set objava=3
where sifra=2;


delete from osoba where sifra=3;