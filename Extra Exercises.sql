CREATE VIEW DonorName
AS
SELECT D.Name
FROM donor D
WHERE D.Name LIKE ‘%A’;
ORDER BY D.Name ASC
SELECT DISTINCT SUM(Amount)
FROM payment
WHERE Amount BETWEEN 6000 AND 7000
SELECT COUNT(ID)
FROM customer
WHERE customer.ID IS NULL
SELECT Name
FROM doctor
WHERE EXISTS
(SELECT Name FROM doctor WHERE YearOfExpertise=11)
SELECT C.Name, P.CardNo
FROM customer
INNER JOIN payment ON customer.ID= payment.CustomID
SELECT SecNo, AVG(Amount)
FROM payment
GROUP BY SecNo
HAVING SecNo NOT LIKE ‘2%’
SELECT HairColor
FROM donor
OUTER JOIN egg ON donor.HairColor = egg.HairColor
WHERE HairColor IS ‘Brown’
SELECT ID, MentalPast
CASE
WHEN MentalPast IS ‘healthy’ THEN ‘this donor is healthy’
ELSE ‘this donor had some mental problems’
END AS HealthTest
FROM donor
SELECT eggID,status,TakenTime
FROM egg
WHERE id IN(
SELECT id FROM donor
WHERE HairColor = 'Blonde');
SELECT stockNo, stockStatus, enterTime
FROM stock
WHERE urgency =
(SELECT urgency
FROM stock
WHERE urgency = 'Not Urgent');
SELECT id, FullName, adress, preferences
FROM customer
WHERE phoneNo =
(SELECT phoneNo
FROM customer
WHERE phoneNo = '05097634252');
SELECT fullName, employTime, uniinfo
FROM benefits
WHERE id IN(
SELECT id FROM doctor
WHERE yearofexpertise = 17);
SELECT id, fullName, hairColor, eyeColor, age, phoneNo
FROM donor
WHERE(id, age) IN
(SELECT id, MIN(age)
FROM donor
GROUP BY id);
SELECT Name + ‘ ‘ + Surname
AS FullName
FROM doctor;
SELECT ID, FullName, Age
FROM donor
WHERE ID=SOME
(SELECT DonID
FROM egg
WHERE Status=’ Available’)
SELECT UNIQUE Race
FROM donor
WHERE Age = 29
SELECT last_name
FROM payment
WHERE Amount > ( SELECT Amount FROM payment WHERE Amount =6500)
UNION
(SELECT last_name FROM egg WHERE Status ='Available')
SELECT last_name
FROM ( SELECT urgency
FROM stock
WHERE StockStatus = 'Available')
WHERE entertime ='22.00'
(FROM ID
From RacialInformation
WHERE race = 'White')
INTERSECT
(SELECT currency
FROM payment
WHERE currency='Dollar')
(SELECT fullname
FROM benefits
WHERE physicalpast='Healthy')
EXCEPT
(SELECT fullname FROM benefits WHERE Mentalpast= healthy)