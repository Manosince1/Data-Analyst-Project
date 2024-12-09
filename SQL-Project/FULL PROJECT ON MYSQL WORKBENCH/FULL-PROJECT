CREATE DATABASE ACDB;
CREATE TABLE "ACDB_SECTORS" 
   (	"SECTOR_ID" NUMBER(8,0), 
	"SECTOR_NAME" VARCHAR2(25 BYTE)
   );
Insert into ACDB_SECTORS (SECTOR_ID,SECTOR_NAME) values (2,'Business');
Insert into ACDB_SECTORS (SECTOR_ID,SECTOR_NAME) values (1,'Private');

CREATE TABLE "ACDB_PACKAGES" 
   (	"PACK_ID" NUMBER(8,0), 
	"SPEED" VARCHAR2(10 BYTE), 
	"MONTHLY_PAYMENT" NUMBER(8,0), 
	"SECTOR_ID" NUMBER(8,0), 
	"STRT_DATE" DATE
   );  
Insert into ACDB_PACKAGES (PACK_ID,SPEED,MONTHLY_PAYMENT,SECTOR_ID,STRT_DATE) values (1,'750Kbps',79,1,to_date('03.11.05','DD.MM.YY'));
Insert into ACDB_PACKAGES (PACK_ID,SPEED,MONTHLY_PAYMENT,SECTOR_ID,STRT_DATE) values (2,'750Kbps',69,1,to_date('04.09.06','DD.MM.YY'));
Insert into ACDB_PACKAGES (PACK_ID,SPEED,MONTHLY_PAYMENT,SECTOR_ID,STRT_DATE) values (3,'750Kbps',59,1,to_date('06.01.07','DD.MM.YY'));
Insert into ACDB_PACKAGES (PACK_ID,SPEED,MONTHLY_PAYMENT,SECTOR_ID,STRT_DATE) values (4,'750Kbps',49,1,to_date('28.05.08','DD.MM.YY'));
Insert into ACDB_PACKAGES (PACK_ID,SPEED,MONTHLY_PAYMENT,SECTOR_ID,STRT_DATE) values (5,'750Kbps',39,1,to_date('10.10.09','DD.MM.YY'));
Insert into ACDB_PACKAGES (PACK_ID,SPEED,MONTHLY_PAYMENT,SECTOR_ID,STRT_DATE) values (6,'750Kbps',29,1,to_date('06.01.10','DD.MM.YY'));
Insert into ACDB_PACKAGES (PACK_ID,SPEED,MONTHLY_PAYMENT,SECTOR_ID,STRT_DATE) values (7,'750Kbps',69,2,to_date('03.05.05','DD.MM.YY'));
Insert into ACDB_PACKAGES (PACK_ID,SPEED,MONTHLY_PAYMENT,SECTOR_ID,STRT_DATE) values (8,'750Kbps',59,2,to_date('19.08.06','DD.MM.YY'));
Insert into ACDB_PACKAGES (PACK_ID,SPEED,MONTHLY_PAYMENT,SECTOR_ID,STRT_DATE) values (9,'750Kbps',49,2,to_date('01.11.07','DD.MM.YY'));
Insert into ACDB_PACKAGES (PACK_ID,SPEED,MONTHLY_PAYMENT,SECTOR_ID,STRT_DATE) values (10,'750Kbps',39,2,to_date('26.10.08','DD.MM.YY'));
Insert into ACDB_PACKAGES (PACK_ID,SPEED,MONTHLY_PAYMENT,SECTOR_ID,STRT_DATE) values (11,'750Kbps',29,2,to_date('27.11.09','DD.MM.YY'));
Insert into ACDB_PACKAGES (PACK_ID,SPEED,MONTHLY_PAYMENT,SECTOR_ID,STRT_DATE) values (12,'750Kbps',19,2,to_date('13.08.10','DD.MM.YY'));
Insert into ACDB_PACKAGES (PACK_ID,SPEED,MONTHLY_PAYMENT,SECTOR_ID,STRT_DATE) values (13,'1.5Mbps',89,1,to_date('08.02.06','DD.MM.YY'));
Insert into ACDB_PACKAGES (PACK_ID,SPEED,MONTHLY_PAYMENT,SECTOR_ID,STRT_DATE) values (14,'1.5Mbps',79,1,to_date('27.06.07','DD.MM.YY'));
Insert into ACDB_PACKAGES (PACK_ID,SPEED,MONTHLY_PAYMENT,SECTOR_ID,STRT_DATE) values (15,'1.5Mbps',69,1,to_date('01.11.08','DD.MM.YY'));
Insert into ACDB_PACKAGES (PACK_ID,SPEED,MONTHLY_PAYMENT,SECTOR_ID,STRT_DATE) values (16,'1.5Mbps',59,1,to_date('26.06.09','DD.MM.YY'));
Insert into ACDB_PACKAGES (PACK_ID,SPEED,MONTHLY_PAYMENT,SECTOR_ID,STRT_DATE) values (17,'1.5Mbps',49,1,to_date('12.02.10','DD.MM.YY'));

CREATE TABLE "ACDB_CUSTOMERS" 
   (	"CUSTOMER_ID" NUMBER(8,0), 
	"FIRST_NAME" VARCHAR2(25 BYTE), 
	"LAST_NAME" VARCHAR2(25 BYTE), 
	"CITY" VARCHAR2(45 BYTE), 
	"STATE" VARCHAR2(25 BYTE), 
	"STREET" VARCHAR2(40 BYTE), 
	"MAIN_PHONE_NUM" VARCHAR2(12 BYTE), 
	"SECONDARY_PHONE_NUM" VARCHAR2(12 BYTE), 
	"FAX" VARCHAR2(12 BYTE), 
	"MONTHLY_DISCOUNT" NUMBER(4,2), 
	"PACK_ID" NUMBER(8,0), 
	"BIRTH_DATE" DATE, 
	"JOIN_DATE" DATE
   );



