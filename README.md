![Capture7_PhotoGrid](https://github.com/user-attachments/assets/e357399b-1697-4417-bddc-e22174ba1f51)# 📊 Macroeconomic Indicator Forecasting Project

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
![Capture_PhotoGrid](https://github.com/user-attachments/assets/a6c081f5-a798-47bd-8412-dfef4482ade9)
![Capture1_PhotoGrid](https://github.com/user-attachments/assets/85e650cc-bbd8-415b-a915-f83a5095a8a1)
![Capture2_PhotoGrid](https://github.com/user-attachments/assets/2a608c50-f3df-452c-b1f8-1d6bfeb61473)
![Capture3_PhotoGrid](https://github.com/user-attachments/assets/5578379d-3c14-4212-b835-d91fe1429a04)
![Capture4_PhotoGrid](https://github.com/user-attachments/assets/f60d73fd-3c77-414a-85c6-a978bb071803)
![Capture5_PhotoGrid](https://github.com/user-attachments/assets/bcd3881b-59f4-4ec7-af38-c35ff6ea2315)
![Capture6_PhotoGrid](https://github.com/user-attachments/assets/367e6f75-292d-4fe3-8487-707927444575)
![Capture7_PhotoGrid](https://github.com/user-attachments/assets/4b325dfe-5ac0-4105-a7b1-e80872f44de0)
![Capture8_PhotoGrid](https://github.com/user-attachments/assets/df67032b-c397-43d3-b1a3-dbc551917218)



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
![GDP Forecasting_page-0001](https://github.com/user-attachments/assets/953f608b-7520-4da8-a4be-25fde7064f37)

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

**Name:** Sarthak Choubey
**GitHub:** [[your-github-profile]  ](https://github.com/sarthak20244)
**Email:**  [sarthakchoubey2019@gmail.com](mailto:sarthakchoubey2019@gmail.com)


---

This project is licensed for **Study and Research Use Only**.
