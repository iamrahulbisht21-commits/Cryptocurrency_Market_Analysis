# crypto_analysis
Crypto Insights: Bitcoin vs. Ethereum Analysis

A technical data analytics project that explores the relationship, growth, and market behavior of the two largest cryptocurrencies: Bitcoin (The Digital Gold) and Ethereum (The World's Computer).

This project demonstrates a robust back-end data pipeline, including automated data extraction and SQL-based analytical engineering to solve complex market problems.

🚀 Project Overview

In this project, we move beyond simple price tracking to solve 10 core business problems designed to be understood by anyone, regardless of their cryptocurrency knowledge. By framing technical metrics through everyday analogies, this project provides actionable insights into market volatility, investor behavior, and asset resilience.

The workflow follows a professional data engineering architecture:

Extraction: Python-based automation using the yFinance API to fetch historical market data.

Processing: Data cleaning, normalization, and feature engineering (volatility and returns) using Pandas.

Storage & Analysis: MySQL implementation for deep analytical querying and performance benchmarking.

🎯 Objectives

Analyze Historical Growth: Evaluate the "Digital Gold" thesis of Bitcoin and the "Utility" thesis of Ethereum.

Assess Risk & Volatility: Compare the "Investor Stress Test" scores for both assets using rolling standard deviations.

Identify Patterns: Uncover human behavioral trends like the "Paycheck Effect" and "Weekend Volatility."

Market Correlation: Determine the "Lead-Lag" relationship and movement divergence between the market leader and its main challenger.

🛠️ Tools Used

Python: Data extraction, cleaning, and normalization (Pandas, yFinance).

MySQL: Data storage and complex analytical queries utilizing Window Functions, Subqueries, and CTEs.

Jupyter Notebooks: For reproducible data processing and CSV generation.

📊 Dataset Info

The project utilizes a custom-engineered dataset, crypto_ready.csv, which includes:

Historical Prices: Open, High, Low, and Close for BTC and ETH.

Volume: Trading activity as a proxy for network "traffic."

Advanced Metrics: * BTC_Return / ETH_Return: Daily percentage changes.

Volatility: Rolling 30-day risk scores.

Normalized: Performance tracking from a shared 1.0 starting point to compare yield efficiency.

📈 Business Problems & Analytical Insights

Part 1: Bitcoin (The Digital Gold)

The $1,000 Time Machine: Historical ROI analysis from the earliest data point.

The Discount Meter: Current price vs. All-Time High retraction percentage.

The Weekend Rollercoaster: Comparing weekday stability vs. weekend volatility.

Part 2: Ethereum (The World's Computer)

The Busy-ness Meter: Monthly trading volume and network adoption trends.

The Fuel Efficiency Test: Correlating price growth with trading activity to identify "healthy" moves.

The Paycheck Effect: Identifying monthly seasonality and human habits based on day-of-month performance.

Part 3: Combined Analysis (The Race)

The Growth Marathon: Relative yield comparison using normalized data.

The Investor Stress Test: Comparative risk analysis between both assets.

The Market Slice: Bitcoin dominance within the two-coin ecosystem based on market value.

The Harmony Check: Divergence analysis (identifying days where assets move in opposite directions).

⚙️ How to Run the Project

Data Extraction: Run the crypto_codefile.ipynb notebook. This script will fetch the latest data, perform technical calculations (returns, volatility, normalization), and generate the crypto_ready.csv file.

Database Setup:

Open your MySQL environment.

Create a new database.

Import the crypto_ready.csv into a table named crypto_ready.

Analytical Execution:

Open crypto_direct.sql.

Run the provided queries to extract insights for the 10 business problems defined above.