Insert into ACDB_CUSTOMERS values (177,'Cedric','Clarke','Cary','North Carolina','3694 Battery Street ','573.985.3508','946.234.9077','785.367.9119',7,7,to_date('28.08.87', 'DD.MM.YY'),to_date('11.09.05','DD.MM.YY'));
Insert into ACDB_CUSTOMERS values (178,'Clark','James','Orange','California','5807 Whipple Avenue','584.479.8597','963.400.3385','723.402.2663',28,null,to_date('12.04.66', 'DD.MM.YY'),to_date('17.03.05','DD.MM.YY'));
Insert into ACDB_CUSTOMERS values (179,'Cortez','Morgan','Pasadena','California','9107 Post Street ','592.889.8105','977.396.2912','728.328.9797',13,34,to_date('16.02.81', 'DD.MM.YY'),to_date('11.12.08','DD.MM.YY'));
Insert into ACDB_CUSTOMERS values (180,'Kelly','Hughes','Fullerton','California','8547 Noe Street','515.675.1257','979.692.7938','749.157.6605',9,23,to_date('05.04.79', 'DD.MM.YY'),to_date('01.02.07','DD.MM.YY'));
Insert into ACDB_CUSTOMERS values (181,'Luke','Edwards','Hampton','Virginia','5991 Ellis Street ','575.921.3984','951.451.8404','744.390.4522',null,27,to_date('04.10.66', 'DD.MM.YY'),to_date('05.07.07','DD.MM.YY'));
Insert into ACDB_CUSTOMERS values (182,'Del03','Hill','Clarksville','Tennessee','6068 Polk Street ','540.421.7470','921.480.6639',null,15,37,to_date('07.08.89', 'DD.MM.YY'),to_date('19.07.09','DD.MM.YY'));
Insert into ACDB_CUSTOMERS values (183,'Roland','Moore','McKinney','Texas','7921 Brannan Street ','562.704.7923',null,'728.647.4700',25,null,to_date('23.07.60', 'DD.MM.YY'),to_date('15.06.08','DD.MM.YY'));
Insert into ACDB_CUSTOMERS values (184,'Mike','Clark','Warren','Michigan','5975 Noe Street','536.750.3185','962.419.7991','769.395.7417',3,39,to_date('28.01.66', 'DD.MM.YY'),to_date('05.01.09','DD.MM.YY'));
Insert into ACDB_CUSTOMERS values (185,'Emory','Harrison','McAllen','Texas','7424 Halleck Street','543.717.5373','987.196.7392','796.853.1842',9,39,to_date('24.11.81', 'DD.MM.YY'),to_date('20.09.09','DD.MM.YY'));
Insert into ACDB_CUSTOMERS values (186,'Leandro','Scott','West Valley City','Utah','9005 Boalt Street ','570.731.2716','995.548.5645','710.690.1687',9,39,to_date('22.03.88', 'DD.MM.YY'),to_date('07.10.09','DD.MM.YY'));
Insert into ACDB_CUSTOMERS values (187,'Thomas','Young','Columbia','South Carolina','3997 Franklin Street','598.901.1970','967.130.4544','746.560.1670',null,37,to_date('27.06.89', 'DD.MM.YY'),to_date('01.10.09','DD.MM.YY'));
Insert into ACDB_CUSTOMERS values (188,'Domenic','Morris','Killeen','Texas','3310 Lick Place ','538.772.7460','955.660.1883','766.859.3377',15,13,to_date('13.01.63', 'DD.MM.YY'),to_date('25.01.06','DD.MM.YY'));
Insert into ACDB_CUSTOMERS values (189,'Tyler','Hall','New Haven','Connecticut','6787 Lick Place ','529.250.4936','972.521.8147','746.689.9722',20,18,to_date('18.12.77', 'DD.MM.YY'),to_date('03.08.06','DD.MM.YY'));
Insert into ACDB_CUSTOMERS values (190,'Errol','Ward','Topeka','Kansas','2279 Bartlett Street ','511.448.5701','959.141.3085',null,6,37,to_date('25.04.89', 'DD.MM.YY'),to_date('26.05.09','DD.MM.YY'));
Insert into ACDB_CUSTOMERS values (191,'Stacey','Turner','Thousand Oaks','California','8300 Alvarado Street','572.863.9216','957.555.9080','747.920.2671',14,null,to_date('05.09.60', 'DD.MM.YY'),to_date('13.06.10','DD.MM.YY'));
Insert into ACDB_CUSTOMERS values (192,'Davis','Carter','Olathe','Kansas','6423 Hyde Street','566.677.2091','975.346.7938',null,18,null,to_date('02.07.85', 'DD.MM.YY'),to_date('26.10.06','DD.MM.YY'));
Insert into ACDB_CUSTOMERS values (193,'Harrison','Phillips','Cedar Rapids','Iowa','3375 Griffith Street ','549.356.9341','983.183.1399','730.596.8418',15,null,to_date('16.02.81', 'DD.MM.YY'),to_date('09.07.05','DD.MM.YY'));
Insert into ACDB_CUSTOMERS values (194,'Enrique','Mitchell','Waco','Texas','7696 King Street','595.843.8430','990.480.3639','767.820.4777',19,1,to_date('05.09.90', 'DD.MM.YY'),to_date('19.03.05','DD.MM.YY'));
Insert into ACDB_CUSTOMERS values (195,'Cory','Patel','Visalia','California','8780 Spear Street ','549.108.9476','978.195.3750',null,29,42,to_date('16.04.82', 'DD.MM.YY'),to_date('01.10.10','DD.MM.YY'));
Insert into ACDB_CUSTOMERS values (196,'Ariel','Adams','Elizabeth','New Jersey','9862 Sutter Street','565.479.1416','994.745.2564','779.118.7503',29,1,to_date('17.08.80', 'DD.MM.YY'),to_date('22.02.05','DD.MM.YY'));
Insert into ACDB_CUSTOMERS values (197,'Russel','Campbell','Simi Valley','California','1446 Wallace Avenue','537.408.7269',null,'720.837.6523',16,18,to_date('08.12.72', 'DD.MM.YY'),to_date('18.01.06','DD.MM.YY'));
Insert into ACDB_CUSTOMERS values (198,'Chadwick','Anderson','Gainesville','Florida','8862 Donahue Street ','578.886.8930',null,'736.691.1889',null,13,to_date('07.03.68', 'DD.MM.YY'),to_date('01.04.06','DD.MM.YY'));
Insert into ACDB_CUSTOMERS values (199,'Lucas','Allen','Hartford','Connecticut','1320 Sunset Boulevard ','525.154.3329','939.543.9762','766.992.2287',13,42,to_date('26.01.73', 'DD.MM.YY'),to_date('24.12.10','DD.MM.YY'));
Insert into ACDB_CUSTOMERS values (200,'Rocky','Cook','Bellevue','Washington','2042 Treat Avenue ','584.693.4590','983.917.6883','766.471.9788',null,27,to_date('05.10.62', 'DD.MM.YY'),to_date('10.08.07','DD.MM.YY'));
Insert into ACDB_CUSTOMERS values (201,'Antonia','Bailey','Mira03','Florida','4980 Funston Avenue ','589.743.5105','931.267.7501','715.510.4632',17,null,to_date('01.02.68', 'DD.MM.YY'),to_date('08.10.08','DD.MM.YY'));
Insert into ACDB_CUSTOMERS values (202,'Buddy','Parker','Concord','California','5770 Galindo Avenue ','521.259.3813','958.793.1406','722.974.9054',21,37,to_date('07.07.78', 'DD.MM.YY'),to_date('03.07.09','DD.MM.YY'));
Insert into ACDB_CUSTOMERS values (203,'Eugenio','Miller','Stamford','Connecticut','9267 McKinnon Avenue','544.317.8051','965.416.8109','750.892.9278',26,7,to_date('27.08.77', 'DD.MM.YY'),to_date('28.05.05','DD.MM.YY'));
Insert into ACDB_CUSTOMERS values (204,'Burton','Davis','Coral Springs','Florida','9805 Folsom Street','595.535.2360','983.311.7460',null,3,27,to_date('05.05.76', 'DD.MM.YY'),to_date('07.06.07','DD.MM.YY'));
Insert into ACDB_CUSTOMERS values (205,'Rufus','Murphy','Charleston','South Carolina','3253 Perry Street','595.693.8699','936.442.7573','772.871.5212',28,41,to_date('04.02.83', 'DD.MM.YY'),to_date('04.05.10','DD.MM.YY'));
Insert into ACDB_CUSTOMERS values (206,'Neil','Price','Carrollton','Texas','1319 Pixley Street ','546.548.6253','940.158.8044',null,29,39,to_date('19.11.68', 'DD.MM.YY'),to_date('25.03.09','DD.MM.YY'));
Insert into ACDB_CUSTOMERS values (207,'Garret','Bell','Lafayette','Louisiana','5282 Phelan Avenue','582.446.8508','995.116.6999','755.135.6800',9,39,to_date('03.02.71', 'DD.MM.YY'),to_date('01.01.09','DD.MM.YY'));
Insert into ACDB_CUSTOMERS values (208,'Art','Baker','Roseville','California','6386 Larkin Street','595.520.9406','996.410.9387','733.615.4496',26,37,to_date('12.05.69', 'DD.MM.YY'),to_date('05.10.09','DD.MM.YY'));
Insert into ACDB_CUSTOMERS values (209,'Garrett','Griffiths','Thornton','Colorado','2535 Scott Street ','523.173.9602','922.133.5235',null,null,18,to_date('27.09.70', 'DD.MM.YY'),to_date('11.02.06','DD.MM.YY'));
Insert into ACDB_CUSTOMERS values (210,'Damian','Kelly','Frisco','Texas','3832 Whipple Avenue','520.951.6402','942.467.1893',null,26,37,to_date('22.08.85', 'DD.MM.YY'),to_date('13.09.09','DD.MM.YY'));
Insert into ACDB_CUSTOMERS values (211,'Roosevelt','Simpson','Kent','Washington','4141 Farragut Avenue','522.964.9354',null,null,27,42,to_date('07.01.69', 'DD.MM.YY'),to_date('25.02.10','DD.MM.YY'));
Insert into ACDB_CUSTOMERS values (212,'Chet','03shall','Surprise','Arizona','3541 Powell Street','597.586.4291',null,null,16,27,to_date('18.06.65', 'DD.MM.YY'),to_date('10.01.07','DD.MM.YY'));
Insert into ACDB_CUSTOMERS values (213,'Cornell','Collins','Allentown','Pennsylvania','7644 Baker Street ','549.703.1520',null,'792.367.4476',24,41,to_date('07.02.90', 'DD.MM.YY'),to_date('23.05.10','DD.MM.YY'));


