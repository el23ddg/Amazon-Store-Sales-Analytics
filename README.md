# Amazon-Store-Sales-Analytics
An end-to-end data analytics project focused on identifying profit drivers, operational inefficiencies, and customer segmentation trends within the Amazon Superstore dataset.
## 🚀 Executive Summary
This project transforms raw retail data into an interactive BI dashboard. By implementing a **Star Schema** data model and custom **DAX calculations**, the dashboard provides actionable insights into profitability, delivery performance, and regional sales distribution.
### Key Insights
* **Profitability Gap:** Identified specific regions where high sales volume fails to convert to profit, highlighting potential logistics or discount issues.
* **Operational Efficiency:** Calculated average delivery times by shipping mode to pinpoint fulfillment bottlenecks.
* **Customer Value:** Segmented customers using a revenue-vs-profit scatter analysis to distinguish high-value "Champions" from "Money Pits."

## 🛠 Tech Stack
* **Data Cleaning & Analysis:** SQL (PostgreSQL/MySQL)
* **Data Visualization & Modeling:** Power BI (DAX, Power Query, Star Schema)
* **Project Management:** GitHub (Version Control & Documentation)
  
## 📈 Dashboard Highlights

## 💡 Why These Visualizations?
Data is only as valuable as the decisions it drives. This dashboard was designed to move beyond simple reporting and toward **strategic decision support**.

### 1. The Trend Analysis (Sales & Profitability)
- **The "Why":** We needed to separate "vanity metrics" (total sales) from "viability metrics" (profit). By using a dual-axis line chart, we can instantly see if revenue growth is healthy or if it is being eroded by discounting or logistics costs.
- **The Insight:** This helps stakeholders understand **seasonality** and identify specific months where profit dips, enabling them to adjust marketing spend or inventory levels proactively. 
<img width="1403" height="785" alt="Screenshot 2026-05-30 135955" src="https://github.com/user-attachments/assets/8d93753c-cf1c-4f2a-b2ac-98b0fa2ca168" />

*Visualizes performance over time, using a dual-axis line chart to track margin compression.*

### 2. The Strategic Deep-Dive (Customer 360 & Segmentation)
- **The "Why":** We moved from aggregate numbers to individual performance. The **Profit vs. Revenue Scatter Plot** allows us to categorize customers into segments—identifying "Champions" who drive the business and "Money Pits" who drain profitability.
- **The Insight:** It forces a deeper understanding of the business: "Is our revenue growth coming from our most profitable customers, or are we paying for low-quality volume?"
<img width="1402" height="788" alt="Screenshot 2026-05-30 135932" src="https://github.com/user-attachments/assets/69522b23-2402-4511-9b92-309577f0451a" />

*Analyzes customer value via a Profit vs. Revenue scatter plot to identify growth opportunities.*

### 3. The Operational Context (Geographic & Shipping)
- **The "Why":** Business doesn't happen in a vacuum; it happens in specific locations with varying logistics costs. The **Map** and **Regional Matrix** were built to visualize the "Operational Gap."
- **The Insight:** These views highlight "Ghost Markets"—states where high sales volume masks underlying profit losses. This directs management to focus on logistics optimization rather than just "increasing sales" in failing regions.
<img width="1405" height="785" alt="Screenshot 2026-05-30 135812" src="https://github.com/user-attachments/assets/86c04961-5679-4872-bae8-864972917e32" />

*A regional map highlighting revenue earned and sales done in each state.*

## Connect With Me:
My Linkedin - https://www.linkedin.com/in/debjani-dutta-gupta/

