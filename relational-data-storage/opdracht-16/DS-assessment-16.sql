#okay en nu een lijst met achternaam manager en medewerker dus
#dat betekent dat de andere titels aanwezig zijn. Check tabel
SELECT * FROM Employee;
#yup we hebben title kolom en inderdaad we zien managers erin staan...
#oke eerst apart benoemen... hmm misschien e1 en e2? of is dit te vaag...
# managerlastname kan ook i guess

SELECT 
    Manager.Lastname AS ManagerLastName,
    Employee.Lastname AS EmployeeLastName
#okay now lets call it manager
FROM Employee AS Manager

#and join the same table and call it employee >> the folks who report rght
JOIN Employee AS Employee 
ON Employee.ReportsTo = Manager.EmployeeId;

#Oke en nu is q om de mensen te selecteren die dus rapporteren aan Mitchell. Ja ik kan dit gewoon zien maar stel
#dit kon niet want te veel data dan kan ik het volgende gebruiken like simpeler versie dan matlab
SELECT Employee.LastName AS EmployeeLastName
FROM Employee AS Manager
JOIN Employee AS Employee ON Employee.ReportsTo = Manager.EmployeeId
WHERE Manager.LastName = 'Mitchell';