SELECT * FROM acdb_customers
DROP TABLE ACDB_SECTORS;
DROP TABLE ACDB_PACKAGES;
DROP TABLE ACDB_CUSTOMERS;
-- Display the first name, last name, and package number for all customers whose last name is “Morgan” (Customers table).

SELECT FIRST_NAME,LAST_NAME,PACK_ID
FROM acdb_customers
WHERE LAST_NAME="Morgan";

-- Display all the data from Packages table for packages whose speed is “750Kbps”.

SELECT *
FROM acdb_packages
WHERE SPEED="750Kbps";

-- Display the first name, last name, package number and monthly discount for all customers with monthly discount less than 30 (Customers table).

SELECT FIRST_NAME,LAST_NAME,PACK_ID,MONTHLY_DISCOUNT
FROM acdb_customers
WHERE MONTHLY_DISCOUNT<30;


-- Display all the data from Customers table for all customers who joined the company before March 05, 2007.

SELECT *
FROM acdb_customers
WHERE JOIN_DATE="2017-03-05";

-- Display the customer number, first name ,state, city and package number for all customers whose package number equals 7, 27, or 34 (Customers table).

SELECT CUSTOMER_ID,FIRST_NAME,STATE,CITY,PACK_ID
FROM acdb_customers
WHERE PACK_ID IN(7,27,34);

-- OR

SELECT CUSTOMER_ID,FIRST_NAME,STATE,CITY,PACK_ID
FROM acdb_customers
WHERE PACK_ID=7 OR PACK_ID=27 OR PACK_ID=34;


-- Display the customer number, first name ,state, city and package number for all customers whose package number is not equal to 27, 10, or 3 (Customers table).

SELECT CUSTOMER_ID,FIRST_NAME,STATE,CITY,PACK_ID
FROM acdb_customers
WHERE PACK_ID NOT IN(27,10,3);



-- Display the last name, main phone number, monthly discount and package number for all customers whose customer number equals 703, 314 or 560 (Customers table).

SELECT CUSTOMER_ID,LAST_NAME, MAIN_PHONE_NUM,MONTHLY_DISCOUNT,PACK_ID
FROM acdb_customers
WHERE CUSTOMER_ID NOT IN(703,314,560);

-- Display the first name and monthly discount for all customers whose first name ends with an e (Customers table).

SELECT FIRST_NAME,LAST_NAME,MONTHLY_DISCOUNT
FROM acdb_customers
WHERE FIRST_NAME LIKE "%e";

