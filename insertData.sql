--
-- Inserting data for table `Pilot`
--
INSERT INTO `Pilot` (`Pi_CAA_LicenseNum`,`Pi_FirstName`,`Pi_Initial`,`Pi_LastName`,`Pi_DOB`,`Pi_StreetAddress`,`Pi_Suburb`,`Pi_City`,`Pi_StateOrProvince`,`Pi_PostalCodeOrZip`,`Pi_Country`,`Pi_RegularPhone`,`Pi_EmergencyPhone`,`Pi_Email`,`Pi_Salary`) VALUES
('PL0000000001','Tony','TS','Stark','1980-01-01','123 Malibu St','Malibu','Los Angeles','California','90263','USA','9000000','9000001','tony@email.com',24000),
('PL0000000002','Jone','JR','Ratu','1980-02-01','123 Munia St','Samabula','Suva','Central','10000','Fiji','9000002','9000003','jone@email.com',25000),
('PL0000000003','Mary','MS','Stark','1988-03-20','123 Malibu St','Malibu','Los Angeles','California','90263','USA','9000004','9000005','mary@email.com',26000),
('PL0000000004','Rahul','RS','Singh','1985-04-02','291 Sugar Ave','Furnace','Lautoka','Western','20000','Fiji','9000006','9000007','rahul@email.com',27000),
('PL0000000005','Tomasi','TS','Cama','1980-05-01','123 Harbour St','Chatswood','Sydney','NSW','2055','Australia','9000008','9000009','tom@email.com',24000),
('PL0000000006','Wayne','WR','Rooney','1982-06-01','123 Devil St','Hollywood','Los Angeles','California','33022','USA','9000010','9000011','wayne@email.com',30000),
('PL0000000007','Clint','CE','Eastwood','1990-07-01','567 Cowboy Rd','Scottsdale','Phoenix','Arizona','85003','USA','9000012','9000013','clint@email.com',44000),
('PL0000000008','John','JL','Legend','1980-08-06','123 Song Rd','Malibu','Los Angeles','California','90264','USA','9000014','9000015','john@email.com',34000),
('PL0000000009','Mereoni','MP','Powell','1981-09-01','745 Beauty St','Namadi Heights','Suva','Central','10001','Fiji','9000016','9000017','tony@email.com',54000),
('PL0000000010','Anjali','AC','Chand','1980-10-01','24 Planes St','Votualevu','Nadi','Western','20002','Fiji','9000018','9000019','tony@email.com',39000);


--
-- Inserting data for table `Passenger`
--
INSERT INTO `Passenger` (`Pas_ID`,`Pas_Title`,`Pas_FirstName`,`Pas_LastName`,`Pas_DOB`,`Pas_StreetAddress`,`Pas_Suburb`,`Pas_City`,`Pas_StateOrProvince`,`Pas_PostalCodeOrZip`,`Pas_Country`,`Pas_Email`,`Pas_PhCountryCode`,`Pas_PhAreaCode`,`Pas_PhNum`) VALUES
('P00001','Mr','Bruce','Wayne','1990-05-23','1 Batcave Rd','Wayne Grounds','Gotham','Illinois','62623','USA','bwayne@email.com','1','217','2000000'),
('P00002','Mr','Clark','Kent','1980-04-28','14 Sun Rd','Sunshine','Metropolis','Washington DC','36368','USA','kent@email.com','1','800','2000001'),
('P00003','Ms','Diana','Prince','1970-06-10','56 Amazonia St','Museum Garden','Amazonia','California','27384','USA','diana@email.com','1','987','2000002'),
('P00004','Mrs','Priyanka','Chopra','1976-07-02','8 Rose Rd','Toorak','Suva','Central','10000','Fiji','chopra@email.com','679','212','2000003'),
('P00005','Mr','Nickwa','Jonas','1989-08-07','8 Rose Rd','Toorak','Suva','Central','10000','Fiji','jonas@email.com','679','212','2000004'),
('P00006','Mr','Pranav','Chand','2000-05-30','89 Software St','Laucala','Suva','Central','10001','Fiji','pranav@email.com','679','212','2000005'),
('P00007','Mr','Pui','Chen','1965-01-23','76 Software St','Laucala','Suva','Central','10001','Fiji','chen@email.com','679','212','2000007'),
('P00008','Mr','Aryan','Sharma','1997-09-23','92 Engineer Rd','Waiyavi','Lautoka','Western','20001','Fiji','aryansharma@email.com','679','300','2000008'),
('P00009','Ms','Prashantika','Chand','1981-02-05','1 Love Ave','Sunflower Parks','Nadi','Western','20003','Fiji','para@email.com','679','300','2000009'),
('P00010','Ms','Sera','Waitiki','1967-03-01','2 Island Rd','Samabula','Suva','Central','10000','Fiji','waitiki@email.com','679','210','2000010');


