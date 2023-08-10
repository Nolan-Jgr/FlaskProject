/* DC Villians Characters */
create table DCCHAR(
	TypeID int auto_increment,
    GameID int not NULL,
	TypeName varchar(32) not NULL,
    primary key(TypeID),
    foreign key(GameID) references GAME(GameID)
);
insert into DCCHAR(GameID, TypeName) values (2, "STRENGTH");
insert into DCCHAR(GameID, TypeName) values (2, "SPEED");
insert into DCCHAR(GameID, TypeName) values (2, "HEAT");
insert into DCCHAR(GameID, TypeName) values (2, "FROST");
insert into DCCHAR(GameID, TypeName) values (2, "ELECTRICITY");
insert into DCCHAR(GameID, TypeName) values (2, "EXPLOSIVE");
insert into DCCHAR(GameID, TypeName) values (2, "GOON");
insert into DCCHAR(GameID, TypeName) values (2, "MINDCONTROL");

create table STRENGTH(
	CharID int auto_increment,
    TypeID int not NULL,
    CharName varchar(32),
    PhotoLoc varchar(32),
    primary key(CharID),
    foreign key(TypeID) references SWCHAR(TypeID)
);
insert into STRENGTH(TypeID, CharName, PhotoLoc) values (1, "Bane", "CHAR.jpg");
insert into STRENGTH(TypeID, CharName, PhotoLoc) values (1, "Clayface", "CHAR.jpg");
insert into STRENGTH(TypeID, CharName, PhotoLoc) values (1, "Black Adam", "CHAR.jpg");

create table SPEED(
	CharID int auto_increment,
    TypeID int not NULL,
    CharName varchar(32),
    PhotoLoc varchar(32),
    primary key(CharID),
    foreign key(TypeID) references SWCHAR(TypeID)
);
insert into SPEED(TypeID, CharName, PhotoLoc) values (2, "Reverse Flash", "CHAR.jpg");
insert into SPEED(TypeID, CharName, PhotoLoc) values (2, "Flash", "CHAR.jpg");
insert into SPEED(TypeID, CharName, PhotoLoc) values (2, "Zoom", "CHAR.jpg");

create table HEAT(
	CharID int auto_increment,
    TypeID int not NULL,
    CharName varchar(32),
    PhotoLoc varchar(32),
    primary key(CharID),
    foreign key(TypeID) references SWCHAR(TypeID)
);
insert into HEAT(TypeID, CharName, PhotoLoc) values (3, "Superman", "CHAR.jpg");
insert into HEAT(TypeID, CharName, PhotoLoc) values (3, "Heat Wave", "CHAR.jpg");
insert into HEAT(TypeID, CharName, PhotoLoc) values (3, "Black Manta", "CHAR.jpg");

create table FROST(
	CharID int auto_increment,
    TypeID int not NULL,
    CharName varchar(32),
    PhotoLoc varchar(32),
    primary key(CharID),
    foreign key(TypeID) references SWCHAR(TypeID)
);
insert into FROST(TypeID, CharName, PhotoLoc) values (4, "Killer Frost", "CHAR.jpg");
insert into FROST(TypeID, CharName, PhotoLoc) values (4, "Captain Cold", "CHAR.jpg");
insert into FROST(TypeID, CharName, PhotoLoc) values (4, "Mr.Freeze", "CHAR.jpg");

create table ELECTRICITY(
	CharID int auto_increment,
    TypeID int not NULL,
    CharName varchar(32),
    PhotoLoc varchar(32),
    primary key(CharID),
    foreign key(TypeID) references SWCHAR(TypeID)
);
insert into ELECTRICITY(TypeID, CharName, PhotoLoc) values (5, "Blue Beetle", "CHAR.jpg");
insert into ELECTRICITY(TypeID, CharName, PhotoLoc) values (5, "Cyborg", "CHAR.jpg");
insert into ELECTRICITY(TypeID, CharName, PhotoLoc) values (5, "Livewire", "CHAR.jpg");

create table EXPLOSIVE(
	CharID int auto_increment,
    TypeID int not NULL,
    CharName varchar(32),
    PhotoLoc varchar(32),
    primary key(CharID),
    foreign key(TypeID) references SWCHAR(TypeID)
);
insert into EXPLOSIVE(TypeID, CharName, PhotoLoc) values (6, "Joker", "CHAR.jpg");
insert into EXPLOSIVE(TypeID, CharName, PhotoLoc) values (6, "Lobo", "CHAR.jpg");
insert into EXPLOSIVE(TypeID, CharName, PhotoLoc) values (6, "Captain Boomerang", "CHAR.jpg");

create table GOON(
	CharID int auto_increment,
    TypeID int not NULL,
    CharName varchar(32),
    PhotoLoc varchar(32),
    primary key(CharID),
    foreign key(TypeID) references SWCHAR(TypeID)
);
insert into GOON(TypeID, CharName, PhotoLoc) values (7, "Catwoman", "CHAR.jpg");
insert into GOON(TypeID, CharName, PhotoLoc) values (7, "Darkseid", "CHAR.jpg");
insert into GOON(TypeID, CharName, PhotoLoc) values (7, "DeathStroke", "CHAR.jpg");

create table MINDCONTROL(
	CharID int auto_increment,
    TypeID int not NULL,
    CharName varchar(32),
    PhotoLoc varchar(32),
    primary key(CharID),
    foreign key(TypeID) references SWCHAR(TypeID)
);
insert into MINDCONTROL(TypeID, CharName, PhotoLoc) values (8, "Brainiac", "CHAR.jpg");
insert into MINDCONTROL(TypeID, CharName, PhotoLoc) values (8, "Riddler", "CHAR.jpg");
insert into MINDCONTROL(TypeID, CharName, PhotoLoc) values (8, "Ares", "CHAR.jpg");
/* End of DC Characters */




