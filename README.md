# Airline Database System
## Intro to Database Management System

### Executive Summary
### Business Scenario
As an introduction to the Airline Database Management System, let's explore how such a
system can help an airline streamline its processes, enhance customer service, and optimize its
overall performance. Our Airline Database Management System is a comprehensive solution
designed to store, manage, and process vast amounts of data related to flights, passengers,
reservations, aircraft, and employees.

According to ‘The effect of flight delay on customer loyalty intention: The moderating
role of emotion regulation, Journal of Hospitality and Tourism Management, Volume 47, June
2021, Pages 72-83’, the perceived wait time is positively related to feelings of anger and worry,
which in turn, negatively influence future loyalty intentions. So, in day's fast-paced aviation
industry, effective management of airline operations is crucial for success.

More so after the COVID-19 pandemic, database management remains crucial for the
recovery of the airline industry. Here are some ways in which effective database management
can continue to help the industry. As travel restrictions and passenger preferences continue to
change, airlines need to adapt their flight schedules accordingly. Our database management
system allows airlines to quickly update and modify flight schedules, accommodating changes in
demand, travel corridors, and regulatory requirements. In addition, this Database management
systems help airlines maintain comprehensive customer profiles, including travel history,
preferences, and loyalty program information. This data enables airlines to personalize services,
offer targeted promotions, and enhance customer satisfaction and loyalty. Finally, it can analyze
historical data and market trends to assist airlines in forecasting future passenger demand.

Finally, this system will allow us to plan our schedules, allocate resources (e.g., labor, technical
appliances, gate arrangements, etc.,), and optimize capacity to meet the evolving travel demands
effectively.

Three key areas
1. Revenue Management
2. Schedule Management
3. Customer Relationship Management

1) Aircraft Maintenance (Revenue Management/Schedule Management)
a) This business scenario shows aircraft_ID, Model, Age, Fuel_Usage, Storage,
Aircraft_type, and Maintenance_record of a flight that hasn’t had maintenance yet. This
scenario highlights which particular aircraft might need maintenance and getting older
than 5 years. As aircraft, there should be regular checkups at least once a year at least, not
having maintenance in a long time can lead to mechanic issues which can lead to delays.
In this one particular, there is only one craft that is more than 5 years old and might need
fixing.

b) Based on the database system and query created by the team, the company can identify
which specific aircraft type has incurred the most maintenance records as of today. The
result shows that Airbus319 has incurred 42 times maintenance while Airbus A330 has
only incurred 6 times maintenance. However, just the total number of maintenance
records does not provide the full picture of the current business circumstance of the
company. If we calculated the average maintenance records of each aircraft type, it gives
us a different interpretation. Airbus A330 is not the most efficient aircraft type for the
company since it has average maintenance records of 6 times compared to Boeing 777,
Airbus A380, and Airbus A321 which have incurred only half of Airbus A330’s
maintenance records. Obviously, Airbus A319 is the one that has been consuming the
company’s time and resources the most. Therefore, we could suggest to the company that
when leasing or purchasing new aircraft in the future, the company should always
consider prioritizing Boeing 777, Airbus A380, and Airbus A321 over Airbus A330 or
Airbus A319.

