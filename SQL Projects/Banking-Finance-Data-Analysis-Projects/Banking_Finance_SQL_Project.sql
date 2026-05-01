CREATE DATABASE banking_finance ; 
USE banking_finance ;
CREATE TABLE customers(
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(20),
    gender ENUM('Male', 'Female', 'Other'),
    city VARCHAR(20),
    date_of_birth DATE,
    join_date DATE 
    );
INSERT INTO customers (customer_name, gender, city, date_of_birth, join_date) VALUES
('Aarav Sharma', 'Male', 'Hyderabad', '1998-05-12', '2022-01-10'),
('Ananya Reddy', 'Female', 'Bangalore', '1997-08-21', '2022-02-15'),
('Rohit Verma', 'Male', 'Pune', '1995-11-03', '2021-12-05'),
('Sneha Patil', 'Female', 'Mumbai', '1999-02-14', '2023-03-01'),
('Karthik Rao', 'Male', 'Chennai', '1996-07-19', '2022-06-18'),
('Priya Singh', 'Female', 'Delhi', '1998-10-11', '2021-09-09'),
('Vikram Joshi', 'Male', 'Pune', '1994-04-23', '2020-05-15'),
('Neha Kapoor', 'Female', 'Mumbai', '1997-01-30', '2023-01-25'),
('Rahul Mehta', 'Male', 'Ahmedabad', '1995-06-17', '2022-08-12'),
('Pooja Nair', 'Female', 'Chennai', '1996-12-08', '2021-11-19'),
('Amit Kumar', 'Male', 'Delhi', '1993-09-27', '2020-03-10'),
('Divya Iyer', 'Female', 'Coimbatore', '1999-04-04', '2023-02-20'),
('Suresh Naidu', 'Male', 'Hyderabad', '1992-07-15', '2019-06-01'),
('Riya Malhotra', 'Female', 'Delhi', '1998-11-29', '2022-10-05'),
('Manoj Das', 'Male', 'Kolkata', '1994-05-06', '2021-07-18'),
('Kavya Menon', 'Female', 'Bangalore', '1999-03-22', '2023-04-12'),
('Nikhil Jain', 'Male', 'Jaipur', '1996-08-09', '2022-09-01'),
('Shalini Gupta', 'Female', 'Noida', '1997-02-13', '2021-01-15'),
('Ramesh Yadav', 'Male', 'Lucknow', '1991-12-01', '2019-10-10'),
('Aishwarya Kulkarni', 'Female', 'Pune', '1998-06-25', '2022-12-19'),
('Harsha Vardhan', 'Male', 'Hyderabad', '1995-03-18', '2021-05-08'),
('Meera Joshi', 'Female', 'Mumbai', '1999-09-14', '2023-06-05'),
('Sanjay Rao', 'Male', 'Bangalore', '1993-01-07', '2020-08-23'),
('Isha Khanna', 'Female', 'Delhi', '1997-07-31', '2022-11-11'),
('Pranav Deshmukh', 'Male', 'Nagpur', '1996-10-20', '2021-04-03');

    
CREATE TABLE branches(
branch_id INT AUTO_INCREMENT PRIMARY KEY ,
branch_name VARCHAR(20),
city VARCHAR(20)
);
INSERT INTO branches (branch_name, city) VALUES
('Main Branch', 'Hyderabad'),
('City Center', 'Bangalore'),
('Tech Park', 'Pune'),
('Central Branch', 'Mumbai'),
('Metro Branch', 'Delhi'),
('Lake View', 'Chennai'),
('Hill Top', 'Coimbatore');

CREATE TABLE accounts(
 account_id INT auto_increment PRIMARY KEY,
 customer_id INT ,
 branch_id INT,
 account_type ENUM('Savings', 'Current', 'Fixed'),
 balance DECIMAL (12,2),
 open_date DATE,
 FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
 FOREIGN KEY (branch_id) REFERENCES  branches(branch_id)
 );
 INSERT INTO accounts (customer_id, branch_id, account_type, balance, open_date) VALUES
