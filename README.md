# Global Customer Support Operations Command Center 📊

## 📌 Project Overview
An end-to-end Business Intelligence solution designed to monitor support ticket performance, identify operational bottlenecks, and track SLA risks for a global consulting organization.

## 🚀 Key Features
- **Executive KPI Tracking:** Real-time visibility into Total Tickets, Resolution Rates, and Critical Backlog.
- **Operational Heatmap:** Identification of department-level "hotspots" where high-priority tickets are accumulating.
- **Data Quality Audit:** Automated detection of missing metadata (Queues/Tags) to improve reporting integrity.
- **Issue Clustering:** Top-N analysis of support tags to identify common product/service failure points.

## 🛠️ Tech Stack
- **Data Source:** Kaggle Customer Support Ticket Dataset (29k+ records).
- **Data Engineering:** PostgreSQL (Schema design & Views) & Power Query (M-Engine).
- **Analysis:** DAX (Dynamic measures for SLA and Backlog tracking).
- **Visualization:** Power BI Desktop.

## 📈 Dashboard Preview
![Dashboard Screenshot](link_to_your_screenshot_here)

## 💡 Business Insights
1. **SLA Risk:** Identified a critical backlog of 3 high-priority tickets requiring immediate intervention.
2. **Workload Distribution:** Technical Support handles 30%+ of total volume, primarily driven by 'Performance' and 'Bug' issues.
3. **Data Integrity:** Discovered a segment of tickets missing "Queue" assignments, highlighting a need for front-end validation updates in the CRM.

## 📂 How to Use
1. Clone this repository.
2. Open the `.pbix` file in Power BI Desktop.
3. (Optional) Run the SQL scripts in the `/SQL` folder to see the database transformation logic.
