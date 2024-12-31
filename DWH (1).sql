CREATE TABLE Dim_Flight (
  Flight_ID int PRIMARY KEY,
  Flight_Number varchar(255),
  Airline_Name varchar(255),
  Flight_Source varchar(255),
  Flight_Destination varchar(255),
  Flight_Date date,
  Flight_Duration int,
  Aircraft_Type varchar(255)
);

CREATE TABLE Dim_Frequent_Flyer (
   Frequent_Flyer_ID int PRIMARY KEY,
    Namee varchar(255),
    Age int,
   Gender varchar(255),
   Status varchar(255),
   Membership_Since date,
   Total_Miles int,
   Frequent_Flyer_Segment  varchar(255),
   Country  varchar(255)
);

CREATE TABLE Dim_Customer_Care (
  Customer_Care_ID int PRIMARY KEY,
  Interaction_Type varchar(255),
  Problem_Severity varchar(255),
  Feedback_Date date,
  Resolution_Status varchar(255),
  Response_Time varchar(255),
  Channel varchar(255)
);

CREATE TABLE Dim_Reservation (
  Reservation_ID int PRIMARY KEY,
  Reservation_Channel varchar(255),
  Booking_Date date,
  Ticket_Class varchar(255),
  Reservation_Status varchar(255),
  Payment_Method varchar(255)
);

CREATE TABLE Dim_Fare (
  Fare_Basis varchar(255) PRIMARY KEY,
  Fare_Type varchar(255),
  Price number(10,2),
  Class_of_Service varchar(255),
  Seasonality varchar(255)
);


CREATE TABLE Factless_Table (
  Fact_Flight_ID int PRIMARY KEY,
  Flight_ID int,
  Frequent_Flyer_ID int,
  Customer_Care_ID int,
  Reservation_ID int,
  Fare_Basis varchar(255)
);

ALTER TABLE Factless_Table ADD CONSTRAINT fact_foreign FOREIGN KEY (Flight_ID) REFERENCES Dim_Flight (Flight_ID);

ALTER TABLE Factless_Table ADD  CONSTRAINT fact_flyer_foreign FOREIGN KEY (Frequent_Flyer_ID) REFERENCES Dim_Frequent_Flyer (Frequent_Flyer_ID);

ALTER TABLE Factless_Table ADD CONSTRAINT fact_care_foreign FOREIGN KEY (Customer_Care_ID) REFERENCES  Dim_Customer_Care (Customer_Care_ID);

ALTER TABLE Factless_Table ADD CONSTRAINT fact_Res_foreign  FOREIGN KEY (Reservation_ID) REFERENCES Dim_Reservation (Reservation_ID);

ALTER TABLE Factless_Table ADD CONSTRAINT fact_fare_foreign FOREIGN KEY (Fare_Basis) REFERENCES Dim_Fare (Fare_Basis);



