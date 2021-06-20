drop database if exists HotelReservation;

create database HotelReservation;
use HotelReservation;

create table guest (
	id int primary key auto_increment,
    firstName varchar(30) not null,
    lastName varchar(30) not null,
    address varchar(30) not null,
    city varchar(20) not null,
    state varchar(10) not null,
    zip varchar(10) not null,
	phone varchar(20) not null
);

create table amenity (
	id int primary key auto_increment,
	item varchar(20) not null
);

create table basePrice (
	id int primary key auto_increment,
    price int not null
);

create table standardOccupancy(
	id int primary key auto_increment,
    occupancyNumber int not null
);

create table maximumOccupancy(
	id int primary key auto_increment,
    occupancyNumber int not null
);

create table ada(
	id int primary key auto_increment,
    access bool not null
);

create table extraPersonCost(
	id int primary key auto_increment,
    cost int
);

create table type(
	id int primary key auto_increment,
    roomType varchar(10) not null
);

create table room(
    roomNumber int primary key not null,
    roomTypeId int not null,
    adaId int not null,
    standardOccupancyId int not null,
    maximumOccupancyId int not null,
    basePriceId int not null,
    extraPersonCostId int not null,
    foreign key (roomTypeId)
		references type(id),
	foreign key (adaId)
		references ada(id),
	foreign key (standardOccupancyId)
		references standardOccupancy(id),
    foreign key (maximumOccupancyId)
		references maximumOccupancy(id),
	foreign key (basePriceId)
		references basePrice(id),
	foreign key (extraPersonCostId)
		references extraPersonCost(id)
);

create table roomAmenity(
	amenityId int not null,
    roomNumber int not null,
    primary key (amenityId, roomNumber),
    foreign key (amenityId)
		references amenity(id),
	foreign key (roomNumber)
		references room(roomNumber)
);

create table reservation(
	id int primary key auto_increment,
    roomNumber int not null,
    guestId int not null,
    numberOfAdults int not null,
    numberOfChildren int not null,
    startDate date not null,
    endDate date not null,
    totalCost decimal(6, 2) not null,
    foreign key (roomNumber)
		references room(roomNumber),
	foreign key (guestId)
		references guest(id)
);

    
	


