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

### TIME()

Returns the current time equivalent to NOW() in Postgres. 

```
SELECT TIME()
```
##### Results
<img src="https://github.com/mboss10/SQLite-Date-Functions/blob/main/TIME().png" width="400">