-- insert into Dim_Flight
INSERT INTO Dim_Flight VALUES (1, 'AA101', 'American Airlines', 'New York', 'Los Angeles', TO_DATE('2023-12-01', 'YYYY-MM-DD'), 6, 'Boeing 737');
INSERT INTO Dim_Flight VALUES (2, 'BA202', 'British Airways', 'London', 'Dubai', TO_DATE('2023-12-05', 'YYYY-MM-DD'), 7, 'Airbus A380');
INSERT INTO Dim_Flight VALUES (3, 'DL303', 'Delta Airlines', 'Atlanta', 'Paris', TO_DATE('2023-12-07', 'YYYY-MM-DD'), 9, 'Boeing 777');
INSERT INTO Dim_Flight VALUES (4, 'UA404', 'United Airlines', 'San Francisco', 'Tokyo', TO_DATE('2023-12-10', 'YYYY-MM-DD'), 11, 'Boeing 787');
INSERT INTO Dim_Flight VALUES (5, 'AF505', 'Air France', 'Paris', 'New York', TO_DATE('2023-12-12', 'YYYY-MM-DD'), 8, 'Airbus A330');
INSERT INTO Dim_Flight VALUES (6, 'LH606', 'Lufthansa', 'Frankfurt', 'Singapore', TO_DATE('2023-12-15', 'YYYY-MM-DD'), 12, 'Boeing 747');
INSERT INTO Dim_Flight VALUES (7, 'EK707', 'Emirates', 'Dubai', 'London', TO_DATE('2023-12-18', 'YYYY-MM-DD'), 7, 'Airbus A380');
INSERT INTO Dim_Flight VALUES (8, 'QF808', 'Qantas', 'Sydney', 'New York', TO_DATE('2023-12-20', 'YYYY-MM-DD'), 15, 'Boeing 787');
INSERT INTO Dim_Flight VALUES (9, 'SQ909', 'Singapore Airlines', 'Singapore', 'Tokyo', TO_DATE('2023-12-22', 'YYYY-MM-DD'), 6, 'Boeing 737');
INSERT INTO Dim_Flight VALUES (10, 'AI1010', 'Air India', 'Mumbai', 'London', TO_DATE('2023-12-25', 'YYYY-MM-DD'), 9, 'Airbus A330');
INSERT INTO Dim_Flight VALUES (11, 'CX111', 'Cathay Pacific', 'Hong Kong', 'San Francisco', TO_DATE('2023-12-27', 'YYYY-MM-DD'), 14, 'Boeing 777');
INSERT INTO Dim_Flight VALUES (12, 'TK1212', 'Turkish Airlines', 'Istanbul', 'Berlin', TO_DATE('2023-12-30', 'YYYY-MM-DD'), 3, 'Airbus A321');
INSERT INTO Dim_Flight VALUES (13, 'AZ1313', 'Alitalia', 'Rome', 'Paris', TO_DATE('2024-01-02', 'YYYY-MM-DD'), 2, 'Airbus A320');
INSERT INTO Dim_Flight VALUES (14, 'VS1414', 'Virgin Atlantic', 'London', 'New York', TO_DATE('2024-01-05', 'YYYY-MM-DD'), 7, 'Boeing 787');
INSERT INTO Dim_Flight VALUES (15, 'IB1515', 'Iberia', 'Madrid', 'Lisbon', TO_DATE('2024-01-08', 'YYYY-MM-DD'), 5, 'Airbus A319');
INSERT INTO Dim_Flight VALUES (16, 'AC1616', 'Air Canada', 'Toronto', 'Vancouver', TO_DATE('2024-01-10', 'YYYY-MM-DD'), 5, 'Boeing 737');
INSERT INTO Dim_Flight VALUES (17, 'JL1717', 'Japan Airlines', 'Tokyo', 'Osaka', TO_DATE('2024-01-12', 'YYYY-MM-DD'), 1, 'Boeing 737');
INSERT INTO Dim_Flight VALUES (18, 'NZ1818', 'Air New Zealand', 'Auckland', 'Sydney', TO_DATE('2024-01-15', 'YYYY-MM-DD'), 3, 'Boeing 777');
INSERT INTO Dim_Flight VALUES (19, 'ET1919', 'Ethiopian Airlines', 'Addis Ababa', 'Dubai', TO_DATE('2024-01-18', 'YYYY-MM-DD'), 5, 'Airbus A320');
INSERT INTO Dim_Flight VALUES (20, 'QR2020', 'Qatar Airways', 'Doha', 'London', TO_DATE('2024-01-20', 'YYYY-MM-DD'), 7, 'Airbus A350');
INSERT INTO Dim_Flight VALUES (21, 'MH2121', 'Malaysia Airlines', 'Kuala Lumpur', 'Tokyo', TO_DATE('2024-01-23', 'YYYY-MM-DD'), 7, 'Boeing 777');
INSERT INTO Dim_Flight VALUES (22, 'KE2222', 'Korean Air', 'Seoul', 'Los Angeles', TO_DATE('2024-01-25', 'YYYY-MM-DD'), 11, 'Boeing 787');
INSERT INTO Dim_Flight VALUES (23, 'EY2323', 'Etihad Airways', 'Abu Dhabi', 'Paris', TO_DATE('2024-01-28', 'YYYY-MM-DD'), 8, 'Boeing 787');
INSERT INTO Dim_Flight VALUES (24, 'SA2424', 'South African Airways', 'Johannesburg', 'Cape Town', TO_DATE('2024-01-30', 'YYYY-MM-DD'), 1, 'Airbus A320');
INSERT INTO Dim_Flight VALUES (25, 'SW2525', 'Swiss International Air Lines', 'Zurich', 'Vienna', TO_DATE('2024-02-01', 'YYYY-MM-DD'), 1, 'Airbus A220');

