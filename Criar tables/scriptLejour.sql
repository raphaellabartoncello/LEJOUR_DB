USE LEJOUR_DB
GO

CREATE TABLE bzUser(
				idUser INT IDENTITY(1,1) NOT NULL,
				idUserLejour VARCHAR (10) NOT NULL,
				dtCreated VARCHAR (16) NOT NULL,
				CONSTRAINT idUser_PK PRIMARY KEY (idUser))
GO

CREATE TABLE bzWedding(
				idWedding INT IDENTITY(1,1) NOT NULL,
				idWeddingLejour VARCHAR (10) NOT NULL,
				idUser VARCHAR (10) NOT NULL,
				budget VARCHAR (30) NULL,
				dtWedding VARCHAR (16) NULL,
				numberGuests VARCHAR (10) NOT NULL,
				style VARCHAR (100) NULL
				CONSTRAINT idWedding_PK PRIMARY KEY (idWedding))
GO

CREATE TABLE slAppointment(
				idAppointment INT IDENTITY(1,1) NOT NULL,
				idAppointmentLejour VARCHAR (10) NOT NULL,
				idWedding VARCHAR (10) NOT NULL,
				idVendor VARCHAR (10) NOT NULL,
				statusAppointment NVARCHAR (10) NOT NULL,
				categoryVendor VARCHAR (100) NOT NULL,
				dtCreated VARCHAR (16) NOT NULL
				CONSTRAINT idAppointment_PK PRIMARY KEY (idAppointment))
GO

CREATE TABLE slInvoice(
				idInvoice INT IDENTITY(1,1) NOT NULL,
				idInvoiceLejour VARCHAR (10) NOT NULL,
				idWedding VARCHAR (10) NOT NULL,
				idVendor VARCHAR (10) NOT NULL,
				amount DECIMAL (10,4) NOT NULL,
				amountVendor DECIMAL (10,4) NOT NULL,
				accepted NVARCHAR (5)
				CONSTRAINT idInvoice_PK PRIMARY KEY (idInvoice))
GO

CREATE TABLE bzVendorFavorite(
				idWedding VARCHAR (10) NOT NULL,
				idVendor VARCHAR (10) NOT NULL
				CONSTRAINT idWeddingVendor_PK PRIMARY KEY (idWedding,idVendor))
GO

SELECT * FROM sys.tables