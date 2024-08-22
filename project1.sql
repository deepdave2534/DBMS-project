create table Type(
    Type_name varchar(10),
    primary key (Type_name)
);

use db1;

create table Vehicle2(
    Vehicle_Name varchar(50),
    passengers int,
    cargo_Weight int,
    primary key (Vehicle_Name)
);

create table Vehicle1(
    Number_Plate varchar(20),
    Type_name varchar(10),
    Vehicle_Name varchar(50),
    primary key (Number_Plate),
    foreign key (Type_name) references Type(Type_name),
    foreign key (Vehicle_Name) references Vehicle2(Vehicle_Name)
);

create table Drivers(
    EmpID varchar(20),
    first_Name varchar(50),
    last_Name varchar(50),
    Driver_PhoneNo varchar(10),
    License_Number varchar(50),
    primary key (EmpID)
);

create table Driver_Capability(
    EmpID varchar(20),
    Type_Name varchar(10),
    primary key (EmpID,Type_Name),
    foreign key (EmpID) references Drivers(EmpID),
    foreign key (Type_Name) references Type(Type_Name)
);

create table passenger_details(
    passenger_ID varchar(20),
    first_PName varchar(50),
    last_PName varchar(50),
    PAddress varchar(100),
    PEmail varchar(50),
    P_PhoneNo varchar(10),
    primary key (passenger_ID)
);

create table Rentals(
    Rental_ID varchar(20),
    License_Number varchar(10),
    Start_datetime TIMESTAMP,
    end_datetime TIMESTAMP,
    Number_Plate varchar(20),
    passenger_ID varchar(20),
    rentalPrice int,
    primary key (Rental_ID),
    foreign key (Number_Plate) references Vehicle1(Number_Plate),
    foreign key (passenger_ID) references passenger_details(passenger_ID)
);

create table Bookings(
    Booking_ID varchar(20),
    price int,
    drop_point varchar(100),
    pickup_point varchar(100),
    pickup_time TIMESTAMP,
    drop_time TIMESTAMP,
    EmpID varchar(20),
    Number_Plate varchar(20),
    passenger_ID varchar(20),
    primary key (Booking_ID),
    foreign key (EmpID) references Drivers(EmpID),
    foreign key (Number_Plate) references Vehicle1(Number_Plate),
    foreign key (passenger_ID) references passenger_details(passenger_ID)
);

use db1;

insert into type values ('CAR');
insert into type values ('BIKE');
insert into type values ('BUS');
insert into type values ('TRUCK');

select * from type;

insert into Drivers values ('XDrHBxf','Lavanya','Mhasalkar','7118064570','2789465392');
insert into Drivers values ('Uc6qx6j','Niketa','Korrapati','7978238910','2421306863');
insert into Drivers values ('hrmGruC','Reena','Begam','5044083378','8290275170');
insert into Drivers values ('txmm3Hb','Sushil','Begum','9307445494','9973891437');
insert into Drivers values ('9YpjE6D','Kavi','Ahmed','6199120362','0389739116');
insert into Drivers values ('jvUw39z','Madhukar','Sharma','0694613377','2300781328');
insert into Drivers values ('KNuq2my','Abhay','Gupta','5725059497','1939401419');
insert into Drivers values ('j3M09GF','Mitul','Das','2538137786','2666425926');
insert into Drivers values ('hMdQc8i','Pratibha','Chaudhri','4475010510','0719078086');
insert into Drivers values ('2Gfuy1r','Nilofar','Jain','3107754692','9005285646');

select * from drivers;

insert into Vehicle2 values('Tata Punch',4,500);
insert into Vehicle2 values('Hyundai Creta',4,550);
insert into Vehicle2 values('Tata Nexon',4,500);
insert into Vehicle2 values('Mahindra Scorpio',4,600);
insert into Vehicle2 values('Toyota Fortuner',4,700);
insert into Vehicle2 values('Royal Enfield Classic 350',2,0);
insert into Vehicle2 values('Royal Enfield Hunter 350',2,0);
insert into Vehicle2 values('KTM Duke 390',2,0);
insert into Vehicle2 values('Hero Splendor Plus',2,0);
insert into Vehicle2 values('Honda Activa 6G',2,0);
insert into Vehicle2 values('Tata Starbus Prime LP', 41,6000);
insert into Vehicle2 values('Eicher 3016 M LPO',34,5000);
insert into Vehicle2 values('Eicher Pro 3010 L CNG',45,5500);
insert into Vehicle2 values('Ashok Leyland Oyster 5200',42,6000);

select * from vehicle2;

