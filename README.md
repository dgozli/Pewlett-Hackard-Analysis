# Pewlett-Hackard-Analysis

## 1. Overview of the Analysis

The purpose of the present analysis was to determine the number of retiring employees for each title, and create a list of employees who are eligible to participate in a mentorship program. We relied on an ERD (shown below) to track the data contained in each table and to join the tables when necessary to create new tables that contain retiring employees and those eligible for the mentroship program.

## 2. Results

The csv file named retiring_titles stores the number of retiring employees grouped by title. The challenge in creating this database had to do with some employees being associated with two titles. Using DISTINCT IN() and ORDER BY in pgSQL we selected the most recent title associated with those employees to eliminate duplicates. 

We found that the largest number of retiring employees are Senior Engineers (25,916), followed by senior staff (24,926) and Engineers (9,285). Managers have the fewest number of retiring employees (only 2).

With regard to the mentorship program, we found 1,499 eligible employees, listed in the csv file named mentorship_eligibility. These employees are selected based on their current employment status and their year of birth (1965).

## 3. Summary

We created new tables based on the original tabels (Employees, Titles, Dept_Emp), namely: retirement_titles_temp_table.csv, unique_titles.csv, retiring_titles.csv, and mentorship_eligibilty.csv. We found retiring employees for each title, and created a list of employees eligible for the mentorship program. The tables do not contain duplicate records. 

