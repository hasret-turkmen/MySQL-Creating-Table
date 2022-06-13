# MySQL-Creating-Table

I prepared an ER Diagram and Relational Schema for an imaginary Egg Donaiton Center:

The database will hold the information of Donors’ name, id (unique), phone number, age,
colour of their hair and eyes, race (could be mixed race too), physical and psychological health. Eggs
will have status, time it’s taken from the donor, number, id(unique).

Each doctor is described by a name, id(unique), year of experience, University information, time of
employment. The stock which will keep the frozen eggs from donors will have status, enter time,
stock no(unique), urgency (since eggs will be removed from the stock after 10 years max).
Payment will have currency, amount, transfer type and credit card information such as card no
(unique), date. Customer will have name, id(unique), phone no, address information and background
preferences.

Each donor can donate multiple eggs. Doctors take eggs which donors donate. Eggs stays in
stocks for 10 years max. Donors and doctors benefit from the payment which customers make. Each
doctor can use only one egg in every procedure. Multiple eggs from the same donor can be put in
stock. Customers will use eggs that donors give.

I will be adding the SQL statements using the given directions and random data.