insert into passenger_details values ('W6hsmEv', 'Nithya', 'Kshitij', 'Sathenapalli,Warangal', 'nk2233@gmail.com', '9879832176');
insert into passenger_details values ('cIHDE44', 'Prabodh', 'Chandrakanta', 'Wadepally,Hanamkonda', 'pcgg11@gmail.com', '7897654302');
insert into passenger_details values ('Vorgp7Q', 'Shobha', ' Mala', 'Gachibowli,Hyderabad', 'smd34@gmail.com', '8388456710');
insert into passenger_details values ('zunv6b8', 'Sanjeet', 'Gayathri', 'Bachupally,Hyderabad', 'iamsang123@gmail.com', '8761412305');
insert into passenger_details values ('9Zes4sA', 'Lalitha', 'Mohini', 'Arsapally,Nizambad', 'lmohini100@gmail.com', '7689012311');
insert into passenger_details values ('pc635mI', 'Anjali', 'Viraj', 'HiTech,Hyderabad', 'anjavi111@gmail.com', '6565787901');
insert into passenger_details values ('W6GAJuX', 'Namrata', 'Madhuri', 'AnandNagar,Nizambad', 'xnmx@gmail.com', '9810298776');
insert into passenger_details values ('N7Q5kkX', 'Sandhya', 'Patel', 'Sathenapalli,Warangal', 'spdfgg@gmail.com', '6789120345');
insert into passenger_details values ('SIjr38V', 'Abhilash', 'Ashok', 'HiTech,Hyderabad', 'aace22@gmail.com', '8612340987');
insert into passenger_details values ('LgT59K2', 'Sumati', 'Jain', 'Bachupally,Hyderabad', 'sjisepic360@gmail.com', '8388412176');

select * from passenger_details;

INSERT INTO Vehicle1 values ('TS18FV9913', 'CAR', 'Tata Punch');
insert into Vehicle1 values ('TS84FV0161' ,'BIKE','KTM Duke 390');
insert into Vehicle1 values ('TS02FV4244','CAR','Mahindra Scorpio');
insert into Vehicle1 values ('TS82FV9299','CAR','Tata Nexon');
insert into Vehicle1 values ('TS33FV7765','BIKE','Royal Enfield Hunter 350');
insert into Vehicle1 values ('TS64FV2105','BUS','Eicher Pro 3010 L CNG');
insert into Vehicle1 values ('TS81FV0563','CAR','Mahindra Scorpio');
insert into Vehicle1 values ('TS29FV7526','CAR','Toyota Fortuner');
insert into Vehicle1 values ('TS55FV4356','BUS','Ashok Leyland Oyster 5200');
insert into Vehicle1 values ('TS30FV1973','BUS','Ashok Leyland Oyster 5200');

select * from vehicle1;

insert into bookings values ('ID9YD8Y', 1500, 'Sathenapalli', 'HiTech', '2024-01-01 08:30:00', '2024-01-01 11:00:00', '2Gfuy1r', 'TS02FV4244', '9Zes4sA');
insert into bookings values ('DVHF06V', 1000, 'Bachupally', 'HiTech', '2024-02-01 09:30:00', '2024-02-01 13:00:00', '9YpjE6D', 'TS18FV9913', 'cIHDE44');
insert into bookings values ('T8DLP9Y', 800, 'Sathenapalli', 'Gachibowli', '2024-03-01 11:30:00', '2024-03-01 14:00:00', 'hMdQc8i', 'TS29FV7526', 'LgT59K2');
insert into bookings values ('F2L1MDB', 2500, 'Sathenapalli', 'HiTech', '2024-04-01 12:30:00', '2024-04-01 15:00:00', 'hrmGruC', 'TS30FV1973', 'N7Q5kkX');
insert into bookings values ('SID18HB', 3000, 'HiTech', 'Bachupally', '2024-05-01 13:30:00', '2024-05-01 17:00:00', 'j3M09GF', 'TS33FV7765', 'pc635mI');
insert into bookings values ('T8RH8KU', 500, 'Gachibowli', 'HiTech', '2024-06-01 08:30:00', '2024-06-01 10:00:00', 'jvUw39z', 'TS55FV4356', 'SIjr38V');
insert into bookings values ('P6Y6EE1', 1800, 'AnandNagar', 'HiTech', '2024-07-01 09:30:00', '2024-07-01 11:00:00', 'KNuq2my', 'TS64FV2105', 'Vorgp7Q');
insert into bookings values ('XPEROG4', 1200, 'HiTech', 'Bachupally', '2024-08-01 10:30:00', '2024-08-01 13:00:00', 'txmm3Hb', 'TS81FV0563', 'W6GAJuX');
insert into bookings values ('FOGR9ZM', 4000, 'Sathenapalli', 'Gachibowli', '2024-09-01 11:30:00', '2024-09-01 13:00:00', 'Uc6qx6j', 'TS82FV9299', 'W6hsmEv');
insert into bookings values ('U8Y56QE', 200, 'Bachupally', 'HiTech', '2024-10-01 12:30:00', '2024-10-01 14:00:00', 'XDrHBxf', 'TS84FV0161', 'zunv6b8');

select * from bookings;

