# artist-revenue-analysis
SQL analysis of artist revenue using Chinook datasets
# Artist Revenue Analysis (SQL)

## Business Question
- Which artists generate the most revenue for the business?
- How concentrated is total revenue across artists?
- Is artist performance driven more by premium pricing or popularity (units sold)?

## Dataset
Chinook music store sample database, representing a digital music store with artists,
albums, tracks, and sales transactions.

## Tools
- PostgreSQL
- SQL (CTEs, joins, window functions)

## Analysis
- Calculated total revenue per artist and ranked the top performers
- Used window functions to compute running totals and cumulative revenue percentages
- Compared revenue and units sold per artist to identify premium vs high-volume behavior


## Key Insights
- A small subset of artists contributes a disproportionate share of total revenue
- High revenue is not always correlated with high sales volume
- Some artists generate strong revenue with fewer units sold, indicating premium pricing
- Other artists achieve high popularity but lower monetization per unit

## Files
- `queries.sql` – SQL queries used in the analysis