-- Display the last name and package number for all customers where the second letter of their last name is d (Customers table).

SELECT FIRST_NAME,LAST_NAME,PACK_ID
FROM acdb_customers
WHERE LAST_NAME LIKE "%d";

-- Display all the data from Customers table for all customers who have the letters:  l, j or h in their last name. Order the query in descending order by monthly discount (Customers table).

SELECT FIRST_NAME,LAST_NAME,PACK_ID
FROM acdb_customers
WHERE LAST_NAME LIKE "%l%" OR LAST_NAME LIKE "%j%"OR LAST_NAME LIKE "%h%"
ORDER BY MONTHLY_DISCOUNT DESC;


-- Display the first name, join date, monthly discount and package number for all customers who don’t have the letter a in their last name. Order the query in ascending order by package number (Customers table).

SELECT FIRST_NAME,LAST_NAME,JOIN_DATE,MONTHLY_DISCOUNT,PACK_ID
FROM acdb_customers
WHERE LAST_NAME NOT LIKE "%a%"
ORDER BY PACK_ID ASC;


-- Display all data from Customers table for all customers without a package (package number is null)

SELECT *
FROM acdb_packages
WHERE PACK_ID IS NULL;

-- Display the first name concatenated with the last name (separated by space), and monthly discount for all customers whose monthly discount is not in the range between 20 and 30. Order the query in ascending order by the full name (Customers table).

SELECT FIRST_NAME,LAST_NAME,CONCAT(FIRST_NAME,' ', LAST_NAME) AS FULL_NAME,MONTHLY_DISCOUNT
FROM acdb_customers
WHERE MONTHLY_DISCOUNT NOT BETWEEN 20 AND 30
ORDER BY FULL_NAME ASC;

-- Display the first name concatenated with the last name (separated by space), the main phone number concatenated with street (separated by space), and monthly discount for all customers whose monthly discount is in the range between 11 and 27. Name the column headings FULL_NAME, CONTACTS, and DC respectively (Customers table).

SELECT CONCAT(FIRST_NAME,' ', LAST_NAME) AS FULL_NAME, CONCAT(MAIN_PHONE_NUM,' ', STREET) AS CONTACT, MONTHLY_DISCOUNT AS DC
FROM acdb_customers
WHERE MONTHLY_DISCOUNT BETWEEN 11 AND 27;

	
-- Display all data from Customers table for :
-- All customers who live in Allentown and whose monthly discount is in the range between 20 and 30 or

SELECT *
FROM acdb_customers
WHERE CITY="Allentown" AND MONTHLY_DISCOUNT BETWEEN 20 AND 30;

-- All customers whose package number is not 8,19, or 30 and whose join date is before MARCH 05, 2017

SELECT *
FROM acdb_customers
WHERE PACK_ID NOT IN(8,19,30) AND JOIN_DATE<"2017-03-05";

-- Display the last name, package number, and birthdate for all customers whose join date is in the range between December 12th, 2007 and April 17th, 2010 (Customers table).

SELECT LAST_NAME,PACK_ID,BIRTH_DATE,JOIN_DATE
FROM acdb_customers
WHERE JOIN_DATE BETWEEN "2007-12-12" AND "2010-04-17";

-- Display the package number, start date, and speed for all packages whose start date is before January 1st, 2007 (Packages table)

SELECT PACK_ID,STRT_DATE,SPEED
FROM acdb_packages
WHERE STRT_DATE<"2007-01-01";

-- Display the package number, speed, and sector number for all packages whose sector number equals 1 (Packages table).

SELECT PACK_ID,SPEED,SECTOR_ID
FROM acdb_packages
WHERE SECTOR_ID=1;

-- Display the package number, speed and sector number for all packages with internet speed of “1.5Mbps” or “750Kbps” (Packages table).

SELECT PACK_ID,SPEED,SECTOR_ID
FROM acdb_packages
WHERE SPEED="1.5Mbps" OR SPEED="750Kbps";

-- OR 

SELECT PACK_ID,SPEED,SECTOR_ID
FROM acdb_packages
WHERE SPEED IN ("1.5Mbps","750Kbps");

-- Display the last name and monthly discount for all customers live in Orange (Customers table).

SELECT LAST_NAME,City,MONTHLY_DISCOUNT
FROM acdb_customers
WHERE CITY="Orange";

-- Display the last name and package number for all customers whose package number equals 9 or 18. Preform the exercise once using IN operator, once using OR (Customers table).

SELECT LAST_NAME,PACK_ID
FROM acdb_customers
WHERE PACK_ID IN(9,18);

-- OR

SELECT LAST_NAME,PACK_ID
FROM acdb_customers
WHERE PACK_ID=9 OR PACK_ID=18;

-- Display the first name, main phone number and secondary phone number for all customers without a secondary phone number (secondary phone number is null).

SELECT FIRST_NAME,MAIN_PHONE_NUM,SECONDARY_PHONE_NUM
FROM acdb_customers
WHERE SECONDARY_PHONE_NUM IS NULL;

-- Display the first name, monthly discount and package id for all customers without any monthly discount (monthly discount is null).

SELECT FIRST_NAME,MONTHLY_DISCOUNT,PACK_ID
FROM acdb_customers
WHERE MONTHLY_DISCOUNT IS NULL;

-- Part 1 – Basic Usage
-- Display the lowest last name alphabetically (Customers table).

SELECT MIN(FIRST_NAME)
FROM acdb_customers;

-- OR

SELECT FIRST_NAME
FROM acdb_customers
ORDER BY FIRST_NAME ASC
LIMIT 1;

-- Display the average monthly payment (Packages table).

SELECT AVG(MONTHLY_PAYMENT)
FROM acdb_packages;

-- Display the highest last name alphabetically (Customers table).

SELECT MAX(LAST_NAME)
FROM acdb_customers;

-- OR

SELECT LAST_NAME
FROM acdb_customers
ORDER BY LAST_NAME DESC
LIMIT 1;

-- Display the number of internet packages (Packages table).

SELECT COUNT(PACK_ID)
FROM acdb_packages;

-- Display the number of records in Customers table.

SELECT COUNT(CUSTOMER_ID)
FROM acdb_customers;

-- Display the distinct states  (Customers table).

SELECT DISTINCT(STATE) AS 'Distincts State'
FROM acdb_customers
ORDER BY STATE ASC;

