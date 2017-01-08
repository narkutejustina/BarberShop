
CREATE TABLE IF NOT EXISTS Barber(
  BarberId  INTEGER AUTO_INCREMENT PRIMARY KEY ,
  FirstName      VARCHAR(20) NOT NULL,
  LastName   VARCHAR(20) NOT NULL,
  Phone     VARCHAR(12),
  Email  VARCHAR(45)
);

CREATE TABLE IF NOT EXISTS Client(
  ClientId  INTEGER AUTO_INCREMENT PRIMARY KEY ,
  Name      VARCHAR(20) NOT NULL,
  Surname   VARCHAR(20) NOT NULL,
  Phone     VARCHAR(12)
);

CREATE TABLE IF NOT EXISTS Task(
  TaskId    INTEGER AUTO_INCREMENT PRIMARY KEY ,
  Title     VARCHAR(20) NOT NULL,
  Duration  INTEGER NOT NULL,
  Price  INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS BarberWorkHours(
  BarberId  INTEGER     NOT NULL,
  Start     Time        NOT NULL CHECK( Start >= '8:00' AND Start < '20:00'),
  End       Time        NOT NULL CHECK( End > Start AND End <= '20:00'),
  DayOfWeek VARCHAR(10) NOT NULL CHECK(DayOfWeek IN('Monday','Tuesday','Wednesday','Thursday','Friday','Saturday')),
  CONSTRAINT FOREIGN KEY (BarberId) REFERENCES Barber(BarberId),
  PRIMARY KEY (BarberId, DayOfWeek)
);

CREATE TABLE IF NOT EXISTS Bookings(
  BarberId  INTEGER     NOT NULL,
  ClientId  INTEGER     NOT NULL,
  TaskId    INTEGER     NOT NULL,
  Time      Time        NOT NULL CHECK(Start >= '8:00' AND Start < '20:00'),
  Date      Date        NOT NULL CHECK(Date > NOW()),
  Name      VARCHAR(20),
  Comment   VARCHAR(45),
  FOREIGN KEY (BarberId) REFERENCES Barber(BarberId),
  FOREIGN KEY (ClientId) REFERENCES Client(ClientId),
  FOREIGN KEY (TaskId) REFERENCES Task(TaskId),
  PRIMARY KEY (BarberId, ClientId, TaskId)
);