-- insert into Dim_Frequent_Flyer
INSERT INTO Dim_Frequent_Flyer VALUES (1, 'John Doe', 35, 'Male', 'Gold', TO_DATE('2015-03-01', 'YYYY-MM-DD'), 120000, 'Business', 'USA');
INSERT INTO Dim_Frequent_Flyer VALUES (2, 'Jane Smith', 28, 'Female', 'Platinum', TO_DATE('2018-05-15', 'YYYY-MM-DD'), 150000, 'First', 'Canada');
INSERT INTO Dim_Frequent_Flyer VALUES (3, 'Carlos Gonzalez', 42, 'Male', 'Gold', TO_DATE('2010-07-10', 'YYYY-MM-DD'), 135000, 'Economy', 'Mexico');
INSERT INTO Dim_Frequent_Flyer VALUES (4, 'Aisha Ahmed', 30, 'Female', 'Silver', TO_DATE('2020-01-20', 'YYYY-MM-DD'), 50000, 'Economy', 'UAE');
INSERT INTO Dim_Frequent_Flyer VALUES (5, 'Wang Wei', 38, 'Male', 'Platinum', TO_DATE('2012-09-12', 'YYYY-MM-DD'), 180000, 'Business', 'China');
INSERT INTO Dim_Frequent_Flyer VALUES (6, 'Emily Brown', 27, 'Female', 'Bronze', TO_DATE('2022-06-05', 'YYYY-MM-DD'), 30000, 'Economy', 'UK');
INSERT INTO Dim_Frequent_Flyer VALUES (7, 'Ravi Kumar', 45, 'Male', 'Gold', TO_DATE('2010-11-22', 'YYYY-MM-DD'), 110000, 'Business', 'India');
INSERT INTO Dim_Frequent_Flyer VALUES (8, 'Sophia Lee', 33, 'Female', 'Silver', TO_DATE('2019-03-18', 'YYYY-MM-DD'), 75000, 'Economy', 'South Korea');
INSERT INTO Dim_Frequent_Flyer VALUES (9, 'David Johnson', 40, 'Male', 'Platinum', TO_DATE('2013-10-08', 'YYYY-MM-DD'), 200000, 'First', 'USA');
INSERT INTO Dim_Frequent_Flyer VALUES (10, 'Maria Garcia', 36, 'Female', 'Gold', TO_DATE('2017-02-25', 'YYYY-MM-DD'), 120000, 'Business', 'Spain');
INSERT INTO Dim_Frequent_Flyer VALUES (11, 'Ahmed Khan', 50, 'Male', 'Gold', TO_DATE('2008-12-19', 'YYYY-MM-DD'), 140000, 'Business', 'Pakistan');
INSERT INTO Dim_Frequent_Flyer VALUES (12, 'Laura Wilson', 29, 'Female', 'Bronze', TO_DATE('2021-08-13', 'YYYY-MM-DD'), 25000, 'Economy', 'Australia');
INSERT INTO Dim_Frequent_Flyer VALUES (13, 'Ali Hassan', 41, 'Male', 'Silver', TO_DATE('2016-05-09', 'YYYY-MM-DD'), 85000, 'Economy', 'Egypt');
INSERT INTO Dim_Frequent_Flyer VALUES (14, 'Chloe Martinez', 31, 'Female', 'Gold', TO_DATE('2014-09-16', 'YYYY-MM-DD'), 115000, 'Business', 'Argentina');
INSERT INTO Dim_Frequent_Flyer VALUES (15, 'Liam Davis', 47, 'Male', 'Platinum', TO_DATE('2009-04-30', 'YYYY-MM-DD'), 195000, 'First', 'USA');
INSERT INTO Dim_Frequent_Flyer VALUES (16, 'Olivia Harris', 34, 'Female', 'Gold', TO_DATE('2011-07-02', 'YYYY-MM-DD'), 125000, 'Business', 'Canada');
INSERT INTO Dim_Frequent_Flyer VALUES (17, 'Benjamin Thomas', 39, 'Male', 'Silver', TO_DATE('2018-11-04', 'YYYY-MM-DD'), 70000, 'Economy', 'UK');
INSERT INTO Dim_Frequent_Flyer VALUES (18, 'Mei Chen', 25, 'Female', 'Bronze', TO_DATE('2023-01-19', 'YYYY-MM-DD'), 15000, 'Economy', 'China');
INSERT INTO Dim_Frequent_Flyer VALUES (19, 'Ethan Williams', 46, 'Male', 'Gold', TO_DATE('2007-03-15', 'YYYY-MM-DD'), 130000, 'Business', 'Australia');
INSERT INTO Dim_Frequent_Flyer VALUES (20, 'Mia Robinson', 32, 'Female', 'Platinum', TO_DATE('2013-06-24', 'YYYY-MM-DD'), 160000, 'First', 'USA');
INSERT INTO Dim_Frequent_Flyer VALUES (21, 'Lucas White', 48, 'Male', 'Silver', TO_DATE('2015-12-01', 'YYYY-MM-DD'), 90000, 'Economy', 'South Africa');
INSERT INTO Dim_Frequent_Flyer VALUES (22, 'Emma Green', 26, 'Female', 'Bronze', TO_DATE('2021-04-08', 'YYYY-MM-DD'), 20000, 'Economy', 'New Zealand');
INSERT INTO Dim_Frequent_Flyer VALUES (23, 'Daniel Walker', 37, 'Male', 'Gold', TO_DATE('2016-09-11', 'YYYY-MM-DD'), 110000, 'Business', 'USA');
INSERT INTO Dim_Frequent_Flyer VALUES (24, 'Ella Young', 30, 'Female', 'Silver', TO_DATE('2019-02-27', 'YYYY-MM-DD'), 65000, 'Economy', 'Singapore');
INSERT INTO Dim_Frequent_Flyer VALUES (25, 'Jack King', 44, 'Male', 'Platinum', TO_DATE('2010-05-20', 'YYYY-MM-DD'), 175000, 'First', 'UK');


