use master;
drop database if exists zoloski;
go
create database zoloski;
go
use zoloski;

create table zivotinja(
		sifra int primary key identity(1,1),
		vrsta varchar(50),
		ime varchar(50),
		djelatnik int,
		prostorija int,
		datum int
		);

create table djelatnik(
	sifra int primary key identity(1,1),
	ime varchar(50),
	prezime varchar(50),
	iban varchar(50)
);

create table prostorija(
	sifra int primary key identity(1,1),
	dimenzije varchar(50),
	maks_broj int,
	mjesto varchar(50)
);

create table datum(
	d_rodenja datetime,
	d_dolaska datetime,
	d_smrti datetime,
	sifra int primary key identity(1,1),
);

alter table zivotinja add foreign key (prostorija) references prostorija(sifra);
alter table zivotinja add foreign key (datum) references datum(sifra);
alter table zivotinja add foreign key (djelatnik) references djelatnik(sifra);

select * from datum;

insert into prostorija(dimenzije,maks_broj,mjesto)
values('50X50',5,'zadnja_desno'),('4X4',2,'desno'),('6x6',6,'lijevo');

insert into datum(d_rodenja,d_dolaska,d_smrti)
values('2023-03-04 17:00:00','2023-03-01 17:00:00','2023-03-03 17:00:00'),('2023-03-05 17:00:00','2023-03-01 17:00:00','2023-03-08 17:00:00'),('2023-03-09 17:00:00','2023-03-02 17:00:00','2023-03-09 17:00:00');

insert into djelatnik(ime,prezime,iban)
values('pero','peric','hr120201221'),('pero','peric','hr120201221'),('pero','peric','hr120201221');

insert into zivotinja(vrsta,ime,djelatnik,prostorija,datum)
values('pas','marko',1,1,1),('pas','marko',2,2,2),('pas','marko',3,3,3);

update datum set d_rodenja='2023-03-04 18:00:00.000'
where sifra=1;

update prostorija set maks_broj=6
where sifra=3;

update djelatnik set ime='marko'
where sifra=2;

delete from zivotinja where djelatnik=2;

delete from prostorija where  sifra=3;

delete from datum where sifra= 2;