# 📊 Macroeconomic Indicator Forecasting Project

## Description

This project presents a comprehensive analysis of India’s **macroeconomic indicators** from 2010 to 2023, and builds a **forecasting model for GDP up to 2027**. It integrates real-world datasets, performs statistical modeling in Python, and visualizes trends through an interactive **Power BI dashboard**.

The goal is to demonstrate a full-cycle economic analysis pipeline with **Python, SQL, and Power BI**, covering data ingestion, transformation, forecasting, and storytelling.

---

## Project Goals

- Consolidate and clean macroeconomic datasets from multiple years and sources
- Predict GDP using **Energy Generation** and **Industrial Production Index**
- Build an interactive dashboard with **Power BI** for insights and KPI tracking
- Forecast India's GDP through **2027** based on real indicators

---

## Tech Stack

| Tool / Library                          | Purpose                                         |
|----------------------------------------|--------------------------------------------------|
| **Python** (`pandas`, `numpy`)         | Data cleaning, preprocessing, reshaping         |
| **matplotlib**, **seaborn**            | Visualizations and correlation plotting         |
| **scikit-learn** (`LinearRegression`)  | Forecasting GDP with multivariate regression    |
| **SQL**                                | Data transformation routines and table storage  |
| **Power BI**                           | Dashboarding, forecasting visuals, KPIs         |
| **Excel**                              | Initial inspection and format validation        |
| **Jupyter Notebook**                   | Reproducible EDA and modeling                   |

---

## Project Structure

| Folder/File                            | Description |
|----------------------------------------|-------------|
| `Cleaned-Csv/`                         | Final cleaned GDP datasets (2010–2023)         |
| `Raw-Csv/`                             | Original raw economic indicator files          |
| `python-analysis/GDP.ipynb`            | Python notebook for analysis and modeling      |
| `power-bi/GDP Forecasting.pbix`        | Power BI dashboard (with KPI cards and forecasts) |
| `sql-analysis/full_macro_data.csv`     | Unified CSV dataset used in SQL and Power BI   |
| `sql-files/forecast_db_full_macro_data.sql` | SQL script for table creation and inserts |
| `sql-files/forecast_db_routines.sql`   | SQL routines, views, and utility procedures     |
| `images/`                              | Exported charts, dashboard screenshots, visuals |
| `README.md`                            | Project documentation (this file)              |

---

## Workflow

```
Raw CSVs (2010–2023)
    ⬇
Python (Cleaning + Normalizing with pandas & numpy)
    ⬇
Linear Regression Model (GDP ~ Energy + Industry)
    ⬇
Export Cleaned Data to CSV + SQL
    ⬇
Power BI Dashboard (KPIs, YoY Charts, Forecasts)
```
## Modeling & Forecasting

### ✅ Model: Multiple Linear Regression
**Features Used:**
- `Energy_Generation`
- `Industrial_Production_Index`

**Coefficients:**
```
Energy_Generation coef: 22916.63
Industrial_Production_Index coef: -5.24
Intercept: -16394826.55
```

**Performance on Test Set:**

| Metric | Value           |
|--------|-----------------|
| MAE    | ₹ 2,793,701     |
| RMSE   | ₹ 3,899,666     |
| R²     | 0.8584          |

---

### 📈 GDP Forecast (2023–2027)

| Year    | Energy (GWh) | Industrial Index | Predicted GDP (₹ Crore) |
|---------|---------------|------------------|--------------------------|
| 2023-24 | 1868          | 38345.81         | ₹ 26,223,128             |
| 2024-25 | 1935          | 38346.03         | ₹ 27,740,245             |
| 2025-26 | 2001          | 38346.26         | ₹ 29,257,361             |
| 2026-27 | 2067          | 38346.48         | ₹ 30,774,478             |
| 2027-28 | 2133          | 38346.71         | ₹ 32,291,594             |

---

## Power BI Dashboard Insights

### KPIs

| KPI                     | Value               |
|-------------------------|---------------------|
| Total GDP (2022–23)     | ₹ 27.24 Trillion    |
| Forex Reserves          | ₹ 47.5 Lakh Crore   |
| Trade Balance (Deficit) | -₹ 21.13 L Cr       |
| Per Capita Income       | ₹ 1.72 Lakh         |

### 📌 Dashboard Visuals

1.  **GDP & GVA Over Time**
2.  **Forex Reserves vs Trade Balance**
3.  **Per Capita NNI (Tree Map + Bar)**
4.  **Electricity and Energy Generation**
5.  **Forecasted GDP (Line Chart 2023–2027)**

---

##  Import/Export Trends

| Metric      | Import (₹ Cr) | Export (₹ Cr) |
|-------------|---------------|---------------|
| **Max**     | ₹ 57,33,958   | ₹ 36,20,630   |
| **Min**     | ₹ 120         | ₹ 275.90      |
| **Mean**    | ₹ 17,94,298   | ₹ 11,92,975   |
| **Std Dev** | ₹ 21,14,736   | ₹ 13,92,110   |

---

##  How to Run

### 1. Run Python Notebook
```bash
jupyter notebook python-analysis/GDP.ipynb
```

### 2. Load SQL Tables (Optional)
- Use `forecast_db_full_macro_data.sql` to create tables
- Use `forecast_db_routines.sql` for forecast functions/views

### 3. Open Power BI Dashboard
- Launch `GDP Forecasting.pbix` in Power BI Desktop
- Load `full_macro_data.csv` if prompted

---

## 👤 Author

**Name:** Aadya Store  
**GitHub:** [your-github-profile]  
**Email:** [your-email@example.com]