--
-- Inserting data for table `Booking_Class`
--
INSERT INTO `Booking_Class` (`BC_ID`,`BC_FliCostFactor`,`BC_Description`) VALUES
('BC1',1.78,'Executive Class'),
('BC2',1.46,'Business Class'),
('BC3',1.00,'Economy Class');

--
-- Inserting data for table `Aircraft_Manufacturer`
--
INSERT INTO `Aircraft_Manufacturer` (`AM_ID`,`AM_Name`) VALUES
('BAC','Bach Aircraft'),
('MAL','Malmo'),
('TBM','Socater TBM'),
('BEE','Beecraft');


--
-- Inserting data for table `Aircraft_Type`
--
INSERT INTO `Aircraft_Type` (`AT_ID`,`AT_Name`) VALUES
('AT1','Boeing'),
('AT2','Airbus'),
('AT3','Boeing-Mcdonell Douglas');


--
-- Inserting data for table `Aircraft`
--
INSERT INTO `Aircraft` (`Ac_SerialNum`,`Ac_ModelNum`,`Ac_NumSeats`,`Ac_ManufactureDate`,`AT_ID`,`AM_ID`) VALUES
('51-11012','777',300,'2020-02-02','AT3','BAC'),
('71-31222','737',150,'2020-03-02','AT1','MAL'),
('11-98281','A380',555,'2020-03-01','AT2','TBM'),
('00-00001','777',300,'2021-05-02','AT1','BAC'),
('00-00002','A380',555,'2022-09-03','AT2','BAC'),
('00-00003','777',300,'2021-01-02','AT1','BAC'),
('00-00004','A380',555,'2020-09-22','AT2','MAL'),
('00-00005','777',300,'2022-08-02','AT3','BAC'),
('00-00006','A380',555,'2021-03-12','AT2','TBM'),
('00-00007','777',300,'2021-04-05','AT1','MAL');


--
-- Inserting data for table `Airport`
--
INSERT INTO `Airport` (`AP_Code`,`Ap_Name`,`Ap_City`,`Ap_State`,`Ap_Country`) VALUES 
('LHR','London Heathrow Airport','London',NULL,'UK'),
('NAN','Nadi International Airport','Nadi','Western','Fiji'),
('LAX','Los Angeles International Aiport','Los Angeles','California','USA'),
('SYD','Sydney Kingsford Smith International Airport','Sydney','NSW','Australia'),
('MEL','Melbourne Airport','Melbourne','Victoria','Australia'),
('WLG','Wellington International Aiport','Wellngton','North Island','New Zealand'),
('HKG','Hong Kong International Airport','Hong Kong',NULL,'Hong Kong'),
('HND','Tokyo International Airport','Tokyo','Tokyo Prefecture','Japan'),
('SIN','Singapore Changi Airport','Singapore',NULL,'Singapore'),
('YVR','Vancouver International Airport','Vancouver','BC','Canada'),
('APW','Faleolo International Airport','Apia',NULL,'Samoa');


--
-- Inserting data for table `AircraftType_Airport`
--
INSERT INTO `AircraftType_Airport` (`AT_ID`,`Ap_Code`) VALUES 
('AT1','LAX'),
('AT2','LAX'),
('AT1','LHR'),
('AT3','LHR'),
('AT2','NAN'),
('AT1','NAN'),
('AT3','NAN'),
('AT1','SYD'),
('AT2','MEL'),
('AT1','WLG'),
('AT1','HKG'),
('AT2','HND'),
('AT1','SIN'),
('AT2','YVR'),
('AT1','APW');


