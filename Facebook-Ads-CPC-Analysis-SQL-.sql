select ad_date, spend, clicks, spend / clicks as spend_per_click
from public.facebook_ads_basic_daily
where clicks > 0
order by ad_date desc;