(1,1,'Savings',45000,'2022-01-10'),
(2,2,'Current',78000,'2022-02-15'),
(3,3,'Savings',56000,'2021-12-05'),
(4,4,'Fixed',120000,'2023-03-01'),
(5,6,'Savings',62000,'2022-06-18'),
(6,5,'Current',90000,'2021-09-09'),
(7,3,'Savings',51000,'2020-05-15'),
(8,4,'Savings',68000,'2023-01-25'),
(9,1,'Current',83000,'2022-08-12'),
(10,6,'Savings',47000,'2021-11-19'),
(11,5,'Fixed',150000,'2020-03-10'),
(12,7,'Savings',39000,'2023-02-20'),
(13,1,'Current',99000,'2019-06-01'),
(14,5,'Savings',54000,'2022-10-05'),
(15,2,'Savings',61000,'2021-07-18'),
(16,2,'Current',72000,'2023-04-12'),
(17,7,'Savings',46000,'2022-09-01'),
(18,5,'Savings',52000,'2021-01-15'),
(19,4,'Current',88000,'2019-10-10'),
(20,3,'Savings',60000,'2022-12-19'),
(21,1,'Fixed',130000,'2021-05-08'),
(22,4,'Savings',57000,'2023-06-05'),
(23,2,'Current',95000,'2020-08-23'),
(24,5,'Savings',48000,'2022-11-11'),
(25,3,'Savings',55000,'2021-04-03');

    
CREATE TABLE transactions(
transaction_id INT auto_increment PRIMARY KEY,
account_id INT ,
transaction_date DATE,
transaction_type ENUM('Deposit', 'Withdrawal', 'Transfer'),
amount DECIMAL(10,2),
FOREIGN KEY (account_id) REFERENCES accounts(account_id)
);
INSERT INTO transactions (account_id, transaction_date, transaction_type, amount) VALUES
(1,'2023-06-01','Deposit',10000),
(1,'2023-06-10','Withdrawal',5000),
(2,'2023-05-15','Deposit',15000),
(3,'2023-04-20','Withdrawal',7000),
(4,'2023-06-05','Deposit',20000),
(5,'2023-03-12','Transfer',8000),
(6,'2023-02-18','Withdrawal',6000),
(7,'2023-06-22','Deposit',9000),
(8,'2023-05-30','Deposit',12000),
(9,'2023-04-14','Withdrawal',4000);
INSERT INTO transactions (account_id, transaction_date, transaction_type, amount) VALUES
(10, '2023-07-05', 'Deposit', 8000),
(12, '2023-07-12', 'Withdrawal', 3000),
(15, '2023-07-18', 'Transfer', 6500),
(18, '2023-07-25', 'Deposit', 11000);