-- insert into Dim_Customer_Care
INSERT INTO Dim_Customer_Care VALUES (1, 'Technical Support', 'High', TO_DATE('2023-12-01', 'YYYY-MM-DD'), 'Resolved', '2 hours', 'Phone');
INSERT INTO Dim_Customer_Care  VALUES (2, 'Billing Issue', 'Medium', TO_DATE('2023-12-02', 'YYYY-MM-DD'), 'Pending', '1 hour', 'Email');
INSERT INTO Dim_Customer_Care VALUES (3, 'Account Access', 'Low', TO_DATE('2023-12-03', 'YYYY-MM-DD'), 'Resolved', '3 hours', 'Chat');
INSERT INTO Dim_Customer_Care VALUES (4, 'General Inquiry', 'Low', TO_DATE('2023-12-04', 'YYYY-MM-DD'), 'Unresolved', '30 minutes', 'Phone');

INSERT INTO Dim_Customer_Care VALUES (5, 'Technical Support', 'High', TO_DATE('2023-12-05', 'YYYY-MM-DD'), 'Resolved', '5 hours', 'Email');

INSERT INTO Dim_Customer_Care VALUES (6, 'Order Issue', 'Medium', TO_DATE('2023-12-06', 'YYYY-MM-DD'), 'Unresolved', '4 hours', 'Phone');

