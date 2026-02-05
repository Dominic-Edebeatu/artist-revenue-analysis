# artist-revenue-analysis
SQL analysis of artist revenue using Chinook datasets
# Artist Revenue Analysis (SQL)

## Business Question
Which artists generate the most revenue for the business, and is revenue driven by price or sales volume?

## Dataset
Chinook music store sample database.

## Tools
- PostgreSQL
- SQL (CTEs, joins, window functions)

## Analysis
- Calculated total revenue and units sold per artist
- Ranked artists by revenue and sales volume
- Computed cumulative revenue percentage to identify concentration effects

## Key Insights
- Revenue is not always correlated with units sold
- Some artists generate high revenue with fewer sales, indicating premium pricing
- A small group of artists contributes the majority of total revenue

## Files
- `queries.sql` – SQL queries used in the analysis
