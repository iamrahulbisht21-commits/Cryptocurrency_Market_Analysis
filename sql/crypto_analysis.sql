-- CRYPTO ANALYSIS: BTC vs ETC

-- (1)How has the value of a fixed investment changed from the earliest recorded data point to the present day?
SELECT 
    (1000 / (SELECT BTC_Close FROM crypto_ready ORDER BY date LIMIT 1)) 
    * (SELECT BTC_Close FROM crypto_ready ORDER BY date DESC LIMIT 1) AS final_value;
   
 -- (2) Determining the percentage difference between the current market price and the historical All-Time High (ATH).  
    SELECT date, 
       ((BTC_Close - BTC_Open) / BTC_Open) * 100 AS daily_change_pct
FROM crypto_ready
ORDER BY daily_change_pct ASC -- Biggest drop first
LIMIT 5;

-- (3)Analyzing the variance in price stability between traditional business days (Monday–Friday) and weekends (Saturday–Sunday).
SELECT BTC_Close AS current_price,
       (SELECT MAX(BTC_Close) FROM crypto_ready) AS highest_ever,
       (BTC_Close / (SELECT MAX(BTC_Close) FROM crypto_ready) - 1) * 100 AS discount_pct
FROM crypto_ready ORDER BY date DESC LIMIT 1;


-- (4)Evaluating the average trading volume over time to measure the growth of network adoption.
SELECT DATE_FORMAT(date, '%Y-%m') AS month, 
       AVG(ETH_volume) AS average_daily_usage
FROM crypto_ready
GROUP BY Date
ORDER BY Date DESC;

-- (5)Identifying whether price increases are supported by a corresponding increase in trading activity (Volume).
SELECT 
    DATE_FORMAT(date, '%Y-%m') AS month, 
    AVG(ETH_volume) AS average_daily_traffic,
    MAX(ETH_volume) AS busiest_day_this_month
FROM crypto_ready
GROUP BY month
ORDER BY month DESC;

-- (6)Analyzing daily performance patterns to see if certain times of the month consistently yield better results.
SELECT DAY(date) AS day_of_month, 
       AVG((ETH_Close - ETH_Open) / ETH_Open* 100) AS avg_performance
FROM crypto_ready
GROUP BY day_of_month
ORDER BY avg_performance DESC;


-- (7)Compare the cumulative growth of both assets from a shared starting point to determine which has provided a better "yield" over the total timeframe.
-- Comparing the normalized growth (starting at 1.0)
SELECT Date, BTC_Normalized, ETH_Normalized 
FROM crypto_ready 
ORDER BY Date DESC;

-- (8)Analyze the daily volatility of both assets to identify which provides a "bumpier" ride for the investor.
-- Comparing the risk/shakiness of both assets side-by-side
SELECT Date, BTC_Volatility, ETH_Volatility 
FROM crypto_ready 
ORDER BY Date DESC;

-- (9)Calculate the percentage of the "Two-Coin Market" that Bitcoin controls to track shifts in investor preference.
-- Using price and volume to find Bitcoin's share of the total value
SELECT Date, 
       (BTC_Close * BTC_Volume) / ((BTC_Close * BTC_Volume) + (ETH_Close * ETH_Volume)) * 100 AS btc_dominance_pct 
FROM crypto_ready
ORDER BY Date DESC;

-- (10)Identify how often the two assets move in perfect harmony versus when they "diverge" (move in opposite directions).
-- Finding days where one went UP and the other went DOWN (Divergence)
SELECT Date, BTC_Return, ETH_Return
FROM crypto_ready
WHERE (BTC_Return > 0 AND ETH_Return < 0) 
   OR (BTC_Return < 0 AND ETH_Return > 0)
ORDER BY Date DESC;