insert into Rentals values('Cm7AT9X','1760715680','2024-01-07 09:00:00', '2024-01-08 09:00:00','TS64FV2105','W6hsmEv',3600);
insert into Rentals values('2UHRqWY','3491387072', '2024-01-15 12:00:00', '2024-01-20 9:00:00', 'TS81FV0563','SIjr38V',6000);
insert into Rentals values('Tz7TptT','5047687516', '2024-01-21 10:00:00', '2024-01-22 9:00:00', 'TS18FV9913','cIHDE44',2000);
insert into Rentals values('TjQ8RnD','2879107715', '2024-01-27 14:00:00', '2024-01-30 9:00:00', 'TS84FV0161','N7Q5kkX',2200);
insert into Rentals values('maMmGnS','7410963772', '2024-01-30 20:00:00', '2024-02-04 9:00:00', 'TS29FV7526','9Zes4sA',5000);
insert into Rentals values('VMc2EvB','0605930593', '2024-02-24 12:00:00', '2024-02-25 9:00:00', 'TS55FV4356','W6hsmEv',3000);
insert into Rentals values('qTGf8EN','3080016182', '2024-02-28 9:00:00', '2024-03-01 9:00:00', 'TS64FV2105','LgT59K2',3000);
insert into Rentals values('k6EDEtE','0261395656', '2024-03-04 9:00:00', '2024-03-10 9:00:00', 'TS84FV0161','SIjr38V',10000);
insert into Rentals values('ak1XUtF','9688722515', '2024-03-16 7:00:00', '2024-03-17 9:00:00', 'TS64FV2105','N7Q5kkX',3600);
insert into Rentals values('2mc8cg7','6226960318', '2024-03-27 5:00:00', '2024-03-30 9:00:00', 'TS33FV7765','cIHDE44',3000);

select * from rentals;

insert into Driver_Capability values ('2Gfuy1r', 'BIKE');
insert into Driver_Capability values ('9YpjE6D', 'BUS');
insert into Driver_Capability values ('hMdQc8i', 'CAR');
insert into Driver_Capability values ('hrmGruC', 'TRUCK');
insert into Driver_Capability values ('j3M09GF', 'CAR');
insert into Driver_Capability values ('jvUw39z', 'BIKE');
insert into Driver_Capability values ('KNuq2my', 'BUS');
insert into Driver_Capability values ('txmm3Hb', 'CAR');
insert into Driver_Capability values ('Uc6qx6j', 'BIKE');
insert into Driver_Capability values ('XDrHBxf', 'TRUCK');
insert into Driver_Capability values ('hMdQc8i', 'TRUCK');
insert into Driver_Capability values ('XDrHBxf', 'BIKE');
insert into Driver_Capability values ('9YpjE6D', 'CAR');
insert into Driver_Capability values ('j3M09GF', 'BUS');
insert into Driver_Capability values ('txmm3Hb', 'TRUCK');

select * from `db1`.`driver_capability`;

select * from passenger_details;

select * from vehicle1 where number_plate in
(select distinct number_plate from rentals);

select * from type where type_name in (select
distinct type_name from vehicle1);

select * from rentals where rentalprice >
(select avg(rentalprice) from rentals);

-- Retrieve bookings with driver details:
SELECT b.Booking_ID, b.price, b.drop_point, b.pickup_point, b.pickup_time, b.drop_time, d.EmpID, d.first_Name, d.last_Name
FROM Bookings b
JOIN Drivers d ON b.EmpID = d.EmpID;

-- Retrieve rentals with vehicle and passenger details:
SELECT r.Rental_ID, r.Start_datetime, r.end_datetime, v1.Number_Plate, v1.Vehicle_Name, p.passenger_ID, p.first_PName, p.last_PName
FROM Rentals r
JOIN Vehicle1 v1 ON r.Number_Plate = v1.Number_Plate
JOIN passenger_details p ON r.passenger_ID = p.passenger_ID;

-- Retrieve bookings with vehicle and driver capabilities:
SELECT b.Booking_ID, b.price, b.drop_point, b.pickup_point, b.pickup_time, b.drop_time, v1.Number_Plate, v1.Vehicle_Name, dc.Type_Name
FROM Bookings b
JOIN Vehicle1 v1 ON b.Number_Plate = v1.Number_Plate
JOIN Driver_Capability dc ON b.EmpID = dc.EmpID;

-- Retrieve rentals with driver and vehicle details
SELECT r.Rental_ID, r.Start_datetime, r.end_datetime, d.EmpID, d.first_Name, d.last_Name, v2.Vehicle_Name, v2.passengers, v2.cargo_Weight
FROM Rentals r
JOIN Drivers d ON r.License_Number = d.License_Number
JOIN Vehicle2 v2 ON r.Number_Plate = v2.Vehicle_Name;

-- Retrieve bookings with passenger and rental details
SELECT b.Booking_ID, b.price, b.drop_point, b.pickup_point, b.pickup_time, b.drop_time, p.passenger_ID, p.first_PName, p.last_PName, r.Rental_ID, r.rentalPrice
FROM Bookings b
JOIN passenger_details p ON b.passenger_ID = p.passenger_ID
JOIN Rentals r ON b.Booking_ID = r.Rental_ID;