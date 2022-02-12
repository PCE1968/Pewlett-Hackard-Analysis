# Pewlett-Hackard-Analysis

## Overview
This an analysis of impending Pewlett-Hackard employee retirements, known as the "silver tsunami".

## Purpose
The purpose of this analysis is to gauge the impact of impending retirements and determine the feasibility of offering a mentorship program.

## Analysis

### Part 1, the Impact
We begin by determining which employees are approaching eligiblity for retirement. We will start by filtering the employee list by:
- Employee ID
- Name
- Job title
- Employment dates fro employees born bewteen 1952 and 1955

![Retiremenet eligible employees](Images/retirement_eligible_employees.png)

Upon closer inspection we can see that our list also includes employees that have already left the company, whether through retirement or other means. We also notice that this query captured all job titles for these employees. To narrow down our search we will run a query to give us only currently employed employees that are approaching retirement by adding a filter for:
- Employees most recent job title
- Employment 'to dates' that are '9999-01-01', which also renders employment dates irrelevant 

![Retirement job titles](Images/retirement_job_titles.png)

Here we can see that several of the eligible employees have the same job title. To truly understand the impact let's determine how many employees will be eligible for retirement by job title. We accomplish this by running a query on the last table to determine:
- Job title of retirement eligible employees
- How many of each job title

![Retirement title counts](Images/retirement_title_counts.png)

We can now see how the retirement of these employees will impact the company based on their job title.

### Part 2, The Mentorship Program
As a possible solution, a mentorship program staffed by eligible retiring employees has been suggested. The initial eligible demographic is employees that were born between January 1, 1965 and Decmber 31, 1965. Running our query based on this criteria provides the following result:

![Mentorship eligible](Images/mentorship_eligible.png)

We can see that we have most of the job titles represented in this candidate pool, so this appears to be a viable option to address some of the impact of the impending "silver tsunami".
## Summary
The impact of the impending "silver tsunami" will be significant, which is clearly shown when looking at the retirement eligible employees by job title.

![Retirement title counts](Images/retirement_title_counts.png)

The mentorship program appears to address some of the need, but when you look at the actual number of eligible employees by job title, there doesn't look like the employees that were born in 1965 will provide enough coverage.

![Mentorship counts](Images/mentorship_counts.png)

When we compare this result with the number of eligible emlpoyees we can see how much additional need we would have to support the incoming employees.

![Additional mentorship needs](Images/retirement_gap.png)

The difference in the table above demonstrates that there will still be a significant need for additional mentors.