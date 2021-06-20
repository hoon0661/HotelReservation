use hotelReservation;

insert into guest (firstName, lastName, address, city, state, zip, phone) values 
	('Your', 'Name', 'Your Address', 'City', 'State', 'Zip', 'Phone'),
    ('Mack', 'Simmer', '379 Old Shore Street', 'Council Bluffs', 'IA', '51501', '(291)553-0508'),
	('Bettyann', 'Seery', '750 Wubtergreeb Dr.', 'Wasilla', 'AK', '99654', '(478)277-9632'),
	('Duane', 'Cullision', '9662 Foxrun Lane', 'Harlingen', 'TX', '78552', '(308)494-0198'),
	('Karie', 'Yang', '9378 W. Augusta Ave.', 'West Deptford', 'NJ', '08096', '(214)730-0298'),
	('Aurore', 'Lipton', '762 Wild Rose Street', 'Saginaw', 'MI', '48601', '(377)507-0974'),
	('Zachery', 'Luechtefeld', '7 Poplar Dr.', 'Arvada', 'CO', '80003', '(814)485-2615'),
	('Jeremiah', 'Pendergrass', '70 Oakwood St.', 'Zion', 'IL', '60099', '(279)491-0960'),
	('Walter', 'Holaway', '7556 Arrowhead St.', 'Cumberland', 'RI', '02864', '(446)396-6785'),
	('Wilfred', 'Vise', '77 West Surrey Street', 'Oswego', 'NY', '13126', '(834)727-1001'),
	('Maritza', 'Tilton', '939 Linda Rd.', 'Burke', 'VA', '22015', '(446)351-6860'),
	('Joleen', 'Titon', '87 Queen St.', 'Drexel Hill', 'PA', '19026', '(231)893-2755');
    
insert into amenity (item) values
	('Microwave'),
    ('Jacuzzi'),
    ('Refrigerator'),
    ('Oven');

insert into ada (access) values
	(true),
    (false);

insert into type(roomType) values
	('Single'),
    ('Double'),
    ('Suite');

insert into standardOccupancy(occupancyNumber) values
	(2),
    (3);

insert into maximumOccupancy(occupancyNumber) values
	(2),
    (4),
    (8);
    
insert into extraPersonCost(cost) values
	(null),
    (10),
    (20);

insert into basePrice(price) values
	(149.99),
    (174.99),
    (199.99),
    (399.99);
    
insert into room(roomNumber, roomTypeId, adaId, standardOccupancyId, maximumOccupancyId, basePriceId, extraPersonCostId) values
	(201, 2, 2, 1, 2, 3, 2),
    (202, 2, 1, 1, 2, 2, 2),
    (203, 2, 2, 1, 2, 3, 2),
    (204, 2, 1, 1, 2, 2, 2),
    (205, 1, 2, 1, 1, 2, 1),
    (206, 1, 1, 1, 1, 1, 1),
    (207, 1, 2, 1, 1, 2, 1),
    (208, 1, 1, 1, 1, 1, 1),
    (301, 2, 2, 1, 2, 3, 2),
    (302, 2, 1, 1, 2, 2, 2),
    (303, 2, 2, 1, 2, 3, 2),
    (304, 2, 1, 1, 2, 2, 2),
    (305, 1, 2, 1, 1, 2, 1),
    (306, 1, 1, 1, 1, 1, 1),
    (307, 1, 2, 1, 1, 2, 1),
    (308, 1, 1, 1, 1, 1, 1),
    (401, 3, 1, 2, 3, 4, 3),
    (402, 3, 1, 2, 3, 4, 3);
    
insert into roomAmenity(roomNumber, amenityId) values
	(201, 1),
    (201, 2),
    (202, 3),
    (203, 1),
    (203, 2),
    (204, 3),
    (205, 1),
    (205, 2),
    (205, 3),
    (206, 1),
    (206, 3),
    (207, 1),
    (207, 2),
    (207, 3),
    (208, 1),
    (208, 3),
    (301, 1),
    (301, 2),
    (302, 3),
    (303, 1),
    (303, 2),
    (304, 3),
    (305, 1),
    (305, 2),
    (305, 3),
    (306, 1),
    (306, 3),
    (307, 1),
    (307, 2),
    (307, 3),
    (308, 1),
    (308, 3),
    (401, 1),
    (401, 3),
    (401, 4),
    (402, 1),
    (402, 3),
    (402, 4);

insert into reservation(roomNumber, guestId, numberOfAdults, numberOfChildren, startDate, endDate, totalCost) values
	(308, 2, 1, 0, '2023-2-2', '2023-2-4', 299.98),
    (203, 3, 2, 1, '2023-2-5', '2023-2-10', 999.95),
    (305, 4, 2, 0, '2023-2-22', '2023-2-24', 349.98),
    (201, 5, 2, 2, '2023-3-6', '2023-3-7', 199.99),
    (307, 1, 1, 1, '2023-3-17', '2023-3-20', 524.97),
    (302, 6, 3, 0, '2023-3-18', '2023-3-23', 924.95),
    (202, 7, 2, 2, '2023-3-29', '2023-3-31', 349.98),
    (304, 8, 2, 0, '2023-3-31', '2023-4-5', 874.95),
    (301, 9, 1, 0, '2023-4-9', '2023-4-13', 799.96),
    (207, 10, 1, 1, '2023-4-23', '2023-4-24', 174.99),
    (401, 11, 2, 4, '2023-5-30', '2023-6-2', 1199.97),
    (206, 12, 2, 0, '2023-6-10', '2023-6-14', 599.96),
    (208, 12, 1, 0, '2023-6-10', '2023-6-14', 599.96),
    (304, 6, 3, 0, '2023-6-17', '2023-6-18', 184.99),
    (205, 1, 2, 0, '2023-6-28', '2023-7-2', 699.96),
    (204, 9, 3, 1, '2023-7-13', '2023-7-14', 184.99),
    (401, 10, 4, 2, '2023-7-18', '2023-7-21', 1259.97),
    (303, 3, 2, 1, '2023-7-28', '2023-7-29', 199.99),
    (305, 3, 1, 0, '2023-8-30', '2023-9-1', 349.98),
    (208, 2, 2, 0, '2023-9-16', '2023-9-17', 149.99),
    (203, 5, 2, 2, '2023-9-13', '2023-9-15', 399.98),
    (401, 4, 2, 2, '2023-11-22', '2023-11-25', 1199.97),
    (206, 2, 2, 0, '2023-11-22', '2023-11-25', 449.97),
    (301, 2, 2, 2, '2023-11-22', '2023-11-25', 599.97),
    (302, 11, 2, 0, '2023-12-24', '2023-12-28', 699.96);
    