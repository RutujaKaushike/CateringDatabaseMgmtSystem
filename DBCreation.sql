CREATE TABLE CUSTOMER(
   ID INT NOT NULL,
   NAME VARCHAR(100) NOT NULL,
   CONTACT VARCHAR(10),
   EMAIL VARCHAR(20),
   PRIMARY KEY(ID)
);

CREATE TABLE STAFF(
  ID INT NOT NULL,
  NAME VARCHAR(100) NOT NULL,
  CONTACT VARCHAR(10),
  EMAIL VARCHAR(20),
  TYPE VARCHAR(20),
  PRIMARY KEY(ID)
);

CREATE TABLE ADDRESS(
  ID INT NOT NULL,
  APARTMENT VARCHAR(100),
  STREET VARCHAR(100),
  CITY VARHAR(100),
  ZIP VARHAR(100),
  PRIMARY KEY(ID)
);

CREATE TABLE EVENT(
  ID INT NOT NULL,
  PEOPLE_COUNT INT NOT NULL,
  STAFF_COUNT INT NOT NULL,
  CUSTOMER_ID INT NOT NULL,
  ADDRESS_ID INT NOT NULL,
  MENU_ID INT NOT NULL,
  EXPECTED_DURATION INT,
  ACTUAL_DURATION INT,  
  EVENT_DATE DATE,
  PRIMARY KEY(ID),
  FOREIGN KEY(CUSTOMER_ID) REFERENCES CUSTOMER(ID),
  FOREIGN KEY(ADDRESS_ID) REFERENCES ADDRESS(ID)
);


CREATE TABLE STAFF_BOOKING(
  STAFF_ID INT NOT NULL,
  EVENT_ID INT NOT NULL,
  PAY_RATE NUMBER DEFAULT 0,
  HOURS_WORKED NUMBER(10),
  FOREIGN KEY(STAFF_ID) REFERENCES STAFF(ID),
  FOREIGN KEY(EVENT_ID) REFERENCES EVENT(ID)
);