-- Display the number of distinct states  (Customers table).

SELECT COUNT(DISTINCT(STATE)) AS 'Number of Distincts State'
FROM acdb_customers
ORDER BY STATE;

-- Display the number of distinct internet speeds (Packages table).

SELECT COUNT(DISTINCT(SPEED)) AS 'Number Of Distincts Internet Speeds'
FROM acdb_packages
ORDER BY SPEED;

-- Display the number of values (exclude Nulls) in Fax column (Customers table).

SELECT COUNT(*)
FROM acdb_customers
WHERE FAX IS NOT NULL;

-- Display the number of Null values in Fax column (Customers table).

SELECT COUNT(*)
FROM acdb_customers
WHERE FAX IS NULL;

SELECT COUNT(*)
FROM acdb_customers;


-- Display the highest, lowest and average monthly discount (Customers table).

SELECT MAX(MONTHLY_DISCOUNT), MIN(MONTHLY_DISCOUNT), AVG(MONTHLY_DISCOUNT)
FROM acdb_customers;


-- Part 2 – GROUP BY and HAVING clauses
-- Display the state and the number of customers for each state (Customers table).

SELECT STATE,COUNT(CUSTOMER_ID) AS CUSTOMERS
FROM acdb_customers
GROUP BY  STATE;

-- Display the internet speed and the average monthly payment for each speed (Packages table).

SELECT SPEED,AVG(MONTHLY_PAYMENT)
FROM acdb_packages
GROUP BY  SPEED;

-- Display the state and the number of distinct cities for each state (Customers table).

SELECT STATE,COUNT(DISTINCT(CITY))
FROM acdb_customers
GROUP BY  STATE;

-- Display the sector number and the highest monthly payment for each sector (Packages table).

SELECT SECTOR_ID,MAX(MONTHLY_PAYMENT)
FROM acdb_packages
GROUP BY  SECTOR_ID;

-- Display the package number and the average monthly discount for each package.

SELECT PACK_ID,AVG(MONTHLY_DISCOUNT)
FROM acdb_customers
GROUP BY  PACK_ID
HAVING PACK_ID IS NOT NULL;

-- Display the package number and the average monthly discount for each package, only for packages whose number equals 7 or 13.

SELECT PACK_ID,AVG(MONTHLY_DISCOUNT)
FROM acdb_customers
GROUP BY  PACK_ID
HAVING PACK_ID IN(7,13);

--  Display the highest, lowest and average monthly payment for each internet speed (Packages table).

SELECT SPEED,MAX(MONTHLY_PAYMENT),MIN(MONTHLY_PAYMENT),AVG(MONTHLY_PAYMENT)
FROM acdb_packages
GROUP BY  SPEED;

-- The number of customer in each internet package (Customers table) –

SELECT PACK_ID,COUNT(*)
FROM acdb_customers
GROUP BY  PACK_ID;

-- OR 

SELECT PACK_ID,COUNT(CUSTOMER_ID)
FROM acdb_customers
GROUP BY  PACK_ID;

-- Display the package number and the number of customers for each package number.

SELECT PACK_ID,COUNT(CUSTOMER_ID),COUNT(PACK_ID)
FROM acdb_customers
GROUP BY  PACK_ID;

-- Modify the query to display the package number and number of customers for each package number, only for the customers whose monthly discount is greater than 20.

SELECT PACK_ID,MONTHLY_DISCOUNT,COUNT(CUSTOMER_ID),COUNT(PACK_ID)
FROM acdb_customers
GROUP BY  PACK_ID,MONTHLY_DISCOUNT
HAVING MONTHLY_DISCOUNT>20;

-- Modify the query to display the package number and number of customers for each package number, only for the packages with more than 5 customers.

SELECT PACK_ID,COUNT(CUSTOMER_ID),COUNT(PACK_ID)
FROM acdb_customers
GROUP BY  PACK_ID
HAVING COUNT(CUSTOMER_ID)>4;

-- Display the state, city and number of customers for each state and city.

SELECT
STATE,CITY,COUNT(CUSTOMER_ID)
FROM acdb_customers
GROUP BY STATE,CITY;

-- Display the city and the average monthly discount for each city

SELECT
CITY,AVG(MONTHLY_DISCOUNT)
FROM acdb_customers
GROUP BY CITY
HAVING AVG(MONTHLY_DISCOUNT) IS NOT NULL;

-- Display the city and the average monthly discount for each city, only for the customers whose monthly discount is greater than 20

SELECT
CITY,AVG(MONTHLY_DISCOUNT)
FROM acdb_customers
GROUP BY CITY
HAVING AVG(MONTHLY_DISCOUNT)>20;

-- States and the lowest monthly discount (Customers table) –

SELECT
STATE,MIN(MONTHLY_DISCOUNT)
FROM acdb_customers
GROUP BY STATE;

-- Display the state and the lowest monthly discount for each state.
SELECT
STATE,MIN(MONTHLY_DISCOUNT)
FROM acdb_customers
GROUP BY STATE;

-- Display the state and lowest monthly discount for each state, only for states where the lowest monthly discount is greater than 10
SELECT
STATE,MIN(MONTHLY_DISCOUNT)
FROM acdb_customers
GROUP BY STATE
HAVING AVG(MONTHLY_DISCOUNT)>10;

-- Display the internet speed and number of package for each internet speed, only for the internet speeds with more than 8 packages.

SELECT
SPEED,COUNT(PACK_ID)
FROM acdb_packages
GROUP BY SPEED
HAVING COUNT(PACK_ID)>8;


-- Display the customer number, first name in lowercase and last name in uppercase for all customers whose customer number is in the range of 150 and 200.

SELECT
CUSTOMER_ID,LOWER(FIRST_NAME),UPPER(LAST_NAME)
FROM acdb_customers
WHERE CUSTOMER_ID BETWEEN 150 AND 200;

-- For all customers – display the last name, first name and email address. The email address will be composed from the first letter of first name 
   -- concatenated with three first letters of last name concatenated with the string “@mymail.com” (For example : Ram Kedem → RKED@mymail.com).

SELECT
CUSTOMER_ID,FIRST_NAME,LAST_NAME,CONCAT(substr(FIRST_NAME,1,1),'', substr(LAST_NAME,1,3),'@mymail.com') AS EMAIL
FROM acdb_customers;