2) Seat Occupancy (Schedule Management)
a) Analyzing seat occupancy on different routes could help the company to identify routes
with high demand for seats and adjust pricing, capacity, or flight frequency.
For example, suppose the airline company operates flights between New York City (JFK)
and Los Angeles (LAX). They have noticed that during the summer season, many flights
on this route have high seat occupancy rates. By running the query, the company can
identify which specific flights on this route have more than 100 occupied seats.
Based on this information, the company can take several actions to optimize revenue by
increasing capacity, scheduling extra flights, or increasing ticket prices.
3) Stop Transfers & Route (Schedule Management)
a) The query output below shows that the route between ‘Charlotte Douglas International
Airport - Ontario International Airport’ and ‘LaGuardia Airport - Harry Reid
International Airport’ have the longest average processing time by stop. This prolonged
processing time might be due to various reasons such as unexpected severe weather
conditions, HR management issues (e.g., pilot or cabin crew limitations and turnovers),
technical problems, dealing with unsatisfactory passengers’ needs, air traffic control, and
airport congestion.Therefore, our result suggests that the company should thoroughly
investigate what is causing the processing time from those two air routes longer than the
other airports, and cooperate with them to resolve the delays and unexpected problems
and furthermore establish sufficient support resources (e.g., labor, technical appliances,
gate arrangements, etc.,) from those airports.
4) Profit (Revenue Management)
a) Using the query, the company can identify the revenue generated from each booking and
the passenger who made the booking. The airline company can grab the information and
take the following actions to improve its profitability.
1) Identify high-value customers who frequently book tickets and generate high
revenue. Provide them with tailored services, such as priority boarding or special
offers.
2) Optimize pricing strategies, like providing more premium services to increase
revenue.
3) Improve marketing campaigns
By understanding customer preferences, the company can target specific groups of
customers with customized advertising more effectively.
5) Fuel Efficiency (Revenue Management)
a) Scenario highlights the average fuel usage and fuel cost for each aircraft type to
determine which aircrafts are using more fuel for more cost. This scenario combined with
the average age scenario can find the aircrafts that are getting old and not being efficient
with similar/ higher cost. This can help the airline to terminate using these aircrafts and
replace them with new aircrafts to boost efficiency as well as potentially cut down costs
in the long run.
b) Fuel expense is one of the significant operating costs of an airline company. We want to
identify the routes that are most fuel-intensive and most costly so the company can take
steps to improve its business.
Using the query "Top 5 routes with the highest fuel usage and fuel cost," the airline
company can identify inefficiency in their operations and take several actions to optimize
fuel usage and reduce costs.
1) Implement more fuel-efficient aircraft on high-demand routes
2) Optimize routes, such as choosing more direct routes or optimizing the speed to
reduce consumption
6) Employee Management (HR) (Schedule Management)
a) Based on the employee database provided by the company, our finding is that 6 routes out
of 15 routes are managed by more than 50% of part-time employees. Even though the
company can reduce costs for salaries, benefits, and other general and administrative
expenses and increase flexibility in the workforce, this could have potential drawbacks of
hiring less committed workers, unsatisfactory customer services due to the employees’
lack of airline business knowledge, and inconsistent work process when they left the
work. Therefore, in order to prevent these potential issues, our team suggests adding
more full-time personnel when there is a shortage or need.
b) Moreover, our result shows that half of the routes are currently managed by more than
50% of staff levels (associates or seniors). We admit that due to the high-turnover rate at
the manager level, some routes are not properly handled or are extremely in high demand
for the upper manager level who can monitor and resolve the issues in a timely manner.
Thus we recommend rotation programs for manager and upper-manager levels and
sufficient and advanced training programs for lower management.
7) Marketing (Customer Relationship Management)
a) The query above shows the frequent flyers’ information about who received discounts.
This information is used for marketing purposes and to analyze and gain a better
understanding of customer groups in order to create more suitable marketing promotions
for them. As an airline in the service industry, understanding customer groups is essential
to provide better services. Additionally, the airline company can use this information to
consider whether they need to do more marketing to attract younger group / nationality.
Based on their nationality, date of birth, and gender, the marketing team can propose
different target marketing proposals. For example, After analyzing highlights, there are
very few young people(low proportion) who choose the company, and the company can
launch activities to encourage college students to choose this company for graduation
trips. For instance, for Shawn Mendes who is born in August and Canadian male will
receive a discount on his birthday for a guy trip to las vegas whereas Michelle Yeoh who
is a November born and Malaysian Female might receive a promo code for a snowy
escape adventure in japan.
b) Scenario highlights the cancellation rate and overbooking rate lower than the expected
threshold to find customers or booking ID that are not abusing the cancellation/
overbooking system. These customers could be used to incentivise other customers by
rewarding them for not costing the airline which would return sales from new customers
as well as cut potential costs from overbooking/ cancellation issues.
ER Model using UML Notation
Relationship Sentences:
1. One Aircraft has one and only one energy efficiency
2. One Aircraft may fly on many routes.
3. One Route has many stops and transfers.
4. One Route has many booking infos.
5. Many Employees have access to many routes.
6. One Passenger generate many booking info
7. One Fare have many booking info
Converting the ERD to a Relational Model
1. Route(Route_ID, Departure_time, Arrival_time, Departure_airport, Destination_airport,
Ride_length, Flight_no, Weekdays, Aircraft_ID(fk))
2. Aircraft_EnergyEfficiency(Aircraft_ID(pk), Fuel_usage, Fuel_cost, Storage, Aircraft
_type, Seat, Model, Age, Maintenance_record)
3. Passenger(Passenger_ID, Passanger_name, Date_of_brith, Nationality, Gender,
Seat_info)
4. Stops/Transfers(Stop_ID, Route_ID(fk), Number_of _stops, Processing_time)
5. Employee(Employee_ID, First_name, Last_name, Middle_name, Title, Full-time,
Part-time)
6. Employee_acess_route (EmployeeId(fk), RouteID(fk))
7. Cabin_Crew(Employee_ID, Title, Full-time, Part-time)
8. Pilot(Employee_ID, Title, Captain pilot, Co-pilot)
9. Mechanic(Employee_ID, Title, Full_time, Part_time)
10. Booking_info(BookingID, Cancellation, Over_booking, Delays, Seat occupancy,
Total_no_of_seats, Payment,, Passengerid (fk), Route_ID(fk))
11. Fares (Booking_ID(fk), Amount, Additional_fees(upgrades/ features), Discount,
Frequent_flyer)
Normalization
Relation 1: Aircraft to Energy efficiency
Step 1:
Key : AircraftID
Step 2: Functional dependency:
AircraftID -> Fuel_usage, Fuel _cost, Storage, Aircraft _type, Seat, Model, Age,
Maintenance_record
Step 3: Partial Dependency:
No partial key dependency and thus transitive dependency:
Step 4: Transitive Dependency:
No Transitive Dependency
Checked, no more transitive, in 3rd NF
Step 5: non-key determines part of key? NO, in BCNF
Final relations include:
Aircraft(AircraftID, Fuel_usage, Fuel _cost, Storage, Aircraft _type, Seat, Model, Age,
Maintenance_record)
Relation 2: Aircraft to Route
Step 1: Key: AircraftID, Route_ID
Step 2: Functional dependency:
FD1: AircraftID, RouteID -> Fuel_usage, Fuel _cost, Storage, Aircraft _type, Seat, Model, Age,
Maintenance_record, Departure_time, Arrival_time, Departure_airport, Destination_airport,
Ride_length, Flight_no
FD 2: AircraftID -> Route_ID, Departure_time, Arrival_time, Departure_airport,
Destination_airport, Ride_length, Flight_no
Step 3: Partial key dependency?
Yes, AircraftID → Route_ID, Departure_time, Arrival_time, Departure_airport,
Destination_airport, Ride_length, Flight_no
Aircraft(AircraftID, Aircraft _type, Seat, Model, Age, Maintenance_record)
Step 4: Transitive Dependency:
No Transitive Dependency
Checked, no more transitive, in 3rd NF
Step 5: non-key determines part of key? NO, in BCNF
Final relations include:
Aircraft(AircraftID, Aircraft _type, Seat, Model, Age, Maintenance_record)
Relation 3: Route to Stop/Transfer
Step 1: Key: Route_ID, Stop_ID
Step 2:Functional dependency
FD1:Route_ID, Stop_ID ->Departure_time, Arrival_time, Departure_airport,
Destination_airport, Ride_length, Flight_no, Number_of _stops, Processing_time
FD2:Route_ID->Departure_time, Arrival_time, Departure_airport, Destination_airport,
Ride_length, Flight_no
Step 3: Partial Dependency?
Stop_ID ->Number_of _stops, Processing_time
Route_Stop(Route_ID,Stop_ID)
Route(Route_ID, Departure_time, Arrival_time, Departure_airport, Destination_airport,
Ride_length, Flight_no)
Stop(Stop_ID , Number_of _stops, Processing_time)
Step 4: Transitive Dependency?
No Transitive Dependency
Checked, no more transitive, in 3rd NF
Step 5: non-key determines part of key? NO, in BCNF
Final relations include:
Route_Stop(Route_ID,Stop_ID)
Route(Route_ID, Departure_time, Arrival_time, Departure_airport, Destination_airport,
Ride_length, Flight_no)
Stop(Stop_ID , Number_of _stops, Processing_time)
Relation 4: Route to Booking_info (1:M)
Step 1: Key: Route_ID, Booking_ID
Step 2:Functional dependency
FD1:Route_ID, Booking_ID ->Cancellation, Over_booking, Delays, Seat occupancy,
Total_no_of_seats, Payment, Departure_time, Arrival_time, Departure_airport,
Destination_airport, Ride_length, Flight_no
FD2: Route_ID -> Cancellation, Over_booking, Delays, Seat occupancy, Total_no_of_seats,
Payment
Step 3: Partial Dependency? Yes,
Route_ID -> Cancellation, Over_booking, Delays, Seat occupancy, Total_no_of_seats,
Payment
Route(Route_ID, Cancellation, Over_booking, Delays, Seat occupancy, Total_no_of_seats,
Payment)
Booking_Route(BookingID,Route_ID, Departure_time, Arrival_time, Departure_airport,
Destination_airport, Ride_length, Flight_no
)
Step 4: Transitive Dependency: (non-key attribute determine non-key attribute)
No, there is no a Transitive Dependency
Step 5:
Boyce-Codd normal form (BCNF): non-key determines part of key
No in BCNF
Final Relation
Route(Route_ID, Cancellation, Over_booking, Delays, Seat occupancy, Total_no_of_seats,
Payment)
Booking_Route(BookingID,Route_ID, Departure_time, Arrival_time, Departure_airport,
Destination_airport, Ride_length, Flight_no)
Relation 5: Employee to Route(N:M)
Step 1: Key: Route_ID, Employee_ID
Step 2:Functional dependency
FD1:Route_ID, Employee_ID ->Departure_time, Arrival_time, Departure_airport,
Destination_airport, Ride_length, Flight_no, First_name, Last_name, Middle_name, Title,
Full-time, Part-time
FD2: Route_ID -> First_name, Last_name, Middle_name, Title, Full-time, Part-time
Step 3: Partial Dependency? Yes, Route_ID -> First_name, Last_name, Middle_name, Title,
Full-time, Part-time
FD1:Route_ID, Employee_ID ->Departure_time, Arrival_time, Departure_airport,
Destination_airport, Ride_length, Flight_no, First_name, Last_name, Middle_name, Title,
Full-time, Part-time
Route(Route_ID, First_name, Last_name, Middle_name, Title, Full-time, Part-time)
Employee_acess_route(Route_ID, Employee_ID, Departure_time, Arrival_time,
Departure_airport, Destination_airport, Ride_length, Flight_no)
Step 4: Transitive Dependency?
No Transitive Dependency
Checked, no more transitive, in 3rd NF
Step 5: non-key determines part of key? NO, in BCNF
Final relations include:
Route(Route_ID, First_name, Last_name, Middle_name, Title, Full-time, Part-time)
Employee_acess_route(Route_ID, Employee_ID, Departure_time, Arrival_time,
Departure_airport, Destination_airport, Ride_length, Flight_no)
Relation 6: Passenger to Booking
Step 1: Key: Booking_ID, Passenger_ID
Step 2:Functional dependency?
FD1: Booking_ID, Passenger_ID → Passanger_name, Date_of_brith, Nationality, Gender,
Seat_info, Cancellation, Over_booking, Delays, Seat occupancy, Total_no_of_seats,
PaymentNo
Step 3: Partial Dependency?
No partial key dependency and thus transitive dependency:
Step 4: Transitive Dependency: (non-key attribute determine non-key attribute)
No, there is no a Transitive Dependency
Step 5:
Boyce-Codd normal form (BCNF): non-key determines part of key
No in BCNF
Final Relation
Booking_passenger(Passanger_name, Date_of_brith, Nationality, Gender, Seat_info,
Cancellation, Over_booking, Delays, Seat occupancy, Total_no_of_seats, Payment)
Relation 7: Booking to Fares
Step 1: Key: Booking_ID, BillingID
Step 2: Functional dependency?
FD1: Booking_ID, BillingID → Amount, Additional_fees(upgrades/ features), Discount,
Frequent_flyer, Cancellation, Over_booking, Delays, Seat occupancy, Total_no_of_seats,
Payment
FD2: Booking_ID → Amount, Additional_fees(upgrades/ features), Discount, Frequent_flyer
Step 3: Partial Dependency? Yes, Booking_ID → Amount, Additional_fees(upgrades/
features), Discount, Frequent_flyer
FD1: Booking_ID, BillingID → Amount, Additional_fees(upgrades/ features), Discount,
Frequent_flyer, Cancellation, Over_booking, Delays, Seat occupancy, Total_no_of_seats,
Payment
FD2: Booking_ID → Amount, Additional_fees(upgrades/ features), Discount, Frequent_flyer
(Booking_ID, BillingID, Cancellation, Over_booking, Delays, Seat occupancy,
Total_no_of_seats, Payment)
Step 4: Transitive Dependency: (non-key attribute determine non-key attribute)
No, there is no a Transitive Dependency
Step 5:
Boyce-Codd normal form (BCNF): non-key determines part of key
No in BCNF
Final Relation
Booking (Booking_ID, Amount, Additional_fees(upgrades/ features), Discount,
Frequent_flyer)
Booking_fare(Booking_ID, BillingID, Cancellation, Over_booking, Delays, Seat occupancy,
Total_no_of_seats, Payment)
Creating Tables with SQL
CREATE TABLE Aircraft_EnergyEfficiency (
Aircraft_ID NUMBER NOT NULL,
Fuel_usage NUMBER,
Fuel_cost NUMBER ,
Storage NUMBER,
Aircraft_type VARCHAR(50),
Seat NUMBER ,
Model NUMBER,
Age NUMBER,
Maintenance_record NUMBER,
CONSTRAINT pk_aircraft_info PRIMARY KEY (Aircraft_ID)
)
INSERT INTO Aircraft_EnergyEfficiency VALUES(101, 3601, 11847.29, 5600, “Airbus
A380”, 900, 147, 1, 2);
INSERT INTO Aircraft_EnergyEfficiency VALUES(102, 42000, 138180.00, 70903, “Boeing
777”, 312, 253, 3, 4);
INSERT INTO Aircraft_EnergyEfficiency VALUES(103, 2900, 9541.00, 5600, “Airbus A319”
450, 747, 8, 3);
INSERT INTO Aircraft_EnergyEfficiency VALUES(201, 35030, 115248.70, 56000, “Airbus
A380”, 900, 943, 2, 5);
INSERT INTO Aircraft_EnergyEfficiency VALUES(202, 4001, 13163.29, 5000, “Boeing 777”,
318, 256, 4, 1);
CREATE TABLE Route (
Route_ID NUMBER NOT NULL,
Departure_time DATE,
Arrival_time DATE ,
Departure_airport VARCHAR(50),
Destination_airport VARCHAR(50),
Ride_length NUMBER,
Flight_no NUMBER ,
Aircraft_ID NUMBER NOT NULL,
CONSTRAINT pk_route PRIMARY KEY (Route_ID),
CONSTRAINT fk_route FOREIGN KEY (Booking_ID) REFERENCES Booking_Info
(Booking_ID)
);
INSERT INTO Route VALUES (1024, "6:45 AM", "10:35 PM", "Hartsfield–Jackson Atlanta
International Airport", "Dallas/Fort Worth International Airport", 14, 456, 101);
INSERT INTO Route VALUES (3092, "11:30 AM", "0:55 AM", "Los Angeles International
Airport”, “Denver International Airport", 24, 4775, 102);
INSERT INTO Route VALUES(2964, "14:30", "20:15", "Washington Dulles International
Airport", "Tampa International Airport", 6, 5298, 103);
INSERT INTO Route VALUES(4503, "17:40", "15:25", "John F. Kennedy International
Airport", "Indianapolis International Airport", 20, 6317, 201);
INSERT INTO Route VALUES(5837, "10:35", "13:00", "Orlando International Airport",
"Minneapolis St. Paul International Airport", 3, 7057, 202);
CREATE TABLE Booking_Info (
Booking_ID NUMBER NOT NULL,
Cancellation NUMBER,
Over_booking NUMBER ,
Delays NUMBER,
Seat_occupancy NUMBER,
Total_no_of_seats NUMBER,
Payment NUMBER,
Passengers_ID NUMBER,
Route_ID NUMBER,
CONSTRAINT pk_booking_info PRIMARY KEY (Booking_ID),
CONSTRAINT fk_booking_info FOREIGN KEY (Passengers_ID) REFERENCES Passenger
(Passengers_ID),
CONSTRAINT fk2_booking_info FOREIGN KEY (Route_ID) REFERENCES Route
(Route_ID)
);
INSERT INTO Booking_info VALUES(201,10,12,1,90,88,150,102,1024);
INSERT INTO Booking_info VALUES(210,7,3,0,85,90,160,104, 3092);
INSERT INTO Booking_info VALUES(214,3,5,0,75,90,170,129, 2964);
INSERT INTO Booking_info VALUES(221,5,2,0,120,140,210,134, 4503);
INSERT INTO Booking_info VALUES(225,6,16,1,150,140,258, 176, 5837);
CREATE TABLE Stop_Transfer (
Stop_ID NUMBER NOT NULL,
Route_ID NUMBER NOT NULL,
Number_of_stops NUMBER,
Processing_time NUMBER ,
CONSTRAINT pk_Stop_Transfer PRIMARY KEY (Stop_ID, Route_ID),
CONSTRAINT fk_Stop_Transfer FOREIGN KEY (Route_ID) REFERENCES Route
(Route_ID)
);
INSERT INTO Stop_Transfer VALUES(721, 1024, 0, 0);
INSERT INTO Stop_Transfer VALUES(910, 3092, 1, 3);
INSERT INTO Stop_Transfer VALUES(1823, 2964, 0, 0);
INSERT INTO Stop_Transfer VALUES(2983, 4503, 2, 7);
INSERT INTO Stop_Transfer VALUES(1039, 5837, 0, 0);
CREATE TABLE Employee(
Employee_ID NUMBER NOT NULL,
First_name VARCHAR(50),
Last_name VARCHAR(50),
Middle_name VARCHAR(50),
Title VARCHAR(50),
Fulltime_Parttime VARCHAR(20),
CONSTRAINT pk_Employee PRIMARY KEY (Employee_ID, Route_ID),
CONSTRAINT fk_Employee FOREIGN KEY (Route_ID) REFERENCES Route (Route_ID)
);
INSERT INTO Employee VALUES (39474678,"James","Smith","Thomas","Associate","F");
INSERT INTO Employee VALUES(58740282,"Robert","Johnson","Joseph","Manager","P");
INSERT INTO Employee VALUES(49725423,"John","Miller","Charles","Senior","F");
INSERT INTO Employee VALUES(59836231,"Mary","Anderson","Linda","Senior","F");
INSERT INTO Employee VALUES(84635214,"Partricia","Gardia","Barbara","Manager","F");
CREATE TABLE Fares(
Booking_ID NUMBER NOT NULL,
Amount NUMBER NOT NULL,
Additional_fees VARCHAR(50),
Discount NUMBER,
Frequent_flyer VARCHAR(10),
CONSTRAINT pk_Fares PRIMARY KEY (Booking_ID, Amount),
CONSTRAINT fk_Fares FOREIGN KEY(Booking_ID) REFERENCES Booking_info
(Booking_ID));
INSERT INTO Fares Values (201, 200.00, ‘Priority boarding’, 0.10, ‘YES’);
INSERT INTO Fares Values(210, 150.00, NULL, 0.05, ‘NO’);
INSERT INTO Fares Values(214, 300.00, ‘Extra legroom’, 0, ‘YES’);
INSERT INTO Fares Values(221, 100.00, ‘Seat selection’, 0.15, ‘YES’);
INSERT INTO Fares Values(225, 225.00, ‘In flight meal’, 0.20, ‘YES’);
CREATE TABLE Passenger(
Passenger_ID NUMBER NOT NULL,
Passenger_name VARCHAR(100),
Date_of_birth DATE,
Nationality VARCHAR(50),
Gender VARCHAR(10),
Seat_info VARCHAR(20),
CONSTRAINT pk_Passenger PRIMARY KEY(Passenger_ID)
CONSTRAINT fk_Passenger FOREIGN KEY(Booking_ID) REFERENCE Booking_Info
(Booking_ID)
);
INSERT INTO Passenger VALUES (102, ‘Taylor_Swift’, ‘12/13/1988’, ‘American’, ‘Female’,
‘3A’);
INSERT INTO Passenger VALUES(104, ‘Olivia_Rodrigo’, ‘2/20/2003’, ‘American’, ‘Female’,
‘4B’);
INSERT INTO Passenger VALUES(129, ‘Jennie_Kim’, ‘1/16/1996’, ‘South_Korean’, ‘Female’,
‘6C’);
INSERT INTO Passenger VALUES(134, ‘Harry_Styles’, ‘2/1/1994’, ‘British’,‘Male’, ‘2B’);
INSERT INTO Passenger VALUES(176, ‘Shawn_Mendes’, ‘8/8/1998’, ‘Canadian’, ‘Male’,
‘2A’);
Relationship:
Scenario:
1. Aircraft Maintenance
1-1. Show the Aircraft ID, Model, Age, and Maintenance_record of the aircraft that are more
than 5 years old but haven’t had maintenance yet. Add fuel usage or other thing in terms of
efficiency
SELECT Aircraft_ID, Fuel_Usage, Storage, Aircraft_type, Model, Age, Maintenance_record
FROM Aircraft_EnergyEfficiency
WHERE Age > 5
AND Maintenance_record = 0;
1-2. Write a query to display which aircraft type/ model has incurred the most maintenance
frequency
SELECT Aircraft_type, COUNT(Aircraft_type) AS NumberOfAircrafts,
SUM(Maintenance_record) AS TotalNumberOfMaintenance,
Round(SUM(Maintenance_record)/COUNT(Aircraft_type),2) AS AverageMaintenanceRecords
FROM Aircraft_EnergyEfficiency
GROUP BY Aircraft_type
ORDER BY SUM(Maintenance_record)
2. Stop_Transfers & Route
2-1. Write a query to display RouteID, Departure and Destination Airport, Ride length, Number
of Stops, and Processing time which had more than 0 stops. Then sort the results in ascending
order by Ride_length
SELECT R.Route_ID, R.Departure_airport, R.Destination_airport, R.Ride_length,
ST.Number_of_Stops, ST.Processing_Time,
ROUND(ST.Processing_Time/ST.Number_of_Stops,1) AS AverageProcessingTimeByStop
FROM Stops_Transfers ST, Route R
WHERE R.Route_ID=ST.Route_ID AND ST.Number_of_Stops>0
ORDER BY R.Ride_length
2-2 What are the route IDs where the number of occupied seats exceeds 100?
SELECT Route_ID, SUM(Seat_occupancy) AS Occupied_Seats
FROM Booking_Info
GROUP BY Route_ID
HAVING SUM(Seat_occupancy) > 100
ORDER BY SUM(Seat_occupancy);
3. Employee (HR)
3-1. Write a query to display Route ID and percentage of Fulltime/ Parttime employees by each
route.
SELECT ER.Route_ID, ROUND(COUNT(E.Fulltime_Parttime)/3,2) AS
PercentageOfPartimeEmployee
FROM Employee_acess_route ER, Employee E
WHERE ER.Employee_ID=E.Employee_ID AND E.Fulltime_Parttime="P"
GROUP BY ER.Route_ID
ORDER BY ER.Route_ID
3-2. Write a query to display Route ID and percentage of lower/ middle management by each
route
SELECT ER.Route_ID, ROUND(COUNT(E.Title)/3,2) AS PercentageOfLowerManagement
FROM Employee_acess_route ER, Employee E
WHERE ER.Employee_ID=E.Employee_ID AND (E.Title LIKE "Associate" OR E.Title LIKE
"Senior")
GROUP BY ER.Route_ID
ORDER BY ER.Route_ID
4. Profit
What is the total amount of fares earned from each booking, along with the passenger name?
SELECT B.Booking_ID, P.Passenger_name, SUM(F.Amount) AS Total_Fare
FROM ((Fares F
INNER JOIN Booking_Info B
ON F.Booking_ID = B.Booking_ID)
INNER JOIN Passenger P
ON B.Passengers_ID = P.Passengers_ID)
GROUP BY B.Booking_ID, P.Passenger_name;
5. Fuel Efficiency
5-1. Write a query to show the average fuel usage, age and fuel cost for each aircraft type.
SELECT Aircraft_type, ROUND(AVG(Fuel_usage), 2) AS Avg_Fuel_Usage,
ROUND(AVG(Age), 2) AS Average_Age, ROUND(AVG(Fuel_cost),2) AS Avg_Fuel_Cost
FROM Aircraft_EnergyEfficiency
GROUP BY Aircraft_type;
5-2. Top 5 routes have the highest fuel usage and fuel cost?
SELECT TOP 5 r.Route_ID, ae.Fuel_usage, ae.Fuel_cost
FROM Aircraft_EnergyEfficiency ae, Route r
WHERE ae.Aircraft_ID = r.Aircraft_ID
ORDER BY Fuel_usage DESC, Fuel_cost DESC;
6. Marketing
6-1 Show the Booking_ID, Discount, Frequent_Flyer, Name, Date of Birth, Nationality and
Gender of the customers who are Frequent flyers, and got the discount in order of amount of
discount they received.
SELECT F.Booking_ID, F.Discount, F.Frequent_Flyer, P.Passenger_name, P.Date_of_birth,
P.Nationality,P.Gender
FROM (Fares F INNER JOIN Booking_Info B
ON F.Booking_ID = B.Booking_ID) INNER JOIN Passenger P
ON B.Passengers_ID=P.Passengers_ID
WHERE F.Frequent_Flyer = "YES" AND F.Discount<>"N/A"
ORDER BY F.Discount DESC
6-2 Write a query to show the bookings with a cancellation rate of less than or equal to 5 and
overbooking rate of less than equal to 10 showing booking ID, payment, passengers ID and route
ID.
SELECT Booking_ID, Payment, Passengers_ID, Route_ID
FROM Booking_Info
WHERE Cancellation <= 5 AND Over_Booking <= 10;
Conclusion
The most difficult part of the project we experienced as a majority was the normalization process
after the RDM. Initially, we started the normalization process with all entities together and later
learned that each entity needs its own normalization process. Surprisingly, creation of the SQL
database was far the easiest and exciting process of this project. It showed us how much we have
developed after putting all the pieces together. Starting with our brainstorming about what
database project to final report truly gave us a great foundation to the database management
system.
The Airline Database Management System we’ve designed in this project fulfills the need to
store, manage, and process vast amounts of data related to flights, aircraft, passengers,
reservations, employees and marketing; showing which particular aircraft and type might need
maintenance; Analyzing passengers for marketing, then provide better services or marketing
promotions; Analyze routes, fares, costs and so on to maximize rationalization benefit; Internal
management for employees.
