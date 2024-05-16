# SQLite Date Functions

## Context

This is a mini knowledge base article to help me easily find references and examples of date functions in SQLite.

## Dataset

In this article, I am not using a specific set of data, but calling date functions against a SQLite database to explore the options and get examples to reuse.

## Common SQL date functions in SQLite

### DATE()

Returns the current date. Equivalent to CURRENT_DATE() in BigQuery or Postgres.

```
SELECT DATE() as today
```
##### Results
<img src="https://github.com/mboss10/SQLite-Date-Functions/blob/main/DATE().png" width="400">

---

### TIME()

Returns the current time equivalent to NOW() in Postgres. 

```
SELECT TIME()
```
##### Results
<img src="https://github.com/mboss10/SQLite-Date-Functions/blob/main/TIME().png" width="400">

---

### JULIANDAY(Arrival date) - JULIANDAY(Departure date)

Returns the number of days between 2 dates. Equivalent to DATE_DIFF() in BigQuery.

```
SELECT JULIANDAY('2024-01-30') - JULIANDAY('2024-01-15') as days
```
##### Results
<img src="https://github.com/mboss10/SQLite-Date-Functions/blob/main/JULIANDAY().png" width="400">

---

### DATE(timestring, modifier)

Used with +X days or -X days modifiers = Add or remove a certain number of days to a date. Equivalent of DATE_ADD() or DATE_SUB() in BigQuery.

```
SELECT date('now','+3 day') as "in 3 days"
```
##### Results
<img src="https://github.com/mboss10/SQLite-Date-Functions/blob/main/in%203%20days.png" width="400">

---

### DATE(timestring, modifier)

Used with weekday 0, start of month, start of year modifiers is equivalent to DATE_TRUNC() in BigQuery.

```
SELECT date('now','start of year') as "start of year"
```
##### Results
<img src="https://github.com/mboss10/SQLite-Date-Functions/blob/main/start%20of%20year.png" width="400">

---

### DATE(timestring, modifier 1, modifier 2, ..., modifier N)

The time value argument can be followed by zero or more modifiers that alter date and/or time.Each modifier is a transformation that is applied to the time value to its left. Modifiers are applied from left to right, the order is important.

```
-- example to perform the equivalent of LAST_DAY() in BigQuery which gives the last day of the month
SELECT date('now','+1 month','start of month','-1 day') as "last day of month"

-- the 10th day of the month in 2 months
SELECT date('now','+2 month','start of month','+9 day') as "10th day in 2 months"
```
##### Results
<img src="https://github.com/mboss10/SQLite-Date-Functions/blob/main/last%20day%20of%20month.png" width="400">
<img src="https://github.com/mboss10/SQLite-Date-Functions/blob/main/10th%20day%20in%202%20months.png" width="400">

## References

The complete SQL script file is available here: (SQLite Date Functions)["https://github.com/mboss10/SQLite-Date-Functions/blob/main/SQLite%20Date%20Functions.sql"]
