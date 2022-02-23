
# Hotel Reservation
This is a relational database project for storing/managing hotel rooms, guests & reservation information.


## Details
- Entity Relationship Diagram
![App Screenshot](https://github.com/hoon0661/HotelReservation/blob/main/hotelReservationERD.png?raw=true)

- Each room has different amenities, guest capacities, ADA accessible and price.
- Reservation can include multiple rooms by the same guest for the same dates.
- Data used in this project is not real data, all of them are arbitrary values.
- You can find database construction code as well as some queries for testing in this repository.


## Technology Used

- MySQL 

## Lessons Learned

- My initial approach to create this database was to create room info with all amenities in the table. But soon I figured out that it was hard to manage all different amenities with different room types and required redundant codes. To solve it, I had to normalize data in smaller pieces so that write some codes for entity relationship (such as using bridge table) to simplify the process.   



