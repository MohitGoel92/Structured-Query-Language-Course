# Structured Query Language

This repository is used to deliver a complete course on SQL. We will be methodically going through techniques that are used to query data to obtain the desired result. The theory we will be learning is then put into practice using real-world business tasks to deepen our learning by practising from all angles. By the end of this course, you may feel as if there may be more SQL to learn and you are correct – but like anything, the learning never stops. However, from my experiences of producing courses, having jobs in IT and Financial Services, the SQL knowledge acquired in this course will put you miles ahead of most SQL users; you may even be known as an SME (subject matter expert). If you are returning to SQL after a long time of not using it, this refresher will be breezy and should get you up to speed within a few days – you may even learn something new!

Regardless of your current level of knowledge, I am sure this repository will be of use. Please see below the list of topics that will be covered and the order in which they should be approached. You may even only need to learn a specific topic and that it okay too!

I hope you enjoy this course as much I have enjoyed producing and teaching it to students and colleagues just like you.

## Topics Covered

### Introduction (Downloading PostgreSQL and PgAdmin).

In this section we will cover what SQl is and why it is required. We will learn about SQL, databases, spreadsheets and analyse statistics regarding the importance of SQL and job opportunities. 

Key topics covered include:

- SQL Statement Fundamentals
- GROUP BY Statements
- JOINS
- More Complex Queries
- Creating Databases and Tables
- Conditional Expressions and Procedures

## Introduction

SQL stands for *Structured Query Language*. It is therefore a query language and not a programming language. A programming language gives a computer instructions (or steps) to solve a problem, but a query language is used purely for data manipulation [1]. Let's go through the concrete definition of a Query Language below.

**Query Language:** A language for the specification of procedures for the retrieval (and sometimes also modification) of information from a database [2]. Simply put, a query language is a computing language that communicates with a database.

**Database:** A database is an organised collection of structured information, or data, typically stored electronically in a computer system. A database is usually controlled by a database management system (DBMS). Together, the data and the DBMS, along with the applications that are associated with them, are referred to as a database system, often shortened to just database [14].

Data within the most common types of databases in operation today is typically modelled in rows and columns in a series of tables to make processing and data querying efficient. The data can then be easily accessed, managed, modified, updated, controlled, and organized. Most databases use structured query language (SQL) for writing and querying data.

SQL first appeared in 1974 when Edgar Codd, a computer scientist who worked for IBM wrote a paper describing a new system for organising data in databases [3] [4]. Although that means it dates back to the stone age of computing, it is still an important language to learn for most to all jobs in tech. And if you wish to acquire a job in data, for instance, data analytics, data engineering or data science, it is the most important skill to have under your belt. This is made apparent by the reasons given below:

- SQL is ubiquitous as it is used across all businesses in all sectors across the world. If you are looking at jobs that include an office, chances are that SQL will be highly desired.
- SQL is in demand and if it isn't one of your core skills, it may make things harder in the job market. Please see the chart below [5]:

<p align="center"> <img width="600" src= "/Pics_SQL/SQL_1.png"> </p>

- SQL is not only the most in-demand skill among all jobs in data but the proportion of jobs that require SQL has steadily increased year on year too. In 2017, SQL was also the most in-demand skill but was only listed on 35.7% of ads, this has increased substantially. Please see the chart below [6] [7]:

<p align="center"> <img width="600" src= "/Pics_SQL/SQL_2.jpg"> </p>

**Note:** If you are looking for your first role in data analytics, this skill becomes even more critical. This may be due to junior work being more SQL intensive before moving onto the heavy Machine Learning projects, but that by no means indicates Python or Machine Learning being more difficult – they simply take more time due to the amount of material you will cover. The repositories on my GitHub are actually enough to get you into your first data analytics job as they cover most areas of Python and Machine Learning. So whatever your dreams or ambitions are, just know I have you covered.

<p align="center"> <img width="2000" src= "/Pics_SQL/SQL_31.jpg"> </p>

In the diagram above, we observe that SQL makes up 1/5 of the most desired skills and is always in the top 3 desired skills. We therefore conclude that SQL is a vital skill that must be learned, practised and showcased to not only secure a role in data but to thrive. This may surprise you but SQL is the third most used language across the entire tech industry. This is made evident by the diagram below [8]:

<p align="center"> <img width="500" src= "/Pics_SQL/SQL_4.png"> </p>