--
-- Inserting data for table `Flight`
--
INSERT INTO `Flight` (`Fli_Num`,`Fli_Fare`,`Fli_NumAvailSeats`,`Fli_DeptDate`,`Fli_DepTime`,`Fli_ArrDate`,`Fli_ArrTime`,`Ac_SerialNum`,`Pi_CAA_LicenseNum`,`Ap_Code`) VALUES
('FA100',1000,300,'2023-05-24','00:05:00','2023-05-24','00:09:00','51-11012','PL0000000001','SYD'),
('FA101',1500,150,'2023-05-25','00:05:00','2023-05-25','00:09:00','71-31222','PL0000000002','LHR'),
('FA103',1200,555,'2023-05-27','00:07:00','2023-05-27','00:11:00','11-98281','PL0000000004','NAN'),
('FA102',1100,300,'2023-05-26','00:06:00','2023-05-26','00:10:00','00-00001','PL0000000003','LAX'),
('FA104',1300,555,'2023-05-28','00:08:00','2023-05-28','00:12:00','00-00002','PL0000000005','WLG'),
('FA105',1400,300,'2023-05-29','00:09:00','2023-05-29','00:13:00','00-00003','PL0000000006','MEL'),
('FA106',1100,555,'2023-05-30','00:07:00','2023-05-30','00:12:00','00-00004','PL0000000007','HKG'),
('FA107',1200,300,'2023-06-01','00:06:00','2023-06-01','00:10:00','00-00006','PL0000000008','SIN'),
('FA108',1300,555,'2023-06-02','00:01:00','2023-06-02','00:07:00','00-00005','PL0000000009','HND'),
('FA109',800,300,'2023-06-03','00:02:00','2023-06-03','00:03:00','00-00007','PL0000000010','APW');


--
-- Inserting data for table `Booking`
--
INSERT INTO `Booking` (`Bk_ID`,`Bk_SeatNum`,`Bk_Date`,`Bk_Time`,`Bk_CreditCard`,`Bk_TotalCost`,`Bk_PaymentStatus`,`BC_ID`,`Pas_ID`,`Fli_Num`) VALUE 
('B001',1,'2023-04-01','00:08:23','120000000001',2190,'Y','BC2','P00001','FA101'),
('B002',2,'2023-04-01','00:08:23','120000000001',2190,'Y','BC2','P00001','FA101'),
('B003',3,'2023-04-01','00:08:24','120000000001',2190,'Y','BC2','P00001','FA101'),
('B004',4,'2023-04-01','00:08:23','120000000001',2190,'Y','BC2','P00001','FA101'),
('B005',5,'2023-04-01','00:08:25','120000000001',2190,'Y','BC2','P00001','FA101'),
('B006',6,'2023-04-01','00:08:23','120000000001',2190,'Y','BC2','P00001','FA101'),
('B007',7,'2023-04-01','00:08:26','120000000001',2190,'Y','BC2','P00001','FA101'),
('B008',8,'2023-04-01','00:08:23','120000000001',2190,'Y','BC2','P00001','FA101'),
('B009',9,'2023-04-01','00:08:27','120000000001',2190,'Y','BC2','P00001','FA101'),
('B010',10,'2023-04-01','00:08:27','120000000001',2190,'Y','BC2','P00001','FA101'),
('B030',11,'2023-04-01','00:08:27','120000000001',2190,'Y','BC2','P00001','FA101'),
('B011',1,'2023-05-01','00:09:23','120000000002',1200,'Y','BC3','P00002','FA103'),
('B012',2,'2023-05-01','00:09:23','120000000002',1200,'Y','BC3','P00002','FA103'),
('B013',3,'2023-05-01','00:09:24','120000000002',1200,'Y','BC3','P00002','FA103'),
('B014',4,'2023-05-01','00:09:23','120000000002',1200,'Y','BC3','P00002','FA103'),
('B015',5,'2023-05-01','00:09:25','120000000002',1200,'N','BC3','P00002','FA103'),
('B016',6,'2023-05-01','00:09:23','120000000002',1200,'Y','BC3','P00002','FA103'),
('B017',7,'2023-05-01','00:09:26','120000000002',1200,'Y','BC3','P00002','FA103'),
('B018',8,'2023-05-01','00:09:23','120000000002',1200,'Y','BC3','P00002','FA103'),
('B019',9,'2023-05-01','00:09:27','120000000002',1200,'Y','BC3','P00002','FA103'),
('B020',10,'2023-05-01','00:09:27','120000000002',1200,'N','BC3','P00002','FA103'),
('B021',22,'2023-05-01','00:10:12','120000000003',1000,'Y','BC3', 'P00003','FA100'),
('B022',23,'2023-05-01','00:11:12','120000000003',1000,'Y','BC3', 'P00003','FA100'),
('B023',10,'2023-05-01','00:11:12','120000000004',1100,'Y','BC3', 'P00004','FA102'),
('B024',20,'2023-05-04','00:11:12','120000000005',1100,'Y','BC3', 'P00005','FA102'),
('B025',21,'2023-05-04','00:11:12','120000000005',1100,'Y','BC3', 'P00005','FA102'),
('B026',22,'2023-05-04','00:11:20','120000000005',1100,'Y','BC3', 'P00005','FA102'),
('B027',10,'2023-05-01','00:12:12','120000000006',1300,'Y','BC3', 'P00006','FA104'),
('B028',10,'2023-05-11','00:09:42','120000000009',800,'Y','BC3', 'P00007','FA109');
