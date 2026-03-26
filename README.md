# Facebook Ads CPC Analysis (SQL)

## Project Overview
This project analyzes Facebook Ads campaign data using SQL to calculate daily cost per click (CPC) and evaluate advertising efficiency over time.

---

## Dataset
- `facebook_ads_basic_daily`

---

## Analysis Task
The goal of this query is to:
- retrieve daily advertising spend
- retrieve daily clicks
- calculate cost per click (CPC)
- exclude rows where clicks are zero to avoid division errors

---

## SQL Query
```sql
SELECT 
    ad_date, 
    spend, 
    clicks, 
    spend / clicks AS spend_per_click
FROM public.facebook_ads_basic_daily
WHERE clicks > 0
ORDER BY ad_date DESC;
