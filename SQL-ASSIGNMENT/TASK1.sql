create table employee(
emp_id INT PRIMARY KEY AUTO_INCREMENT,
emp_name varchar(300),
address varchar(300),
city varchar(250),
state varchar(250)
);
 use mrinal;
 drop table mrinal;
 
select * from employee;
 
 
INSERT INTO Employee (emp_name, address, city, state)
VALUES
    ("Ravi", "XYZ Colony", "Raipur", "Chhattisgarh"),
("neha", "ABC Street", "Bilaspur", "Chhattisgarh"),
("Raju", "PQR Lane", "Dehradun", "Uttarakhand"),
("kanika", "LMN Road", "Haridwar", "Uttarakhand"),
("Raju", "DEF Avenue", "Kolkata", "West Bengal"),
("starc", "GHI Plaza", "Durgapur", "West Bengal"),
("johnson", "JKL Tower", "Bhubaneswar", "Odisha"),
("Phillips", "MNO Complex", "Cuttack", "Odisha"),
("Vikas", "UVW Street", "Raigarh", "Chhattisgarh"),
("Klasen", "XYZ Colony", "Roorkee", "Uttarakhand"),
("Rohit", "ABC Street", "Howrah", "West Bengal"),
("bumrah", "PQR Lane", "Rourkela", "Odisha"),
("Sushant", "LMN Road", "Jagdalpur", "Chhattisgarh"),
("Sam", "DEF Avenue", "Nainital", "Uttarakhand"),
("Arjun", "GHI Plaza", "Asansol", "West Bengal"),
("Anjan", "JKL Tower", "Puri", "Odisha"),
("yogi", "MNO Complex", "Bilaspur", "Chhattisgarh"),
("modi", "UVW Street", "Dehradun", "Uttarakhand"),
("Raja", "XYZ Colony", "Kolkata", "West Bengal"),
("Sweta", "ABC Street", "Cuttack", "Odisha"),
("Gaurav", "PQR Lane", "Raipur", "Chhattisgarh"),
("Kirti", "LMN Road", "Haridwar", "Uttarakhand"),
("Amit", "DEF Avenue", "Howrah", "West Bengal"),
("Nisha", "GHI Plaza", "Bhubaneswar", "Odisha"),
("Alok", "JKL Tower", "Jagdalpur", "Chhattisgarh"),
("Pallavi", "MNO Complex", "Roorkee", "Uttarakhand"),
("Prateek", "UVW Street", "Kolkata", "West Bengal"),
("Shreya", "XYZ Colony", "Puri", "Odisha"),
("Vishal", "ABC Street", "Raigarh", "Chhattisgarh"),
("Komal", "PQR Lane", "Nainital", "Uttarakhand"),
("Rahul", "LMN Road", "Asansol", "West Bengal"),
("Sheetal", "DEF Avenue", "Rourkela", "Odisha"),
("Avinash", "GHI Plaza", "Bilaspur", "Chhattisgarh"),
("Kiran", "JKL Tower", "Dehradun", "Uttarakhand"),
("Varun", "MNO Complex", "Kolkata", "West Bengal"),
("Anamika", "UVW Street", "Cuttack", "Odisha"),
("Abhishek", "XYZ Colony", "Raipur", "Chhattisgarh"),
("Aarti", "ABC Street", "Haridwar", "Uttarakhand"),
("Ravi", "PQR Lane", "Howrah", "West Bengal"),
("Sweta", "LMN Road", "Bhubaneswar", "Odisha"),
("Sumit", "DEF Avenue", "Jagdalpur", "Chhattisgarh"),
("Deepika", "GHI Plaza", "Roorkee", "Uttarakhand"),
("Rohan", "JKL Tower", "Kolkata", "West Bengal"),
("Soniya", "MNO Complex", "Puri", "Odisha"),
("Amar", "UVW Street", "Raigarh", "Chhattisgarh"),
("Nidhi", "XYZ Colony", "Nainital", "Uttarakhand"),
("Arun", "ABC Street", "Asansol", "West Bengal"),
("Preeti", "PQR Lane", "Rourkela", "Odisha"),
("Vivek", "LMN Road", "Bilaspur", "Chhattisgarh"),
("Madhu", "DEF Avenue", "Dehradun", "Uttarakhand");

create table department(
dept_id int Primary Key auto_increment,
dept_name varchar(355));
 
 
 
select * from department;
 
 
insert into department(dept_name)
values
("Human Resources"),
("Finance and Accounting"),
("Sales and Marketing"),
("Information Technology"),
("Operations"),
("Customer Service and Support");
 
 
 
