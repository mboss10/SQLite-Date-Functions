/* Common SQL date functions in SQLite */

/* 1. DATE()
* returns the current date
* equivalent to CURRENT_DATE() in BigQuery or Postgres 
*/

SELECT DATE() as today


/* 2. TIME()
* returns the current time
* equivalent to NOW() in Postgres 
*/

SELECT TIME() 

/* 3. JULIANDAY(Arrival date) - JULIANDAY(Departure date)
* returns the number of days between 2 dates
* equuivalent to DATE_DIFF() in BigQuery
*/

SELECT JULIANDAY('2024-01-30') - JULIANDAY('2024-01-15') as days


/* 4. DATE(timestring, modifier)
* Used with +X days or -X days modifiers = Add or remove a certain number of days to a date 
* Equivalent of DATE_ADD() or DATE_SUB() in BigQuery
*/

SELECT date('now','+3 day') as "in 3 days"

SELECT date('now','-2 day')

/* 5. DATE(timestring, modifier)
 * used with weekday 0, start of month, start of year modifiers is equivalent to DATE_TRUNC() in BigQuery
 */

SELECT date('now','start of year') as "start of year"


/* 6. DATE(timestring, modifier 1, modifier 2, ..., modifier N)
 * The time value argument can be followed by zero or more modifiers that alter date and/or time. 
 * Each modifier is a transformation that is applied to the time value to its left. 
 * Modifiers are applied from left to right, the order is important.
 */

-- example to perform the equivalent of LAST_DAY() in BigQuery which gives the last day of the month
SELECT date('now','+1 month','start of month','-1 day') as "last day of month"

-- the 10th day of the month in 2 months
SELECT date('now','+2 month','start of month','+9 day') as "10th day in 2 months"