# 📈 Cryptocurrency Market Analysis — BTC vs ETH

> End-to-end data analysis comparing Bitcoin and Ethereum across 8–10 years of historical price data, using Python and SQL to quantify returns, volatility, and correlation.

---

## 🗂️ Project Structure

```
Cryptocurrency-Market-Analysis/
│
├── data/
│   ├── raw/
│   │   ├── bitcoin_raw.csv          # 10-year BTC historical OHLCV data
│   │   └── ethereum_raw.csv         # 8-year ETH historical OHLCV data
│   └── processed/
│       └── crypto_processed.csv     # Cleaned & merged dataset
│
├── notebooks/
│   └── crypto_analysis.ipynb        # Full analysis: EDA, returns, volatility, correlation
│
├── sql/
│   └── crypto_analysis.sql          # SQL queries for aggregation & comparison
│
├── requirements.txt
├── LICENSE
└── README.md
```

---

## 🎯 Objective

Compare the risk and return profiles of **Bitcoin (BTC)** and **Ethereum (ETH)** using historical price data to empirically demonstrate the risk–return tradeoff in cryptocurrency markets.

---

## 🔍 Key Findings

| Metric | Bitcoin (BTC) | Ethereum (ETH) |
|---|---|---|
| Cumulative Return | ~300% | ~608% |
| Annualized Volatility | Lower | Higher |
| Correlation (Pearson) | — | ~0.85 with BTC |
| Risk Profile | Moderate | High |

- **Ethereum delivered ~608% cumulative return** — significantly outperforming Bitcoin over the same period
- **Higher returns came with higher volatility**, confirming the classic risk–return tradeoff
- **Strong positive correlation (~0.85)** between BTC and ETH suggests they move together in macro market cycles
- BTC shows more **price stability**, making it comparatively lower risk for long-term holders

---

## 🛠️ Tech Stack

| Tool | Usage |
|---|---|
| **Python** | Core analysis language |
| **Pandas** | Data cleaning, transformation, time-series manipulation |
| **NumPy** | Returns calculation, volatility, statistical metrics |
| **Matplotlib / Seaborn** | Visualizations (returns, volatility, correlation heatmap) |
| **Jupyter Notebook** | Interactive analysis and visualization |

---

## 📊 Analysis Breakdown

### 1. Data Retrieval
- Historical OHLCV data retrieved via **yFinance API**
- BTC: 10 years of data | ETH: 8 years of data
- Data cleaned: null values removed, dates parsed, columns standardized

### 2. Returns Analysis
- Computed **daily returns** using `pct_change()`
- Calculated **cumulative returns** to measure overall growth
- Compared total return: ETH (~608%) vs BTC (~300%)

### 3. Volatility Analysis
- Computed **annualized volatility** using rolling standard deviation × √252
- ETH consistently showed higher volatility than BTC across all periods

### 4. Correlation Analysis
- **Pearson correlation matrix** computed between BTC and ETH daily returns
- Strong positive correlation confirmed — both assets are affected by the same macro crypto market forces

### 5. SQL Analysis 
- Loaded processed data into SQLite database
- Queried yearly average prices, best/worst performing months, and comparative summaries

---

## ▶️ How to Run

**1. Clone the repository**
```bash
git clone https://github.com/iamrahulbisht021/Cryptocurrency-Market-Analysis.git
cd Cryptocurrency-Market-Analysis
```

**2. Install dependencies**
```bash
pip install -r requirements.txt
```

**3. Launch the notebook**
```bash
jupyter notebook notebooks/crypto_analysis.ipynb
```

> **Note:** The notebook fetches live data via yFinance. An internet connection is required. Alternatively, you can use the pre-processed data in `data/processed/`.

---

## 📦 Requirements

```
yfinance
pandas
numpy
matplotlib
seaborn
openpyxl
jupyter
```

---

## 💡 Skills Demonstrated

- End-to-end data pipeline (retrieval → cleaning → analysis → visualization)
- Financial metrics: returns, volatility, correlation
- Time-series analysis with Pandas
- SQL querying inside a Python workflow
- Data storytelling through charts and structured findings

---

## 👤 Author

**Rahul Bisht**
[GitHub](https://github.com/iamrahulbisht021) · [LinkedIn](www.linkedin.com/in/rahul-bisht-b986531b1)

---

## 📄 License

This project is licensed under the MIT License — see the [LICENSE](LICENSE) file for details.