INSERT INTO Dim_Customer_Care VALUES (7, 'Technical Support', 'High', TO_DATE('2023-12-07', 'YYYY-MM-DD'), 'Resolved', '45 minutes', 'Chat');

INSERT INTO Dim_Customer_Care  VALUES (8, 'General Inquiry', 'Low', TO_DATE('2023-12-08', 'YYYY-MM-DD'), 'Resolved', '2 hours', 'Email');

INSERT INTO Dim_Customer_Care VALUES (9, 'Billing Issue', 'Medium', TO_DATE('2023-12-09', 'YYYY-MM-DD'), 'Unresolved', '6 hours', 'Phone');

INSERT INTO Dim_Customer_Care VALUES (10, 'Account Access', 'Low', TO_DATE('2023-12-10', 'YYYY-MM-DD'), 'Pending', '1 hour', 'Chat');

INSERT INTO Dim_Customer_Care VALUES (11, 'Technical Support', 'High', TO_DATE('2023-12-11', 'YYYY-MM-DD'), 'Unresolved', '3.5 hours', 'Email');

INSERT INTO Dim_Customer_Care VALUES (12, 'Order Issue', 'Medium', TO_DATE('2023-12-12', 'YYYY-MM-DD'), 'Resolved', '2.5 hours', 'Phone');

INSERT INTO Dim_Customer_Care VALUES (13, 'General Inquiry', 'Low', TO_DATE('2023-12-13', 'YYYY-MM-DD'), 'Unresolved', '15 minutes', 'Email');

INSERT INTO Dim_Customer_Care VALUES (14, 'Technical Support', 'High', TO_DATE('2023-12-14', 'YYYY-MM-DD'), 'Resolved', '4 hours', 'Chat');

INSERT INTO Dim_Customer_Care VALUES (15, 'Account Access', 'Medium', TO_DATE('2023-12-15', 'YYYY-MM-DD'), 'Unresolved', '5 hours', 'Phone');

INSERT INTO Dim_Customer_Care VALUES (16, 'Order Issue', 'Low', TO_DATE('2023-12-16', 'YYYY-MM-DD'), 'Resolved', '2 hours', 'Email');

INSERT INTO Dim_Customer_Care VALUES (17, 'Technical Support', 'High', TO_DATE('2023-12-17', 'YYYY-MM-DD'), 'Resolved', '4.5 hours', 'Phone');

INSERT INTO Dim_Customer_Care VALUES (18, 'Billing Issue', 'Medium', TO_DATE('2023-12-18', 'YYYY-MM-DD'), 'Resolved', '1 hour', 'Chat');

INSERT INTO Dim_Customer_Care VALUES (19, 'Account Access', 'Low', TO_DATE('2023-12-19', 'YYYY-MM-DD'), 'Pending', '2 hours', 'Email');

INSERT INTO Dim_Customer_Care VALUES (20, 'General Inquiry', 'Low', TO_DATE('2023-12-20', 'YYYY-MM-DD'), 'Unresolved', '3 hours', 'Phone');

INSERT INTO Dim_Customer_Care  VALUES (21, 'Technical Support', 'High', TO_DATE('2023-12-21', 'YYYY-MM-DD'), 'Resolved', '2.5 hours', 'Email');

INSERT INTO Dim_Customer_Care VALUES (22, 'Order Issue', 'Medium', TO_DATE('2023-12-22', 'YYYY-MM-DD'), 'Unresolved', '6 hours', 'Chat');

