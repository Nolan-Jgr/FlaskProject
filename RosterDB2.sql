/* Marvel Characters */
create table MRVLCHAR(
	TypeID int auto_increment,
    GameID int not NULL,
	TypeName varchar(32) not NULL,
    primary key(TypeID),
    foreign key(GameID) references GAME(GameID)
);
insert into MRVLCHAR(GameID, TypeName) values (3, "FLIGHT");
insert into MRVLCHAR(GameID, TypeName) values (3, "TECH");
insert into MRVLCHAR(GameID, TypeName) values (3, "SMASH");
insert into MRVLCHAR(GameID, TypeName) values (3, "DIG");
insert into MRVLCHAR(GameID, TypeName) values (3, "GRAPPLE");
insert into MRVLCHAR(GameID, TypeName) values (3, "AGILITY");
insert into MRVLCHAR(GameID, TypeName) values (3, "SENSE");
insert into MRVLCHAR(GameID, TypeName) values (3, "CLIMB");

create table FLIGHT(
	CharID int auto_increment,
    TypeID int not NULL,
    CharName varchar(32),
    PhotoLoc varchar(32),
    primary key(CharID),
    foreign key(TypeID) references SWCHAR(TypeID)
);
insert into FLIGHT(TypeID, CharName, PhotoLoc) values (1, "Thor", "CHAR.jpg");
insert into FLIGHT(TypeID, CharName, PhotoLoc) values (1, "Silver Surfer", "CHAR.jpg");
insert into FLIGHT(TypeID, CharName, PhotoLoc) values (1, "War Machine", "CHAR.jpg");

create table TECH(
	CharID int auto_increment,
    TypeID int not NULL,
    CharName varchar(32),
    PhotoLoc varchar(32),
    primary key(CharID),
    foreign key(TypeID) references SWCHAR(TypeID)
);
insert into TECH(TypeID, CharName, PhotoLoc) values (2, "Iron Man", "CHAR.jpg");
insert into TECH(TypeID, CharName, PhotoLoc) values (2, "Doctor Doom", "CHAR.jpg");
insert into TECH(TypeID, CharName, PhotoLoc) values (2, "Maria Hill", "CHAR.jpg");

create table SMASH(
	CharID int auto_increment,
    TypeID int not NULL,
    CharName varchar(32),
    PhotoLoc varchar(32),
    primary key(CharID),
    foreign key(TypeID) references SWCHAR(TypeID)
);
insert into SMASH(TypeID, CharName, PhotoLoc) values (3, "Hulk", "CHAR.jpg");
insert into SMASH(TypeID, CharName, PhotoLoc) values (3, "Juggernaut", "CHAR.jpg");
insert into SMASH(TypeID, CharName, PhotoLoc) values (3, "Abomination", "CHAR.jpg");

create table DIG(
	CharID int auto_increment,
    TypeID int not NULL,
    CharName varchar(32),
    PhotoLoc varchar(32),
    primary key(CharID),
    foreign key(TypeID) references SWCHAR(TypeID)
);
insert into DIG(TypeID, CharName, PhotoLoc) values (4, "Wolverine", "CHAR.jpg");
insert into DIG(TypeID, CharName, PhotoLoc) values (4, "Black Panther", "CHAR.jpg");
insert into DIG(TypeID, CharName, PhotoLoc) values (4, "Beast", "CHAR.jpg");

create table GRAPPLE(
	CharID int auto_increment,
    TypeID int not NULL,
    CharName varchar(32),
    PhotoLoc varchar(32),
    primary key(CharID),
    foreign key(TypeID) references SWCHAR(TypeID)
);
insert into GRAPPLE(TypeID, CharName, PhotoLoc) values (5, "Mr.Fantastic", "CHAR.jpg");
insert into GRAPPLE(TypeID, CharName, PhotoLoc) values (5, "Super-Skrull", "CHAR.jpg");
insert into GRAPPLE(TypeID, CharName, PhotoLoc) values (5, "Hawkeye", "CHAR.jpg");

create table AGILITY(
	CharID int auto_increment,
    TypeID int not NULL,
    CharName varchar(32),
    PhotoLoc varchar(32),
    primary key(CharID),
    foreign key(TypeID) references SWCHAR(TypeID)
);
insert into AGILITY(TypeID, CharName, PhotoLoc) values (6, "Black Widow", "CHAR.jpg");
insert into AGILITY(TypeID, CharName, PhotoLoc) values (6, "Daredevil", "CHAR.jpg");
insert into AGILITY(TypeID, CharName, PhotoLoc) values (6, "Iron Fist", "CHAR.jpg");

create table SENSE(
	CharID int auto_increment,
    TypeID int not NULL,
    CharName varchar(32),
    PhotoLoc varchar(32),
    primary key(CharID),
    foreign key(TypeID) references SWCHAR(TypeID)
);
insert into SENSE(TypeID, CharName, PhotoLoc) values (7, "DareDevil", "CHAR.jpg");
insert into SENSE(TypeID, CharName, PhotoLoc) values (7, "Doctor Octopus", "CHAR.jpg");
insert into SENSE(TypeID, CharName, PhotoLoc) values (7, "Kraven The Hunter", "CHAR.jpg");

create table CLIMB(
	CharID int auto_increment,
    TypeID int not NULL,
    CharName varchar(32),
    PhotoLoc varchar(32),
    primary key(CharID),
    foreign key(TypeID) references SWCHAR(TypeID)
);
insert into CLIMB(TypeID, CharName, PhotoLoc) values (8, "Spiderman", "CHAR.jpg");
insert into CLIMB(TypeID, CharName, PhotoLoc) values (8, "Venom", "CHAR.jpg");
insert into CLIMB(TypeID, CharName, PhotoLoc) values (8, "Carnage", "CHAR.jpg");
/* End of Marvel Characters */