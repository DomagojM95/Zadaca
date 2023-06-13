-- ovo je komentar i ne�e se izvesti
use master;
drop database if exists edunovawp1;
go
create database edunovawp1;
go
use edunovawp1;

create table smjer(
	sifra int not null primary key identity(1,1),
	naziv varchar(50) not null,
	trajanje int not null,
	cijena decimal(18,2) null, --ako je null ne treba se pisati null
	upisnina decimal(18,2),
	verificiran bit
);

create table polaznik(
	sifra int not null primary key identity(1,1),
	ime varchar(50) not null,
	prezime varchar(50) not null,
	oib char(11),
	email varchar(100)
);

create table grupa(
	sifra int not null primary key identity(1,1),
	naziv varchar(50) not null,
	smjer int not null, 
	datumpocetka datetime
);

create table clan(
	grupa int not null,
	polaznik int not null
);


-- veze izme�u tablica

alter table grupa add foreign key (smjer) references smjer(sifra);
alter table clan add foreign key (grupa) references grupa(sifra);
alter table clan add foreign key (polaznik) references polaznik(sifra);

insert into smjer(naziv,trajanje,cijena,upisnina,verificiran)
 values('PHP ',150,null,null,0);

 insert into grupa (naziv,smjer,datumpocetka)
values ('PP17',1,'2023-05-24 20:00:00'),
		('PP18',1,'2023-05-24 21:00:00');

		insert into polaznik (ime,prezime,oib,email)
values('pero','peric',09090906,'gahhg4a@.coom'),
('pere','peric',09090970,'bdbd.coom'),
('peri','peric',09090290,'gahhhga@.coom'),
('peru','peric',0909090,'gahhhga@.coom'),
('perk','peric',09092090,'gahhgaa@.coom');

insert into clan(grupa,polaznik)
values(2,3),(2,4),(2,5);