INSERT INTO Dim_Customer_Care VALUES (23, 'Billing Issue', 'Low', TO_DATE('2023-12-23', 'YYYY-MM-DD'), 'Resolved', '1.25 hours', 'Phone');

INSERT INTO Dim_Customer_Care VALUES (24, 'Account Access', 'High', TO_DATE('2023-12-24', 'YYYY-MM-DD'), 'Unresolved', '2 hours', 'Email');

INSERT INTO Dim_Customer_Care VALUES (25, 'General Inquiry', 'Medium', TO_DATE('2023-12-25', 'YYYY-MM-DD'), 'Resolved', '1.5 hours', 'Chat');


-- insert into Dim_Reservation
INSERT INTO Dim_Reservation VALUES (1, 'Online', TO_DATE('2023-12-01', 'YYYY-MM-DD'), 'Economy', 'Confirmed', 'Credit Card');
 
INSERT INTO Dim_Reservation VALUES (2, 'Travel Agent', TO_DATE('2023-12-02', 'YYYY-MM-DD'), 'Business', 'Pending', 'Debit Card');

INSERT INTO Dim_Reservation VALUES (3, 'Online', TO_DATE('2023-12-03', 'YYYY-MM-DD'), 'Economy', 'Confirmed', 'PayPal');

INSERT INTO Dim_Reservation VALUES (4, 'Phone', TO_DATE('2023-12-04', 'YYYY-MM-DD'), 'First Class', 'Cancelled', 'Credit Card');

INSERT INTO Dim_Reservation VALUES (5, 'Online', TO_DATE('2023-12-05', 'YYYY-MM-DD'), 'Business', 'Confirmed', 'Debit Card');

INSERT INTO Dim_Reservation VALUES (6, 'Travel Agent', TO_DATE('2023-12-06', 'YYYY-MM-DD'), 'Economy', 'Confirmed', 'Credit Card');

INSERT INTO Dim_Reservation VALUES (7, 'Phone', TO_DATE('2023-12-07', 'YYYY-MM-DD'), 'First Class', 'Pending', 'Cash');

INSERT INTO Dim_Reservation VALUES (8, 'Online', TO_DATE('2023-12-08', 'YYYY-MM-DD'), 'Economy', 'Cancelled', 'PayPal');

INSERT INTO Dim_Reservation VALUES (9, 'Travel Agent', TO_DATE('2023-12-09', 'YYYY-MM-DD'), 'Business', 'Confirmed', 'Credit Card');

INSERT INTO Dim_Reservation VALUES (10, 'Phone', TO_DATE('2023-12-10', 'YYYY-MM-DD'), 'First Class', 'Confirmed', 'Debit Card');

INSERT INTO Dim_Reservation VALUES (11, 'Online', TO_DATE('2023-12-11', 'YYYY-MM-DD'), 'Economy', 'Pending', 'Credit Card');

INSERT INTO Dim_Reservation VALUES (12, 'Travel Agent', TO_DATE('2023-12-12', 'YYYY-MM-DD'), 'Business', 'Cancelled', 'Cash');

INSERT INTO Dim_Reservation VALUES (13, 'Phone', TO_DATE('2023-12-13', 'YYYY-MM-DD'), 'Economy', 'Confirmed', 'Debit Card');

INSERT INTO Dim_Reservation VALUES (14, 'Online', TO_DATE('2023-12-14', 'YYYY-MM-DD'), 'First Class', 'Pending', 'PayPal');

INSERT INTO Dim_Reservation VALUES (15, 'Travel Agent', TO_DATE('2023-12-15', 'YYYY-MM-DD'), 'Business', 'Confirmed', 'Credit Card');

INSERT INTO Dim_Reservation VALUES (16, 'Phone', TO_DATE('2023-12-16', 'YYYY-MM-DD'), 'Economy', 'Confirmed', 'Cash');