-- CONCAT(substr(FIRST_NAME,1,1),' ', substr(LAST_NAME,1,3))
-- substr(FIRST_NAME,1,1)
-- CONCAT(FIRST_NAME,' ', LAST_NAME)

-- Display the last name and the length of the last name for all customers where last name’s length is greater than 7 characters.

SELECT
CUSTOMER_ID,LAST_NAME,LENGTH(LAST_NAME)
FROM acdb_customers
WHERE LENGTH(LAST_NAME)>7;

-- Numeric Functions
-- From customers table, for all customers, display :
	-- first name.
	-- monthly discount.
	-- monthly discount after addition of 19.7%.
	-- monthly discount after addition of 19.7%, expressed as a whole number (ROUND).
	-- monthly discount after addition of 19.7%, round down to the nearest whole number (FLOOR).
	-- monthly discount after addition of 19.7%, round up to the nearest whole number (CEILING).

SELECT
FIRST_NAME
,MONTHLY_DISCOUNT AS "DISCOUNT NET"
,MONTHLY_DISCOUNT+(MONTHLY_DISCOUNT*0.197) AS "DISCOUNT BY PERCENT"
,ROUND(MONTHLY_DISCOUNT+(MONTHLY_DISCOUNT*0.197)) AS "DISCOUNT BY ROUND"
,FLOOR(MONTHLY_DISCOUNT+(MONTHLY_DISCOUNT*0.197)) AS "DISCOUNT BY FLOOR"
,CEILING(MONTHLY_DISCOUNT+(MONTHLY_DISCOUNT*0.197)) AS "DISCOUNT BY CEILING"
FROM acdb_customers
WHERE MONTHLY_DISCOUNT IS NOT NULL;


-- From Customers table, for all customers, display the first name, join date, join date minus 10 days, join date plus one month and the date difference between join date and current date.

SELECT
FIRST_NAME
,JOIN_DATE
,DATE_SUB(JOIN_DATE, INTERVAL 10 DAY) AS "Ten Day Substrat"
,date_add(JOIN_DATE,INTERVAL 1 MONTH) AS "One Month Add"
,datediff(CURRENT_DATE,JOIN_DATE) AS DATEDIFF
FROM acdb_customers;

UPDATE acdb_customers
SET BIRTH_DATE ='2022-10-22'
WHERE CUSTOMER_ID = '181';


SELECT * FROM acdb_customers;

-- Display the first name, birthdate and age for all customers whose older than 50.

SELECT
 FIRST_NAME
,BIRTH_DATE
,YEAR(current_date())-YEAR(BIRTH_DATE) AS Age
FROM acdb_customers
WHERE YEAR(current_date())-YEAR(BIRTH_DATE)>50;

-- Display all the data from Customers table, for all customers whose birthdate is today.

SELECT
FIRST_NAME
,BIRTH_DATE
,YEAR(current_date())-YEAR(BIRTH_DATE) as Age
FROM acdb_customers
 WHERE DAY(BIRTH_DATE) = DAY(CURDATE())
   and MONTH(BIRTH_DATE) = MONTH(CURDATE());


-- Display the first name, join date and the difference in years between join date and current date for all customers where today have passed exactly 5 years since they joined the company.

SELECT
FIRST_NAME
,JOIN_DATE
,YEAR(current_date())-YEAR(JOIN_DATE) AS JOINCOMPANY
FROM acdb_customers
 WHERE YEAR(current_date())-YEAR(JOIN_DATE)>5;
   
   
-- Conversion functions
-- Display the first name concatenated with the join date, and last name concatenated with the monthly discount, for all customers. Solve this exercise using CAST.


-- From Customers table, for all customers whose last name starts with a d or k, display:
-- last name
-- state in uppercase concatenated with customer number
-- join date concatenated with birthdate
-- Solve this exercise using CONVERT, and in the WHERE clause instead of using LIKE, try to define the filtering condition using SUBSTRING.



-- Null-Related Functions
-- Phone numbers report:
-- Display the first name, last name, birth date, main phone number and secondary phone number for all customers whose package number equals 27. Replace every null value in main phone number or in secondary phone number with ‘N/A’.



-- Display the first name, last name, birth date, main phone number, secondary phone number for all customers who was born on 1972. Replace every null value in main phone number or in secondary phone number with ‘N/A’.



-- CASE Function
-- From Customers table, for all customers, display the first name, last name, monthly discount and a discount grade based on these conditions :
-- If the discount is between 0 and 10 – discount grade level is A.
-- If the discount is between 11 and 20 – discount grade level is B.
-- If the discount is between 21 and 30 – discount grade level is C.
-- for any other value – discount grade level is D.

SELECT
 FIRST_NAME
,LAST_NAME
,MONTHLY_DISCOUNT,
CASE
    WHEN MONTHLY_DISCOUNT<=10 THEN "Discount grade level is A"
    WHEN MONTHLY_DISCOUNT>=11 AND MONTHLY_DISCOUNT<=20 THEN "Discount grade level is B"
	WHEN MONTHLY_DISCOUNT>=21 AND MONTHLY_DISCOUNT<=30 THEN "Discount grade level is C"
    ELSE "Discount grade level is D"
END AS Grade
FROM acdb_customers;

-- Inner JOIN
-- Customers and internet packages (Customers & Packages tables) –
-- Write a query to display first name, last name, package number and internet speed for all customers.

SELECT 
 C.FIRST_NAME
,C.LAST_NAME
,P.PACK_ID
,P.SPEED
FROM acdb_customers C INNER JOIN acdb_packages P
ON C.PACK_ID=P.PACK_ID;

-- Write a query to display first name, last name, package number and internet speed for all customers whose package number equals 7 or 13. Order the query in ascending order by last name.

SELECT 
 C.FIRST_NAME
,C.LAST_NAME
,P.PACK_ID
,P.SPEED
FROM acdb_customers C INNER JOIN acdb_packages P
ON C.PACK_ID=P.PACK_ID
WHERE P.PACK_ID IN (7,13)
ORDER BY C.LAST_NAME ASC;

-- Internet packages and sectors –
-- Display the package number, internet speed, monthly payment and sector name for all packages (Packages and Sectors tables).

SELECT 
 P.PACK_ID
,P.SPEED
,P.MONTHLY_PAYMENT
,S.SECTOR_NAME
FROM  acdb_packages P INNER JOIN acdb_sectors S
ON P.SECTOR_ID=S.SECTOR_ID;

