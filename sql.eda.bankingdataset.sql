-- We perform Exploratory Data Analysis (EDA) on a banking dataset related to direct marketing campaigns
-- EDA helps us understand the data's structure, detect patterns, test hypotheses, and prepare for further analysis
-- Our key Queries will be:-
-- Understand the dataset's scale, Gain insights into customer demographics, Identify common professions among customers, Segment customers by marital status
-- Assess customer's economic status, Determine the prevalence of housing loans, Check the number of personal loan holders


-- How many customers arein the dataset?
SELECT COUNT(*) AS total_customers
FROM BankMarketing.averages;

-- What is the average age of customers?
SELECT AVG(age) as average_age
FROM BankMarketing.averages;

-- What is the distribution of job types?
SELECT job, COUNT(*) AS count
FROM BankMarketing.averages
GROUP BY job                                   -- Groups data 
ORDER BY count DESC;                           -- Sorts Query Result

-- What is the distribution of job types + the average balance of each type?
SELECT job, COUNT(*) AS count, AVG(balance) AS average_balance
FROM BankMarketing.averages
GROUP BY job                                   -- Groups data 
ORDER BY count DESC;                           -- Sorts Query Result

-- How many customers are married, single and divorced?
SELECT marital, count(*) AS count
FROM BankMarketing.averages
GROUP BY marital
ORDER BY count DESC;

-- What is the average balance of customers?
SELECT AVG(balance) AS average_balance
FROM BankMarketing.averages;

-- What is the average balance of customers based on age?
SELECT age, AVG(balance) AS average_balance
FROM BankMarketing.averages
GROUP BY age
ORDER BY age DESC;

-- How many customers have housing loans?
SELECT housing, COUNT(*) AS count
FROM BankMarketing.averages
GROUP BY housing;

-- How many people have personal loans?
SELECT loan, COUNT(*) AS count
FROM BankMarketing.averages
GROUP BY loan;

-- What is the average duration of the last contact?
SELECT AVG(duration) AS average_duration
FROM BankMarketing.averages;

-- How many customers subscribed to a term deposit?
SELECT y, COUNT(*) AS count
FROM BankMarketing.averages
GROUP BY y;