INSERT INTO Dim_Reservation VALUES (17, 'Online', TO_DATE('2023-12-17', 'YYYY-MM-DD'), 'First Class', 'Cancelled', 'Credit Card');

INSERT INTO Dim_Reservation VALUES (18, 'Travel Agent', TO_DATE('2023-12-18', 'YYYY-MM-DD'), 'Business', 'Pending', 'PayPal');

INSERT INTO Dim_Reservation VALUES (19, 'Phone', TO_DATE('2023-12-19', 'YYYY-MM-DD'), 'Economy', 'Cancelled', 'Debit Card');

INSERT INTO Dim_Reservation VALUES (20, 'Online', TO_DATE('2023-12-20', 'YYYY-MM-DD'), 'Business', 'Confirmed', 'Credit Card');

INSERT INTO Dim_Reservation VALUES (21, 'Travel Agent', TO_DATE('2023-12-21', 'YYYY-MM-DD'), 'Economy', 'Pending', 'Cash');

INSERT INTO Dim_Reservation VALUES (22, 'Phone', TO_DATE('2023-12-22', 'YYYY-MM-DD'), 'First Class', 'Confirmed', 'Credit Card');

INSERT INTO Dim_Reservation VALUES (23, 'Online', TO_DATE('2023-12-23', 'YYYY-MM-DD'), 'Business', 'Cancelled', 'PayPal');

INSERT INTO Dim_Reservation VALUES (24, 'Travel Agent', TO_DATE('2023-12-24', 'YYYY-MM-DD'), 'Economy', 'Confirmed', 'Debit Card');

INSERT INTO Dim_Reservation VALUES (25, 'Phone', TO_DATE('2023-12-25', 'YYYY-MM-DD'), 'Business', 'Pending', 'Credit Card');


-- insert into Dim_Fare
INSERT INTO Dim_Fare VALUES ('FB001', 'Discount', 350.5, 'Economy Class', 'Low Season');
INSERT INTO Dim_Fare VALUES ('FB002', 'Regular', 1200, 'Business Class', 'High Season');
INSERT INTO Dim_Fare VALUES ('FB003', 'Corporate', 2200.5, 'First Class', 'Peak Season');
INSERT INTO Dim_Fare VALUES ('FB004', 'Discount', 300, 'Economy Class', 'Off-Peak Season');
INSERT INTO Dim_Fare VALUES ('FB005', 'Regular', 1500, 'Business Class', 'Low Season');
INSERT INTO Dim_Fare VALUES ('FB006', 'Corporate', 2500, 'First Class', 'High Season');
INSERT INTO Dim_Fare VALUES ('FB007', 'Discount', 275, 'Economy Class', 'Peak Season');
INSERT INTO Dim_Fare VALUES ('FB008', 'Regular', 1400, 'Business Class', 'Off-Peak Season');
INSERT INTO Dim_Fare VALUES ('FB009', 'Corporate', 2600, 'First Class', 'Peak Season');
INSERT INTO Dim_Fare VALUES ('FB010', 'Discount', 320, 'Economy Class', 'High Season');
INSERT INTO Dim_Fare VALUES ('FB011', 'Regular', 1100, 'Business Class', 'Low Season');
INSERT INTO Dim_Fare VALUES ('FB012', 'Corporate', 2100.5, 'First Class', 'Off-Peak Season');
INSERT INTO Dim_Fare VALUES ('FB013', 'Discount', 350, 'Economy Class', 'Low Season');
INSERT INTO Dim_Fare VALUES ('FB014', 'Regular', 1250, 'Business Class', 'High Season');
INSERT INTO Dim_Fare VALUES ('FB015', 'Corporate', 2300, 'First Class', 'Peak Season');
INSERT INTO Dim_Fare VALUES ('FB016', 'Discount', 290, 'Economy Class', 'Off-Peak Season');
INSERT INTO Dim_Fare VALUES ('FB017', 'Regular', 1600.5, 'Business Class', 'Low Season');
INSERT INTO Dim_Fare VALUES ('FB018', 'Corporate', 2400, 'First Class', 'High Season');
INSERT INTO Dim_Fare VALUES ('FB019', 'Discount', 310, 'Economy Class', 'Peak Season');
INSERT INTO Dim_Fare VALUES ('FB020', 'Regular', 1300, 'Business Class', 'Off-Peak Season');
INSERT INTO Dim_Fare VALUES ('FB021', 'Corporate', 2000.75, 'First Class', 'Low Season');
INSERT INTO Dim_Fare VALUES ('FB022', 'Discount', 340, 'Economy Class', 'High Season');
INSERT INTO Dim_Fare VALUES ('FB023', 'Regular', 1150, 'Business Class', 'Peak Season');
INSERT INTO Dim_Fare VALUES ('FB024', 'Corporate', 2150.5, 'First Class', 'Off-Peak Season');
INSERT INTO Dim_Fare VALUES ('FB025', 'Discount', 275, 'Economy Class', 'Low Season');
INSERT INTO Dim_Fare VALUES ('FB026', 'Discount',  275.5, 'Economy Class', 'Low Season');
INSERT INTO Dim_Fare VALUES ('FB027', 'Discount', 1300.5, 'Economy Class', 'Off-Peak Season');