-- Display the customer name, package number, internet speed, monthly payment and sector name for all customers (Customers, Packages and Sectors tables).

SELECT 
 C.FIRST_NAME
,C.LAST_NAME
,P.PACK_ID
,P.SPEED
,P.MONTHLY_PAYMENT
,S.SECTOR_NAME
FROM  acdb_customers C 
INNER JOIN acdb_packages P ON C.PACK_ID=P.PACK_ID
INNER JOIN acdb_sectors S  ON P.SECTOR_ID=S.SECTOR_ID;

select			concat(a.first_name,' ',a.last_name) as fullname
				,b.pack_id
				,b.speed
				,b.monthly_payment
				,c.sector_name
from			acdb_customers a
				inner join acdb_packages b
				on a.pack_id = b.pack_id
				inner join acdb_sectors c
				on b.sector_id = c.sector_id;

-- Display the customer name, package number, internet speed, monthly payment and sector name for all customers in the business sector (Customers, Packages and Sectors tables).

SELECT 
 C.FIRST_NAME
,C.LAST_NAME
,P.PACK_ID
,P.SPEED
,P.MONTHLY_PAYMENT
,S.SECTOR_NAME
FROM  acdb_customers C 
INNER JOIN acdb_packages P ON C.PACK_ID=P.PACK_ID
INNER JOIN acdb_sectors S  ON P.SECTOR_ID=S.SECTOR_ID
WHERE SECTOR_NAME='Business';		

-- Display the last name, first name, join date, package number, internet speed and sector name for all customers in the private sector who joined the company in the year 2001.

SELECT 
 C.FIRST_NAME
,C.LAST_NAME
,C.JOIN_DATE
,YEAR(C.JOIN_DATE)
,P.PACK_ID
,P.SPEED
,P.MONTHLY_PAYMENT
,S.SECTOR_NAME
FROM  acdb_customers C 
INNER JOIN acdb_packages P ON C.PACK_ID=P.PACK_ID
INNER JOIN acdb_sectors S  ON P.SECTOR_ID=S.SECTOR_ID
WHERE SECTOR_NAME='Private' AND YEAR(C.JOIN_DATE)='2001';
				
-- Outer Join
-- Customers and internet packages (Customers and Packages tables)

SELECT 
 C.FIRST_NAME
,C.LAST_NAME
,P.PACK_ID
,P.SPEED
FROM acdb_customers C CROSS JOIN acdb_packages P
ON C.PACK_ID=P.PACK_ID;


SELECT 
 C.FIRST_NAME
,C.LAST_NAME
,P.PACK_ID
,P.SPEED
FROM acdb_customers C INNER JOIN acdb_packages P
ON C.PACK_ID=P.PACK_ID;

-- Display the first name, last name, internet speed and monthly payment for all customers. Use INNER JOIN to solve this exercise.

SELECT 
 C.FIRST_NAME
,C.LAST_NAME
,P.PACK_ID
,P.SPEED
,P.MONTHLY_PAYMENT
FROM acdb_customers C INNER JOIN acdb_packages P
ON C.PACK_ID=P.PACK_ID;


-- Modify last query to display all customers, including those without any internet package.

SELECT 
 C.FIRST_NAME
,C.LAST_NAME
,P.PACK_ID
,P.SPEED
,P.MONTHLY_PAYMENT
FROM acdb_customers C LEFT JOIN acdb_packages P
ON C.PACK_ID=P.PACK_ID;


-- Modify last query to display all packages, including those without any customers.

SELECT 
 C.FIRST_NAME
,C.LAST_NAME
,P.PACK_ID
,P.SPEED
,P.MONTHLY_PAYMENT
FROM acdb_customers C RIGHT JOIN acdb_packages P
ON C.PACK_ID=P.PACK_ID;

-- Modify last query to display all packages and all customers.

SELECT 
 C.FIRST_NAME
,C.LAST_NAME
,P.PACK_ID
,P.SPEED
,P.MONTHLY_PAYMENT
FROM acdb_customers C CROSS JOIN acdb_packages P
ON C.PACK_ID=P.PACK_ID;

-- Self Join
-- Display the last name, first name and package number for all customers who have the same package number as customer named ‘Amado Taylor’ (Customers table).

SELECT 
 C1.FIRST_NAME
,C1.LAST_NAME
,C2.PACK_ID
,C1.PACK_ID
FROM acdb_customers C1 INNER JOIN acdb_customers C2
ON C2.LAST_NAME='Clarke'
AND C2.FIRST_NAME='Cedric'
AND C1.PACK_ID=C2.PACK_ID;



-- Display the last name, first name and monthly discount for all customers whose monthly discount is lower than the monthly discount of employee number 103 (Customers table).

SELECT 
 C1.FIRST_NAME
,C1.LAST_NAME
,C2.PACK_ID
,C1.PACK_ID
FROM acdb_customers C1 INNER JOIN acdb_customers C2
ON C2.LAST_NAME='Clarke'
AND C2.FIRST_NAME='Cedric'
AND C1.PACK_ID=C2.PACK_ID;

-- Display the package number and internet speed for all packages whose internet speed is equal to the internet speed of package number 13 (Packages table).

SELECT 
 P1.PACK_ID
,P1.SPEED
,P2.SPEED
FROM acdb_packages P1 INNER JOIN acdb_packages P2
ON P2.PACK_ID=10
AND P1.SPEED=P2.SPEED;

-- Display the first name, last name, city and state for all customers who live in the same state as customer number 185 (Customers table).

SELECT 
 C1.CUSTOMER_ID
,C1.FIRST_NAME
,C1.LAST_NAME
,C1.CITY
,C1.STATE
FROM acdb_customers C1 INNER JOIN acdb_customers C2
ON C2.CUSTOMER_ID=185
AND C1.STATE=C2.STATE;

-- Display the package number, internet speed and sector number for all packages whose sector number equals to the sector number of package number 10 (Packages table).
SELECT	
PACK_ID
,SPEED
,SECTOR_ID
FROM	ACDB_CUSTOMERS
WHERE	SECTOR_ID = (SELECT SECTOR_ID FROM ACDB_CUSTOMERS WHERE PACK_ID = 10);

-- Display the first name, last name and join date for all customers who joined the company after customer number 185 (Customers table).


