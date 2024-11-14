
-- Tabla Employee
CREATE TABLE Employee (
    EmployeeId SERIAL NOT NULL,
    LastName VARCHAR(20),
    FirstName VARCHAR(20),
    Title VARCHAR(30),
    BirthDate TIMESTAMP,
    HireDate TIMESTAMP,
    Address VARCHAR(70),
    City VARCHAR(40),
    State VARCHAR(40),
    Country VARCHAR(40),
    PostalCode VARCHAR(10),
    Phone VARCHAR(24),
    Fax VARCHAR(24),
    Email VARCHAR(60)
);

-- Tabla Customer
CREATE TABLE Customer (
    CustomerId SERIAL NOT NULL,
    FirstName VARCHAR(40),
    LastName VARCHAR(20),
    Company VARCHAR(80),
    Address VARCHAR(70),
    City VARCHAR(40),
    State VARCHAR(40),
    Country VARCHAR(40),
    PostalCode VARCHAR(10),
    Phone VARCHAR(24),
    Fax VARCHAR(24),
    Email VARCHAR(60),
    SupportRepId INT NOT NULL
);

-- Tabla Invoice
CREATE TABLE Invoice (
    InvoiceId SERIAL NOT NULL,
    CustomerId INT NOT NULL,
    InvoiceDate TIMESTAMP,
    BillingAddress VARCHAR(70),
    BillingCity VARCHAR(40),
    BillingState VARCHAR(40),
    BillingCountry VARCHAR(40),
    BillingPostalCode VARCHAR(10),
    Total DECIMAL(10, 2)
);

-- Tabla InvoiceLine
CREATE TABLE InvoiceLine (
    InvoiceLineId SERIAL NOT NULL,
    InvoiceId INT NOT NULL,
    TrackId INT,
    UnitPrice DECIMAL(10, 2),
    Quantity INT
);

-- Tabla Genre
CREATE TABLE Genre (
    GenreId SERIAL NOT NULL,
    Name VARCHAR(120)
);

-- Tabla MediaType
CREATE TABLE MediaType (
    MediaTypeId SERIAL NOT NULL,
    Name VARCHAR(120)
);

-- Tabla Artist
CREATE TABLE  Artist (
    ArtistId SERIAL NOT NULL,
    Name VARCHAR(120)
);

-- Tabla Album
CREATE TABLE Album (
    AlbumId SERIAL NOT NULL,
    Title VARCHAR(160),
    ArtistId INT NOT NULL
);

-- Tabla Track
CREATE TABLE Track (
    TrackId SERIAL NOT NULL,
    Name VARCHAR(200),
    AlbumId INT NOT NULL,
    MediaTypeId INT NOT NULL,
    GenreId INT NOT NULL,
    Composer VARCHAR(220),
    Milliseconds INT,
    Bytes INT,
    UnitPrice DECIMAL(10, 2)
);

-- Tabla Playlist
CREATE TABLE Playlist (
    PlaylistId SERIAL NOT NULL,
    Name VARCHAR(120)
);

-- Tabla PlaylistTrack
CREATE TABLE PlaylistTrack (
    PlaylistId INT NOT NULL,
    TrackId INT NOT NULL
);

ALTER TABLE Employee
ADD CONSTRAINT PK_Employee PRIMARY KEY (EmployeeId);

ALTER TABLE Customer
ADD CONSTRAINT PK_Customer PRIMARY KEY (CustomerId);

ALTER TABLE Invoice
ADD CONSTRAINT PK_Invoice PRIMARY KEY (InvoiceId);

ALTER TABLE InvoiceLine
ADD CONSTRAINT PK_InvoiceLine PRIMARY KEY (InvoiceLineId);

ALTER TABLE Genre
ADD CONSTRAINT PK_Genre PRIMARY KEY (GenreId);

ALTER TABLE MediaType
ADD CONSTRAINT PK_MediaType PRIMARY KEY (MediaTypeId);

ALTER TABLE Artist
ADD CONSTRAINT PK_Artisr PRIMARY KEY (ArtistId);

ALTER TABLE Album
ADD CONSTRAINT PK_Album PRIMARY KEY (AlbumId);

ALTER TABLE Track
ADD CONSTRAINT PK_Track PRIMARY KEY (TrackId);

ALTER TABLE Playlist
ADD CONSTRAINT PK_Playlist PRIMARY KEY (PlaylistId);

ALTER TABLE PlaylistTrack
ADD CONSTRAINT PK_PlaylistTrack PRIMARY KEY (PlaylistId);

-- FK
ALTER TABLE Customer 
ADD CONSTRAINT FK_CustomerEmployee
FOREIGN KEY (SupportRepId) REFERENCES Employee(EmployeeId);

ALTER TABLE Invoice
ADD CONSTRAINT FK_InvoiceCustomer
FOREIGN KEY (CustomerId) REFERENCES Customer(CustomerId);

ALTER TABLE InvoiceLine
ADD CONSTRAINT FK_InvoiceLineInvoice
FOREIGN KEY (InvoiceId) REFERENCES Invoice(InvoiceId);

ALTER TABLE InvoiceLine
ADD CONSTRAINT FK_InvoiceLineTrack
FOREIGN KEY (TrackId) REFERENCES Track(TrackId);

ALTER TABLE Album
ADD CONSTRAINT FK_AlbumArtist
FOREIGN KEY (ArtistId) REFERENCES Artist(ArtistId);

ALTER TABLE Track
ADD CONSTRAINT FK_TrackAlbum
FOREIGN KEY (AlbumId) REFERENCES Album(AlbumId);

ALTER TABLE Track
ADD CONSTRAINT FK_TrackMediaType
FOREIGN KEY (MediaTypeId) REFERENCES MediaType(MediaTypeId);

ALTER TABLE Track
ADD CONSTRAINT FK_TrackGenre
FOREIGN KEY (GenreId) REFERENCES Genre(GenreId);

ALTER TABLE PlaylistTrack
ADD CONSTRAINT FK_PlaylistTrackPlaylist
FOREIGN KEY (PlaylistId) REFERENCES Playlist(PlaylistId);

ALTER TABLE PlaylistTrack
ADD CONSTRAINT FK_PlaylistTrackTrack
FOREIGN KEY (TrackId) REFERENCES Track(TrackId);