CREATE TABLE loans(
loans_id INT auto_increment PRIMARY KEY,
customer_id INT,
loan_type ENUM('Home', 'Personal', 'Education', 'Vehicle'),
loan_amount DECIMAL(12,2),
interest_rate DECIMAL(5,2),
loan_status ENUM('Active', 'Closed', 'Default'),
start_date DATE,
FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
INSERT INTO loans (customer_id, loan_type, loan_amount, interest_rate, loan_status, start_date) VALUES
(3,'Home',2500000,8.5,'Active','2022-01-01'),
(6,'Personal',500000,11.0,'Closed','2020-09-15'),
(11,'Vehicle',800000,9.2,'Active','2021-03-20'),
(14,'Education',600000,7.5,'Active','2022-10-10'),
(19,'Home',3000000,8.2,'Default','2019-11-01'),
(21,'Personal',400000,10.5,'Closed','2021-06-10'),
(23,'Vehicle',900000,9.0,'Active','2020-09-01');
INSERT INTO loans (customer_id, loan_type, loan_amount, interest_rate, loan_status, start_date) VALUES
(2, 'Education', 450000, 7.8, 'Active', '2023-01-15'),
(8, 'Personal', 300000, 11.5, 'Closed', '2021-06-20'),
(16, 'Vehicle', 750000, 9.1, 'Active', '2022-09-05'),
(20, 'Home', 2800000, 8.4, 'Active', '2023-03-10');


SELECT * FROM customers;
SELECT * FROM branches;
SELECT * FROM accounts;
SELECT * FROM transactions;
SELECT * FROM loans;

-- INSIGHTS & QUESTIONS 
-- 1. Metro branches hold the highest deposits AND customer distribution .
-- 1. Display all customers from Mumbai.
SELECT *FROM customers WHERE city="Mumbai";
-- 2.Show all branches located in metro cities.
SELECT * from customers where city IN ('Mumbai', 'Delhi', 'Bangalore', 'Chennai', 'Hyderabad', 'Pune') ;
-- 3.Show total number of customers in each city.
SELECT city ,count(*) AS total_customers from customers group by city ;
-- 4.Show distinct cities from the customers table.
SELECT distinct city from customers;
-- Which branch type holds the highest total deposits?
SELECT b.branch_name, b.city, SUM(a.balance) AS total_deposits
FROM accounts a JOIN branches b ON a.branch_id = b.branch_id
GROUP BY b.branch_name, b.city ORDER BY total_deposits DESC;


select * from accounts ;
-- 2. Few customers control a large portion of total balance
-- 5.Display all accounts ordered by balance (highest first).
SELECT*FROM accounts order by balance desc ;
-- 6.Find top 5 accounts with highest balance.
SELECT* FROM accounts order by balance desc limit 5;
-- 7.Find total balance held by each branch.
select b.branch_id,b.city,sum(a.balance) as total_balance from branches b join accounts a 
on b.branch_id = a.branch_id group by b.branch_id,b.branch_name,b.city
order by total_balance DESC ; 

-- 8.Identify the branch with the highest total balance.
SELECT b.branch_name,b.city, sum(a.balance) as total_balance from branches b join accounts a
on b.branch_id = a.branch_id group by b.branch_id,b.branch_name,b.city
order by total_balance DESC LIMIT 1;
-- 9.Calculate average balance per branch.
select b.branch_name,b.city, avg(a.balance) as average_balance from branches b join accounts a 
on b.branch_id = a.branch_id 
group by b.branch_name,b.city
order by  average_balance ;
-- 10.Find top 5 customers by account balance.
SELECT c.customer_id,c.customer_name,a.account_type,a.balance FROM customers c JOIN accounts a 
ON c.customer_id = a.customer_id ORDER BY a.balance DESC LIMIT 5;

-- 3.Loan penetration is low – strong cross-sell opportunity
-- 11.Show all active loans.
SELECT *from loans where loan_status='Active';
-- 12.Show total loan amount for each loan type.
SELECT loan_type ,sum(loan_amount) AS total_loan from loans group by loan_type;
-- 13.Find customers who have both an account and a loan.
select a.account_id,a.customer_id, a.account_type,l.loans_id,l.loan_type  from accounts a join loans l on a.customer_id= l.customer_id ;
-- 13.List customers who have never taken a loan.
select  c.customer_id,c.customer_name, c.city from customers c  left join loans l 
on c.customer_id = l.customer_id  where l.customer_id is null ;
-- 14.Find total loan amount issued by loan type.
select loan_type ,sum(loan_amount) 
      as total_loan from loans 
group by loan_type order by total_loan ;
-- 15.Identify customers whose loan status is ‘Default’.
select  c.customer_id,c.customer_name,l.loan_type,l.loan_amount,l.loan_status 
 from  customers c 
 join loans l on c.customer_id= l.customer_id where l.loan_status ='Default' ;

-- 4.Transaction activity shows limited but focused engagement.
-- 1.Display all transactions of type ‘Deposit’.
SELECT * from transactions where transaction_type='Deposit';
-- 10. List transactions made in the year 2023.
SELECT *from transactions where year(transaction_date) =2023;
-- 30.Identify customers with more than one transaction.
select c.customer_id ,c.customer_name , count(t.transaction_id) as total_transaction
from customers c join accounts a on c.customer_id= a.customer_id 
join transactions t on  a.account_id= t.account_id group by c.customer_id ,c.customer_name
having count(t.transaction_id) >1;
-- 31.Show total transaction amount per account.
select c.customer_id ,c.customer_name , sum(t.transaction_id) as total_transaction
from customers c join accounts a on c.customer_id= a.customer_id 
join transactions t on  a.account_id= t.account_id group by c.customer_id ,c.customer_name
having sum(t.transaction_id) >1;
-- 36.Show customers who have made withdrawals only.
SELECT c.customer_id, c.customer_name FROM customers c JOIN accounts a
 ON c.customer_id = a.customer_id JOIN transactions t ON a.account_id = t.account_id
GROUP BY c.customer_id, c.customer_name
HAVING SUM(t.transaction_type = 'Deposit') = 0 AND SUM(t.transaction_type = 'Withdrawal') > 0;

-- 37.Calculate total deposits and withdrawals separately.
SELECT 
    SUM(CASE WHEN transaction_type = 'Deposit' THEN amount ELSE 0 END) AS total_deposits,
    SUM(CASE WHEN transaction_type = 'Withdrawal' THEN amount ELSE 0 END) AS total_withdrawals
FROM transactions;


-- 5.Savings accounts dominate the customer base
-- 3. List all savings accounts with balance above 50,000.
SELECT * FROM accounts where account_type ='Savings' AND balance >50000 ;
-- 16.Count number of accounts per account type.
SELECT account_type, count(*) AS total_accounts from accounts group by account_type ;
-- 25.Find total number of accounts per account type.
select account_type, count(*) as total_accounts from accounts group by account_type order by total_accounts;


-- 4.Fetch customers who joined after 2022.
SELECT * FROM customers where join_date >'2022-12-31';
-- 7.List accounts opened before 2021.
SELECT * from accounts WHERE open_date < '2021-01-01'; 
-- 8. Display customers whose city is different from their branch city.
SELECT 
    c.customer_name, 
    c.city AS customer_city, 
    b.city AS branch_city
FROM customers c
JOIN accounts a ON c.customer_id = a.customer_id
JOIN branches b ON a.branch_id = b.branch_id
WHERE c.city != b.city;

-- 9.Show all loans greater than 10 lakhs.
SELECT *from loans where loan_amount > 100000;
-- 15.Find customers whose name starts with ‘S’.
SELECT *from customers where customer_name like 'S%'; 
-- 16.Count number of accounts per account type.
SELECT account_type, count(*) AS total_accounts from accounts group by account_type ;
-- 19.Display transactions ordered by transaction date.
select*from transactions order by transaction_date;
-- 20.Find accounts with balance greater than 50,000.
select * from accounts where balance >50000;
--  21.Count number of customers joined in each year.
select  year(join_date) as join_year,
        count(*) as total_customers
from customers  group by year(join_date) order by join_year;

SELECT * FROM customers;
SELECT * FROM branches;
SELECT * FROM accounts;
SELECT * FROM transactions;
SELECT * FROM loans;
-- 24.Show customer name, account type, and balance.
select c.customer_name, a. account_type ,a.balance
from customers c
join accounts a on 
c.customer_id =a.customer_id ;
-- 25.Find total number of accounts per account type.
select account_type, count(*) as total_accounts from accounts group by account_type order by total_accounts;
-- 30.Identify customers with more than one transaction.
select c.customer_id ,c.customer_name , count(t.transaction_id) as total_transaction
from customers c join accounts a on c.customer_id= a.customer_id 
join transactions t on  a.account_id= t.account_id group by c.customer_id ,c.customer_name
having count(t.transaction_id) >1;
-- 31.Show total transaction amount per account.
select c.customer_id ,c.customer_name , sum(t.transaction_id) as total_transaction
from customers c join accounts a on c.customer_id= a.customer_id 
join transactions t on  a.account_id= t.account_id group by c.customer_id ,c.customer_name
having sum(t.transaction_id) >1;
-- 34.Identify customers whose loan status is ‘Default’.
select  c.customer_id,c.customer_name,l.loan_type,l.loan_amount,l.loan_status 
 from  customers c 
 join loans l on c.customer_id= l.customer_id where l.loan_status ='Default' ;
-- 35.Find branch-wise count of customers.
select b.branch_name, b.city, count(distinct a.customer_id) as total_customers from branches b join accounts a on b.branch_id= a.branch_id 
group by b.branch_name,b.city order by total_customers DESC ;