create table salary_heads(
head_id int Primary key auto_increment,
head_name varchar(355),
head_type varchar(30));
 
 
select * from salary_heads;
 
drop table salary_heads;
 
insert into salary_heads(head_name, head_type)
values
("Conv","Earn"),
("PF","Earn"),
("WF","Ded");
 
 
 
 
create table data( 
emp_id int ,
dept_id int,
head_id int,
year int,
month int,
Amount int,
FOREIGN KEY (emp_id) REFERENCES employee(emp_id),
FOREIGN KEY (dept_id) REFERENCES department(dept_id),
FOREIGN KEY (head_id) REFERENCES salary_heads(head_id)
);
 
 
select * from data;
 
drop table data;
DELIMITER //
 
CREATE PROCEDURE insert_data_with_while_loop()
BEGIN
    DECLARE i INT DEFAULT 1;
    DECLARE j INT;
    DECLARE k INT;
    DECLARE random_dept_id INT;
 
    -- Loop condition
    WHILE i <= 10 DO
        -- Loop body
        SET j = 1;
        SET random_dept_id = FLOOR(RAND() * 6) + 1; -- Assign random department ID between 1 and 6
 
        WHILE j <= 12 DO
            SET k = 1;
            WHILE k <= 3 DO
                INSERT INTO data (emp_id, dept_id, head_id, year, month, Amount)
                VALUES (
                    i, 
                    random_dept_id,
                    k,                      -- Assuming a default head_id of 1
                    2023,                   -- Year 2022
                    j,                      -- Month
                    FLOOR(RAND() * 100000)  -- Random Amount
                );
                SET k = k + 1;
            END WHILE;
            SET j = j + 1;
        END WHILE;
 
        -- Increment counter
        SET i = i + 1;
    END WHILE;
END //
 
DELIMITER ;
 
-- Call the stored procedure
CALL insert_data_with_while_loop();
DROP PROCEDURE IF EXISTS insert_data_with_while_loop;
 
 
 
 
 
 
-- SUM of all the amount paid
select sum(amount) from data
where year = 2023 or year = 2022;
 
SELECT emp_id, sum(amount)
FROM data
WHERE year = 2023 and head_id = (SELECT head_id FROM salary_heads WHERE head_name = 'PF')
group by emp_id;
 
 
SELECT head_id, sum(amount)
FROM data
group by head_id;
 
 
SELECT dept_id, MAx(amount) AS total_amount
FROM data join employee
WHERE head_id = (SELECT head_id FROM salary_heads WHERE head_name = 'Conv')
GROUP BY dept_id;
 
 
SELECT e.emp_name, d.dept_id, MAX(d.amount) AS total_amount
FROM data d
JOIN employee e ON d.emp_id = e.emp_id
WHERE d.head_id = (SELECT head_id FROM salary_heads WHERE head_name = 'Conv')
GROUP BY e.emp_name, d.dept_id;
 
 
select dept_id,sum(amount) from data where head_id = (
(select head_id from salary_heads where head_name = "WF")) and year = 2023 
group by dept

---------QUES 1: Total salary given--------------
select SUM(AMOUNT) FROM finaldata WHERE EMP_ID=1;
 
 
---------Employee wise total PF --------------
 
select SUM(Amount) from finaldata where head_id=4;
 
 
--------- salary head wise total amount paid-------
SELECT head_id, sum(amount) FROM finaldata group by head_id;
SELECT dept_id, MAX(Amount) AS Max_Conv
    FROM Finaldata
    WHERE head_id = (SELECT head_id FROM Head WHERE Head_Name = 'Conv')
    GROUP BY dept_id;
 
 
--------Department wise worker welfare contribution /share % of last year only.------
 
 
SELECT 
    d.Dept_Name,
    ROUND(SUM(CASE WHEN f.head_id = (SELECT head_id FROM Head WHERE Head_Name = 'worker welfare') THEN f.Amount END) 
          * 100.0 / 
          (SELECT SUM(f.Amount) 
           FROM Finaldata f 
           WHERE f.head_id = (SELECT head_id FROM Head WHERE Head_Name = 'worker welfare') 
                 AND f.year = (SELECT MAX(year) - 1 FROM Finaldata)), 2) AS Share_Percentage
FROM Finaldata f
JOIN Department d ON f.dept_id = d.Dept_id
WHERE f.year = (SELECT MAX(year) - 1 FROM Finaldata)
GROUP BY d.Dept_Name;

