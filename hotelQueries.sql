use hotelReservation;

-- Write a query that returns a list of reservations that end in July 2023, including the name of the guest, the room number(s), and the reservation dates.
select r.*, g.firstName, g.lastName from reservation r 
	join guest g on g.id = r.guestId 
	where r.endDate like '%2023-07%';
    
-- Write a query that returns a list of all reservations for rooms with a jacuzzi, displaying the guest's name, the room number, and the dates of the reservation.
-- select r.*, g.firstName, g.lastName from reservation r 
-- 	join guest g on g.id = r.guestId
--     join room on room.roomNumber = r.roomNumber
--     join roomAmenity ra on room.roomNumber = ra.roomNumber
--     join amenity a on a.id = ra.amenityId
--     where a.item = 'Jacuzzi';

-- Write a query that returns all the rooms reserved for a specific guest, including the guest's name, the room(s) reserved, the starting date of the reservation, and how many people were included in the reservation. (Choose a guest's name from the existing data.)
-- select r.*, g.firstName, g.lastName from reservation r
-- 	join guest g on g.id = r.guestId
--     where g.guestName = 'Mack Simmer';

-- Write a query that returns a list of rooms, reservation ID, and per-room cost for each reservation. The results should include all rooms, whether or not there is a reservation associated with the room.
-- select room.*, b.price from room
-- 	join basePrice b on b.id = room.basePriceId
--     order by room.roomNumber;

-- Write a query that returns all rooms with a capacity of three or more and that are reserved on any date in April 2023.
-- select room.* from room 
-- 	join reservation r on room.roomNumber = r.roomNumber
--     join standardOccupancy so on so.id = room.standardOccupancyId
--     join maximumOccupancy mo on mo.id = room.maximumOccupancyId
--     where (so.occupancyNumber >= 3 or mo.occupancyNumber >=3) and r.startDate like '%2023-04%';

-- Write a query that returns a list of all guest names and the number of reservations per guest, sorted starting with the guest with the most reservations and then by the guest's last name.
-- select g.*, count(r.guestId) from guest g 
-- 	join reservation r on r.guestId = g.id
--     group by g.lastName
--     order by count(r.guestId) desc, g.lastName;

-- Write a query that displays the name, address, and phone number of a guest based on their phone number. (Choose a phone number from the existing data.)
-- select * from guest
-- 	where phone = '(308)494-0198';