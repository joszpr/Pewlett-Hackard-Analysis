# Pewlett-Hackard-Analysis

## **Overview** ##

##### **Background** ##### 

Analysis performed for Pewlett Hackard with the objective of reviewing their employees expected retirement date and current positions in order to create initiatives to train new personal to replace the next generational retirement wave. The analysis was prompted by a concern that there will be a significant number of employees who will retire from important positions in a close timeline and measures need to be taken in order to prevent interruptions in the company operations.  

##### **Methodology** #####

The data was obtained from 6 CSV files containing identifying information for every company employee; first and last name, employee ID, hire date the positions they have had while working for the company, the time period in which they have had that position, the department they work for and the assigned ID number for every department in the company. 
The data was separated between multiple CSV files in order to prevent handling a data set that is too large to properly manage effectively. An Entity Relationship Diagram (ERD) was created in order to design a Database of the available data and establish relationships with the tables. 

![EmployeeDB png](https://user-images.githubusercontent.com/85839235/128660205-4c999227-706b-47cf-9032-eb087107dcac.png)

Figure 1 - Physical ERD of the Data design using Quick DBD.

Relationship analysis was performed with SQL utilizing pgAdmin. Very limited statistical analysis was needed in order to identify trends and patterns related to the study. 

## **Results** ##

##### **Data Description** #####

The employee records shows that the company has around 300,000 employees, many of them have been with the company for decades and have been promoted during their career to new positions. The company has objectively been successful in retaining employees for a long period of time and promoting from within. The relational data review yielded important highlights of the current employee dynamic. 


##### **Analysis Overview** #####

![Employees to Retire](https://user-images.githubusercontent.com/85839235/128660052-2f91e332-1dae-47ee-a1e8-925d5aba95bd.png)
Figure 2 - Sorting the number of future retirees by their current position title. 

-	Approximately 30% (90, 398) of the total employees meet or are close to meet the retirement criteria for the retirement package. 
-	As expected, those soon to retire are currently holding senior roles within the company. 

![Retirees by Department](https://user-images.githubusercontent.com/85839235/128660057-b35422de-9fc8-4c65-928a-a82221f8482d.png)
 Figure 3 - Number of retirees sorted by the Departments they currently work.  

-	The departments that will face the highest amount of employees retiring will be Development, Production and Sales. 

![Employees Elegible for Mentorship](https://user-images.githubusercontent.com/85839235/128660070-035193f5-3c24-40b2-bef3-d362d82eb3e7.png)
Figure 4 - Employees that meet criteria for mentorship in relation to their current title. 

- 	The data was sorted to look for employees that meet the criteria to participate in the Mentorship program, those born in 1965. Only 1,549 employees are under the current parameters. 

## **Summary** ##

#### Vacancies Replacement ####

![Employees by Position](https://user-images.githubusercontent.com/85839235/128660100-ba95308b-f470-45b1-976d-c67a1e3bfdfb.png)
Figure 5 – Comparison of future retirees by their current position title. 

From the 90,398 expected retirees a significant number is currently on senior roles. If the company plans to operates as it currently does and maintain the same numbers of positions, sizeable recruiting and training efforts will be needed to replace those experienced roles.

![Comparison](https://user-images.githubusercontent.com/85839235/128660113-cc5fdb00-089a-40ff-bf45-eb25d3358503.png)
Figure 6 - Comparison of employees to retire in contrast to those eligible for the mentorship program. 

The difference between the roles that need to be trained in comparison with those available to train them, as the current mentorship criteria is, is substantial. Further research may be needed regarding the extent and length of training needed for each position in order to identify if the number of mentors will be sufficient. It may be beneficial to inquire the Department Managers for input regarding training requirements. Without their input, it may be reasonable to presume from the data that the number of mentors will not be enough to train the replacements needed. 

#### **Conclusions and Recommendations** ####

##### Mentorship Program #####

The current criteria for those eligible to be a part of the mentorship program could be revised in order to expand the number of mentors available. Department managers may be able to provide more insight regarding their talent they are comfortable with trusting training. 
  
##### Review of the Operation #####
The number of retirees may present an opportunity to revise the operations of all departments in order to identify if there are positions that may be consolidated or not needed to be replaced. 

##### Hiring from Outside vs Promoting from within #####
Another option to fill the vacancies to open may be to hire outside talent. Each of these methods may present their own challenges.1️⃣ 
  
-	Promoting from within helps keep a steady flow of experience within the company talent and offers opportunity for advancements for the employees that have decided to make their career within the company. It also presents a domino effect in vacancies. For every employee promoted, a subsequent role will be vacant that may need to be replaced. It will leave a period where numerous additional roles within the company will be occupied by people new to their roles. 
  
-	Hiring from outside has its own challenges and benefits. There may be a benefit to recruit good talent from a competitor and reduce their asset inventory. By replacing a role with an experienced person from outside the company, there will not be a vacuum of new positions withing that career tree. Another negative aspect to consider is employee dissatisfaction by reducing opportunities of advancement within the current employees which may impact loyalty and lower retention. 2️⃣ 


##### Links #####
1️⃣ https://www.shrm.org/hr-today/news/hr-magazine/pages/010215-hiring.aspx

2️⃣ https://jumpstart-hr.com/the-pros-and-cons-of-promoting-from-within-vs-external-hiring/
