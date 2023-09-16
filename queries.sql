-- Query 1
SELECT * FROM Booking_Class
ORDER BY BC_FliCostFactor DESC;

-- Query 2
SELECT CONCAT(Pas_FirstName," ",Pas_LastName) AS Name,
CONCAT(Pas_PhCountryCode,"-",Pas_PhAreaCode,"-",Pas_PhNum) AS Phone,Pas_Email AS Email,
COUNT(Bk_ID) AS Total_Tickets
FROM Passenger AS p
INNER JOIN Booking AS b 
ON p.Pas_ID = b.Pas_ID
GROUP BY b.Pas_ID
HAVING Total_Tickets < 10
ORDER BY Total_Tickets ASC;

-- Query 3
SELECT COUNT(Bk_ID) AS TotalBusinessFlights
FROM Booking
WHERE (BC_ID = 'BC2');

-- Query 4
SELECT a.Ac_SerialNum, a.Ac_ModelNum, a.Ac_NumSeats,a.AT_ID
FROM Aircraft AS a
WHERE a.AT_ID = (SELECT DISTINCT AT_ID FROM AircraftType_Airport
WHERE AT_ID 
NOT IN (SELECT AT_ID FROM AircraftType_Airport
WHERE Ap_Code = 'LAX'));

-- Query 5
-- 
-- This is to show table before update query
START TRANSACTION;
SELECT Pi_FirstName,Pi_Salary, Pi_StateOrProvince FROM Pilot;

-- THIS PERFORMS THE DESIRED UDPATE
UPDATE Pilot
SET Pi_Salary = Pi_Salary * 2
WHERE (Pi_Salary <= 25000) OR (Pi_PostalCodeOrZip = '85003');

-- This is to show table after update query
SELECT Pi_FirstName,Pi_Salary, Pi_StateOrProvince FROM Pilot;

ROLLBACK;

-- Query 6
-- TO SHOW UNPAID BOOKING
START TRANSACTION;
SELECT Bk_ID,Bk_PaymentStatus FROM Booking
WHERE (Bk_PaymentStatus = 'N');

-- QUERY TO DELETE 
DELETE FROM Booking
WHERE (Bk_PaymentStatus = 'N');

-- TO SHOW AFTER DELETE STATEMENT
SELECT Bk_ID,Bk_PaymentStatus FROM Booking
WHERE (Bk_PaymentStatus = 'N');

ROLLBACK;