-- insert into Factless_Table
INSERT INTO Factless_Table VALUES (1, 25, 14, 1, 11, 'FB013');
INSERT INTO Factless_Table VALUES (2, 18, 13, 12, 12, 'FB002');
INSERT INTO Factless_Table VALUES (3, 13, 11, 23, 13, 'FB009');
INSERT INTO Factless_Table VALUES (4, 10, 19, 14, 4, 'FB004');
INSERT INTO Factless_Table VALUES (5, 9, 20, 5, 15, 'FB005');
INSERT INTO Factless_Table VALUES (6, 7, 23, 16, 6, 'FB008');
INSERT INTO Factless_Table VALUES (7, 13, 12, 17, 17, 'FB007');
INSERT INTO Factless_Table VALUES (8, 11, 10, 8, 18, 'FB006');
INSERT INTO Factless_Table VALUES (9, 19, 8, 19, 9, 'FB013');
INSERT INTO Factless_Table VALUES (10, 21, 7, 10, 10, 'FB010');
INSERT INTO Factless_Table VALUES (11, 5, 6, 21, 11, 'FB014');
INSERT INTO Factless_Table VALUES (12, 9, 21, 22, 2, 'FB019');
INSERT INTO Factless_Table VALUES (13, 17, 19, 14, 13, 'FB001');
INSERT INTO Factless_Table VALUES (14, 17, 20, 13, 4, 'FB011');
INSERT INTO Factless_Table VALUES (15, 14, 19, 25, 15, 'FB025');
INSERT INTO Factless_Table VALUES (16, 17, 15, 16, 16, 'FB022');
INSERT INTO Factless_Table VALUES (17, 2, 17, 18, 7, 'FB017');
INSERT INTO Factless_Table VALUES (18, 1, 15, 13, 8, 'FB018');
INSERT INTO Factless_Table VALUES (19, 1, 17, 23, 19, 'FB024');
INSERT INTO Factless_Table VALUES (20, 11, 18, 23, 20, 'FB020');
INSERT INTO Factless_Table VALUES (21, 10, 21, 21, 1, 'FB021');
INSERT INTO Factless_Table VALUES (22, 18, 24, 23, 22, 'FB022');
INSERT INTO Factless_Table VALUES (23, 8, 25, 3, 13, 'FB023');
INSERT INTO Factless_Table VALUES (24, 6, 14, 24, 23, 'FB019');
INSERT INTO Factless_Table VALUES (25, 22, 13, 25, 25, 'FB025');