-- Display the first name, last name and join date for all customers who joined the company on the same month and on the same year as customer number 372 (Customers table).
SELECT		
FIRST_NAME
,LAST_NAME
,JOIN_DATE
FROM	ACDB_CUSTOMERS
WHERE	  MONTH(JOIN_DATE) = (SELECT MONTH(JOIN_DATE) FROM ACDB_CUSTOMERS WHERE CUSTOMER_ID = 372)
	AND YEAR(JOIN_DATE) =  (SELECT YEAR(JOIN_DATE) FROM ACDB_CUSTOMERS WHERE CUSTOMER_ID = 372);

-- Display the first name, last name, city, state and package number for all customers whose internet speed is “5Mbps” (Customers and Packages table).
SELECT		
FIRST_NAME
,LAST_NAME
,CITY
,PACK_ID
FROM	ACDB_CUSTOMERS
WHERE	PACK_ID IN (SELECT PACK_ID FROM ACDB_PACKAGES WHERE SPEED = '5MBPS');




-- Display the package number, internet speed and strt_date (the date it became available) for all packages who became available on the same year as package number 7 (Packages table).
SELECT
PACK_ID
,SPEED
,STRT_DATE
FROM	ACDB_PACKAGES
WHERE	EXTRACT(YEAR FROM STRT_DATE) = (SELECT EXTRACT(YEAR FROM STRT_DATE) FROM ACDB_PACKAGES WHERE PACK_ID = 7);

-- Display the first name, monthly discount, package number, main phone number and secondary phone number for all customers whose sector name is Business (Customers, Packages and Sectors tables).
SELECT		
FIRST_NAME
,MONTHLY_DISCOUNT
,PACK_ID
,MAIN_PHONE_NUM
,SECONDARY_PHONE_NUM
FROM	ACDB_CUSTOMERS
WHERE	PACK_ID = (SELECT PACK_ID FROM ACDB_PACKAGES)
			AND (SELECT SECTOR_ID FROM ACDB_PACKAGES) = (SELECT SECTOR_ID FROM ACDB_SECTORS WHERE SECTOR_NAME = LOWER('BUSINESS'));
			
SELECT	
FIRST_NAME
,MONTHLY_DISCOUNT
,PACK_ID
,MAIN_PHONE_NUM
,SECONDARY_PHONE_NUM
FROM	ACDB_CUSTOMERS
WHERE	PACK_ID IN (
			SELECT	PACK_ID
			FROM	ACDB_PACKAGES
			     WHERE	SECTOR_ID IN (
					SELECT	SECTOR_ID
					FROM	ACDB_SECTORS
					WHERE	SECTOR_NAME = LOWER('BUSINESS')
				)
			);

-- Display the first name, monthly discount and package number for all customers whose monthly payment is greater than the average monthly payment (Customers and Packages table).

SELECT		
FIRST_NAME
,MONTHLY_DISCOUNT
,PACK_ID
FROM	ACDB_CUSTOMERS
WHERE	PACK_ID IN 
			(SELECT	 PACK_ID
			FROM	ACDB_PACKAGES
			WHERE	MONTHLY_PAYMENT > 
				(SELECT	AVG(MONTHLY_PAYMENT)
								FROM	ACDB_PACKAGES));
						

-- Display the first name, city, state, birthdate and monthly discount for all customers who was born on the same date as customer number 179, and whose monthly discount is greater than the monthly discount of customer number 107 (Customers table)
SELECT	
FIRST_NAME
,CITY
,STATE
,BIRTH_DATE
,MONTHLY_DISCOUNT
FROM	ACDB_CUSTOMERS
WHERE	BIRTH_DATE =
			(SELECT	 BIRTH_DATE
				FROM	ACDB_CUSTOMERS
				WHERE	CUSTOMER_ID = 179) 
                                                          AND MONTHLY_DISCOUNT > 
				(SELECT	MONTHLY_DISCOUNT
				FROM	ACDB_CUSTOMERS
				WHERE	CUSTOMER_ID = 107)

-- Display all the data from Packages table for packages whose internet speed equals to the internet speed of package number 30, and whose monthly payment is greater than the monthly payment of package number 7 (Packages table).

SELECT	*
FROM	ACDB_PACKAGES
WHERE	SPEED = 
		(SELECT SPEED FROM ACDB_PACKAGES WHERE PACK_ID = 30)
		AND MONTHLY_PAYMENT  >
		      (SELECT MONTHLY_PAYMENT FROM ACDB_PACKAGES WHERE PACK_ID = 7)
-- Display the package number, internet speed, and monthly payment for all packages whose monthly payment is greater than the maximum monthly payment of packages with internet speed equals to “5Mbps” (Packages table).
SELECT	
PACK_ID
,SPEED
,MONTHLY_PAYMENT
FROM	PACK_ID
WHERE	MONTHLY_PAYMENT >
	(SELECT MAX(MONTHLY_PAYMENT) FROM ACDB_PACKAGES WHERE SPEED = '5MBPS')

-- Display  the package number, internet speed and monthly payment for all packages whose monthly payment is greater than the minimum monthly payment of packages with internet speed equals to “5Mbps” (Packages table).

SELECT		
PACK_ID
,SPEED
,MONTHLY_PAYMENT
FROM	acdb_packages
WHERE	MONTHLY_PAYMENT >
		(SELECT MIN(MONTHLY_PAYMENT) FROM acdb_packages where SPEED = '5Mbps')


-- Display the package number, internet speed and monthly payment for all packages whose monthly payment is lower than the minimum monthly payment of packages with internet speed equals to “5Mbps” (Packages table).
SELECT		
PACK_ID
,SPEED
,MONTHLY_PAYMENT
FROM ACDB_PACKAGES
WHERE	MONTHLY_PAYMENT <
		(SELECT MIN(MONTHLY_PAYMENT) FROM ACDB_PACKAGES WHERE SPEED = '5Mbps')

-- Display the first name, monthly discount and package number for all customers whose monthly discount is lower than the average monthly discount, and whose package number is the same as customer named “Kevin”
SELECT		
FIRST_NAME
,MONTHLY_DISCOUNT
,PACK_ID
FROM	ACDB_PACKAGES
	     WHERE MONTHLY_DISCOUNT <
				(SELECT	 AVG(MONTHLY_DISCOUNT)
				FROM	ACDB_PACKAGES
				WHERE	 PACK_ID =
					(SELECT	 PACK_ID
					FROM	ACDB_CUSTOMERS
					WHERE	FIRST_NAME = 'Kevin'))


