-- Write your MySQL query statement below
SELECT firstName, lastName, city, state 
FROM person 
LEFT JOIN address on person.personId = address.personId;