If we zoom into data jobs like "data scientist" or "data analyst" in particular, we observe the following [10][11]:

<p align="center"> <img width="500" src= "/Pics_SQL/SQL_5.png"> </p>

<p align="center"> <img width="500" src= "/Pics_SQL/SQL_6.png"> </p>

- On average, an SQL developer takes home £47,961 [12]. This may be high or low depending on each individuals opinion, but as the average salary across the UK is just shy of £31,500, this cannot be deemed a poor salary – especially as it may be just the starting point for many analysts [13].

### Spreadsheets Vs Databases

Spreadsheets are for one-time or quick analysis. They're good for quick charting, reasonable data set sizes and are intuitive enough for untrained people to start using them.

Databases are great for data integrity, which means users are not able to change data. In addition, databases can handle massive amounts of data, where programs like Excel or Google Sheets would crash. In our current day and age, the amount of data that is generated, stored and analysed is very large, which makes databases even more essential. Databases can also effectively combine different datasets, something that may not be possible in spreadsheets. We may also automate steps for re-use due to the SQL syntax. Finally, databases can support data for websites and applications.

### Installation link for PostgreSQL (Perform First)

https://www.postgresql.org/download/

### Installation link for PgAdmin (Perform Second, As Add-on)

https://www.pgadmin.org/

## References

[1](https://medium.com/@cndro/why-sql-is-an-important-skill-for-anyone-to-learn-4119d4e7faa2). Why SQL is an Important Skill For Anyone To Learn.

[2](https://www.google.com/search?q=what+is+a+query+language&rlz=1C5CHFA_enGB838GB838&sxsrf=AOaemvJj-LimcM1tuGkMiQKZ0MjuagHiWA%3A1634243223856&ei=l5JoYZfjM43vgAb_4p_gAw&ved=0ahUKEwjXita23srzAhWNN8AKHX_xBzwQ4dUDCA4&uact=5&oq=what+is+a+query+language&gs_lcp=Cgdnd3Mtd2l6EAMyBQgAEIAEMgUIABCABDIECAAQHjIECAAQHjIECAAQHjIGCAAQCBAeMgYIABAIEB4yBggAEAgQHjIGCAAQCBAeMgYIABAIEB46BwgAEEcQsAM6BggAEAcQHjoICAAQCBAHEB5KBAhBGABQjEhYgE1gik9oAnACeACAAW-IAcwDkgEDNC4xmAEAoAEByAEIwAEB&sclient=gws-wiz). Oxford Languages.

[3](https://en.wikipedia.org/wiki/SQL). Wikipedia: SQL.

[4](https://www.seas.upenn.edu/~zives/03f/cis550/codd.pdf). A Relational Model of Data for
Large Shared Data Banks.

[5](https://www.dataquest.io/wp-content/uploads/2021/01/All-data-jobs-skills-chart.png). Percent of All Data Jobs Listing SQL (Source: Indeed.com, Dated: 29-01-2021).

[6](https://www.dataquest.io/wp-content/uploads/2021/01/Data-analyst-job-skills-chart.jpg). Percentage of All Data Analyst Jobs Listing SQL

[7](https://www.dataquest.io/wp-content/uploads/2021/01/Data-scientist-data-engineer-skills-charts-chart.jpg). Percent of Data Scientist and Data Engineering Jobs Listing SQL.

[8](https://www.dataquest.io/wp-content/uploads/2021/01/sql-use-among-all-developers.png). StackOverflow 2020 Developer Survey.

[9](https://insights.stackoverflow.com/survey/) StackOverflow Developer Survey Data

[10](https://www.dataquest.io/wp-content/uploads/2021/01/What-Languages-Do-People-with-Jobs-in-Data-Use-.png). What Languages Do People with Jobs in Data Use?

[11](https://www.dataquest.io/wp-content/uploads/2021/01/What-Languages-Do-People-with-Data-Scientist_Analyst-Jobs-Use-.png). What Languages Do People with Data Scientist/Analyst Jobs Use?

[12](https://www.glassdoor.co.uk/Salaries/sql-developer-salary-SRCH_KO0,13.htm?countryRedirect=true). Glassdoor SQL Developer average salary.

[13](https://www.gq-magazine.co.uk/article/average-uk-salary). Average UK salary: ever wondered how you stack up?

[14](https://www.oracle.com/in/database/what-is-database/). Oracle: What Is a Database?
