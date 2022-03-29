-- Assessment Test 2 

-- Q: How can you retrieve all the information from the facilities table?

SELECT * FROM cd.facilities;

-- Q: You want to print out a list of all of the facilities and their cost to members. 
--    How would you retrieve a list of only facility names and costs?

SELECT name, membercost FROM cd.facilities;

-- Q: How can you produce a list of facilities that charge a fee to members?

SELECT * FROM cd.facilities
WHERE membercost > 0;

-- Q: How can you produce a list of facilities that charge a fee to members, 
--    and that fee is less than 1/50th of the monthly maintenance cost? 
--    Return the facid, facility name, member cost, and monthly maintenance of the facilities in question.

SELECT facid, name, membercost, monthlymaintenance FROM cd.facilities
WHERE membercost < monthlymaintenance/50;

-- Q: How can you produce a list of all facilities with the word 'Tennis' in their name?

SELECT * FROM cd.facilities
WHERE name ILIKE '%tennis%';

-- Q: How can you retrieve the details of facilities with ID 1 and 5?

SELECT * FROM cd.facilities
WHERE facid IN (1,5);

-- Q: How can you produce a list of members who joined after the start of September 2012? 
--    Return the memid, surname, firstname, and joindate of the members in question.

SELECT memid, surname, firstname, joindate FROM cd.members
WHERE joindate >= '2012-09-01';

-- Q: How can you produce an ordered list of the first 10 surnames in the members table? 
--    The list must not contain duplicates.

SELECT DISTINCT(surname) FROM cd.members
ORDER BY surname
LIMIT 10;

-- Q: You'de like to get the signup date of your last member. How can you retrieve this information?

SELECT * FROM cd.members
ORDER BY joindate desc
LIMIT 1;

-- Q: Produce a count of the number of facilities that have a cost to guests of 10 or more.

SELECT COUNT(*) FROM cd.facilities
WHERE guestcost >=10;

-- Q: Produce a list of the total number of slots booked per facility in the month of September 2012. 
--    Produce an output table consisting of facility id and slots, sorted by the number of slots.

SELECT facid, SUM(slots) FROM cd.bookings
WHERE EXTRACT(month from starttime) = 9
GROUP BY facid
ORDER BY SUM(slots);

-- Q: Produce a list of facilities with more than 1000 slots booked. 
--    Produce an output table consisting of facility id and total slots, sorted by facility id.

SELECT facid, SUM(slots) FROM cd.bookings
GROUP BY facid
HAVING SUM(slots) > 1000
ORDER BY facid;

-- Q: How can you produce a list of the start times for bookings for tennis courts, for the date '2012-09-21'? 
--    Return a list of start time and facility name pairings, ordered by the time.

SELECT name, CAST(starttime as time) FROM cd.facilities
INNER JOIN cd.bookings
ON cd.facilities.facid=cd.bookings.facid
WHERE starttime BETWEEN '2012-09-21' AND '2012-09-22' AND name IN ('Tennis Court 1', 'Tennis Court 2');

-- Q: How can you produce a list of the start times for bookings by members named 'David Farrell'?

SELECT * FROM cd.members WHERE firstname = 'David' and surname = 'Farrell';
SELECT * FROM cd.bookings WHERE memid = 28;