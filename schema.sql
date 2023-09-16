--
-- Table structure for table `Airport`
--

DROP TABLE IF EXISTS `Airport`;
CREATE TABLE IF NOT EXISTS `Airport` (
  `Ap_Code` varchar(4) NOT NULL default '0',
  `Ap_name` varchar(60) NOT NULL,
  `Ap_City` varchar(50) NOT NULL,
  `Ap_State` varchar(50) default NULL,
  `Ap_Country` varchar(50) NOT NULL,
  CONSTRAINT airport_pk PRIMARY KEY  (`Ap_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `Aircraft_Type`
--

DROP TABLE IF EXISTS `Aircraft_Type`;
CREATE TABLE IF NOT EXISTS `Aircraft_Type` (
  `AT_ID` varchar(3) NOT NULL default '0',
  `AT_Name` varchar(30) default NULL,
  CONSTRAINT aircraft_type_pk PRIMARY KEY  (`AT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `AircraftType_Airport`
--

DROP TABLE IF EXISTS `AircraftType_Airport`;
CREATE TABLE IF NOT EXISTS `AircraftType_Airport` (
  `AT_ID` varchar(3) NOT NULL default '0',
  `Ap_Code` varchar(3) NOT NULL default '0',
  CONSTRAINT aircrafttype_airport_pk PRIMARY KEY  (`AT_ID`,`AP_Code`),
  CONSTRAINT aircraftType_Airport_fk_AT FOREIGN KEY (`AT_ID`) REFERENCES Aircraft_Type (`AT_ID`),
  CONSTRAINT aircraftType_Airport_fk_AP FOREIGN KEY (`Ap_Code`) REFERENCES Airport (`Ap_Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `Aircraft_Manufacturer`
--

DROP TABLE IF EXISTS `Aircraft_Manufacturer`;
CREATE TABLE IF NOT EXISTS `Aircraft_Manufacturer` (
  `AM_ID` varchar(3) NOT NULL default '0',
  `AM_Name` varchar(15) NOT NULL,
  CONSTRAINT aircraft_Manufacturer_pk PRIMARY KEY  (`AM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `Aircraft`
--

DROP TABLE IF EXISTS `Aircraft`;
CREATE TABLE IF NOT EXISTS `Aircraft` (
  `Ac_SerialNum` varchar(8) NOT NULL default '00-00000',
  `Ac_ModelNum` varchar(10) NOT NULL,
  `Ac_NumSeats` integer(3) NOT NULL,
  `Ac_ManufactureDate` date NOT NULL,
  `AT_ID` varchar(3) default '0',
  `AM_ID` varchar(3) default '0',
  CONSTRAINT aircraft_pk PRIMARY KEY  (`Ac_SerialNum`),
  CONSTRAINT aircraft_fk_AT FOREIGN KEY (`AT_ID`) REFERENCES Aircraft_Type (`AT_ID`),
  CONSTRAINT aircraft_fk_AM FOREIGN KEY (`AM_ID`) REFERENCES Aircraft_Manufacturer (`AM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `Booking_Class`
--

DROP TABLE IF EXISTS `Booking_Class`;
CREATE TABLE IF NOT EXISTS `Booking_Class` (
  `BC_ID` varchar(3) NOT NULL default '0',
  `BC_FliCostFactor` decimal(3,2) NOT NULL,
  `BC_Description` varchar(15) NOT NULL,
  CONSTRAINT Booking_Class_pk PRIMARY KEY  (`BC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `Pilot`
--

DROP TABLE IF EXISTS `Pilot`;
CREATE TABLE IF NOT EXISTS `Pilot` (
  `Pi_CAA_LicenseNum` varchar(12) NOT NULL default '000000000000',
  `Pi_FirstName` varchar(15) NOT NULL,
  `Pi_Initial` varchar(2) NOT NULL,
  `Pi_LastName` varchar(15) NOT NULL,
  `Pi_DOB` date NOT NULL,
  `Pi_StreetAddress` varchar(20) NOT NULL,
  `Pi_Suburb` varchar (15) default NULL,
  `Pi_City` varchar (15) default NULL,
  `Pi_StateOrProvince` varchar (15) default NULL,
  `Pi_PostalCodeOrZip` varchar (10) default NULL,
  `Pi_Country` varchar (15) NOT NULL,
  `Pi_RegularPhone` varchar (7) NOT NULL,
  `Pi_EmergencyPhone` varchar (7) default NULL,
  `Pi_Email` varchar (30) default NULL,
  `Pi_Salary` int (6) NOT NULL,
  CONSTRAINT pilot_pk PRIMARY KEY  (`Pi_CAA_LicenseNum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `Flight`
--

DROP TABLE IF EXISTS `Flight`;
CREATE TABLE IF NOT EXISTS `Flight` (
  `Fli_Num` varchar(5) NOT NULL default '00000',
  `Fli_Fare` decimal(6,2) NOT NULL,
  `Fli_NumAvailSeats` int(3) NOT NULL default '200',
  `Fli_DeptDate` date NOT NULL,
  `Fli_DepTime` time NOT NULL,
  `Fli_ArrDate` date NOT NULL,
  `Fli_ArrTime` time NOT NULL,
  `Ac_SerialNum` varchar(8) NOT NULL default '00-00000',
  `Pi_CAA_LicenseNum` varchar(12) NOT NULL default '000000000000',
  `Ap_Code` varchar(3) NOT NULL default '0',
  CONSTRAINT flight_pk PRIMARY KEY  (`Fli_Num`),
  CONSTRAINT flight_fk1 FOREIGN KEY (`Ac_SerialNum`) REFERENCES Aircraft (`Ac_SerialNum`),
  CONSTRAINT flight_fk2 FOREIGN KEY (`Pi_CAA_LicenseNum`) REFERENCES Pilot (`Pi_CAA_LicenseNum`),
  CONSTRAINT flight_fk3 FOREIGN KEY (`AP_Code`) REFERENCES Airport (`AP_Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `Passenger`
--

DROP TABLE IF EXISTS `Passenger`;
CREATE TABLE IF NOT EXISTS `Passenger` (
  `Pas_ID` varchar(6) NOT NULL default 'PA0000',
  `Pas_Title` varchar(3) NOT NULL,
  `Pas_FirstName` varchar(15) NOT NULL,
  `Pas_LastName` varchar(15) NOT NULL,
  `Pas_DOB` date NOT NULL,
  `Pas_StreetAddress` varchar(20) NOT NULL,
  `Pas_Suburb` varchar (15) NOT NULL,
  `Pas_City` varchar (15) NOT NULL,
  `Pas_StateOrProvince` varchar (15) NOT NULL,
  `Pas_PostalCodeOrZip` varchar (10) NOT NULL,
  `Pas_Country` varchar (15) NOT NULL,
  `Pas_Email` varchar (30) NOT NULL,
  `Pas_PhCountryCode` varchar (3) NOT NULL,
  `Pas_PhAreaCode` varchar (3) NOT NULL,
  `Pas_PhNum` varchar (7) NOT NULL,
  CONSTRAINT passenger_pk PRIMARY KEY  (`Pas_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `Booking`
--

DROP TABLE IF EXISTS `Booking`;
CREATE TABLE IF NOT EXISTS `Booking` (
  `Bk_ID` varchar(4) NOT NULL default '0000',
  `Bk_SeatNum` integer(3) NOT NULL,
  `Bk_Date` date NOT NULL,
  `Bk_Time` time NOT NULL,
  `Bk_CreditCard` varchar(12) NOT NULL,
  `Bk_TotalCost` decimal(6,2) NOT NULL,
  `Bk_PaymentStatus` varchar (1) NOT NULL,
  CHECK ((Bk_PaymentStatus = "Y") OR (Bk_PaymentStatus = "N")),
  `BC_ID` varchar(3) NOT NULL default '0',
  `Pas_ID` varchar(6) NOT NULL default 'PA0000',
  `Fli_Num` varchar(5) NOT NULL default '00000',
  CONSTRAINT booking_pk PRIMARY KEY  (`Bk_ID`),
  CONSTRAINT booking_fk1 FOREIGN KEY (`BC_ID`) REFERENCES Booking_Class (`BC_ID`),
  CONSTRAINT booking_fk2 FOREIGN KEY (`Pas_ID`) REFERENCES Passenger (`Pas_ID`),
  CONSTRAINT booking_fk3 FOREIGN KEY (`Fli_Num`) REFERENCES Flight (`Fli_Num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;