# Python Project – Finance Domain

## Overview
This project analyzes historical loan data in the finance domain to understand loan performance, borrower characteristics, and trends over time. The goal is to gain insights that can help improve lending strategies, identify potential risks, and highlight key opportunities.

---

## Table of Contents
- [Objective](#objective)
- [Dataset](#dataset)
- [Key Metrics](#key-metrics)
- [Analysis and Visualizations](#analysis-and-visualizations)
- [Insights](#insights)
- [Conclusion](#conclusion)
  ---

## Objective
The main objectives of this project are:  
- Analyze the loan portfolio over time.  
- Identify trends in loan applications, funded amounts, and repayments.  
- Examine borrower characteristics such as employment length, home ownership, and debt-to-income ratio.  
- Discover geographic patterns and common loan purposes.  
- Highlight areas of good performance and potential risk.

---

## Dataset
The dataset contains information about loans issued, including:  
- `id` – Unique loan identifier  
- `issue_date` – Date when the loan was issued  
- `loan_amount` – Funded amount of the loan  
- `total_payment` – Total repayment received  
- `int_rate` – Interest rate of the loan  
- `dti` – Debt-to-Income ratio of borrower  
- `loan_status` – Status of the loan (Fully Paid, Current, Charged Off)  
- `term` – Loan term (36 or 60 months)  
- `emp_length` – Length of employment of borrower  
- `home_ownership` – Borrower’s home ownership status  
- `purpose` – Purpose of the loan  
- `address_state` – State of the borrower  

> Note: Replace the dataset in the repository with your actual data file.

---

## Key Metrics
**Overall Metrics:**  
- Total Funded Amount  
- Total Amount Received  
- Average Interest Rate  
- Average Debt-to-Income Ratio (DTI)  

**Good Loans (Fully Paid / Current):**  
- Number of Applications  
- Funded Amount  
- Amount Received  
- Percentage of Total Applications  

**Bad Loans (Charged Off):**  
- Number of Applications  
- Funded Amount  
- Amount Received  
- Percentage of Total Applications  

**Month-to-Date (MTD) Metrics:**  
- MTD Loan Applications  
- MTD Total Funded Amount  
- MTD Total Amount Received  

---

## Analysis and Visualizations
1. **Monthly Trends:**  
   - Funded Amount, Total Received Amount, and Number of Applications over time.  

2. **Regional Analysis:**  
   - Funded Amount by State (Horizontal Bar Chart).  

3. **Loan Characteristics:**  
   - Loan Term (Donut Chart)  
   - Employment Length (Horizontal Bar Chart)  
   - Loan Purpose (Horizontal Bar Chart)  
   - Home Ownership (Treemap)  

> Charts are created using **Matplotlib** and **Plotly** for visual clarity.

---

## Insights
- Most loans are short-term (36 months) and concentrated in select states.  
- Borrowers with longer employment length tend to receive higher loan amounts.  
- Good loans make up the majority of the portfolio; monitoring bad loans is important for risk management.  
- Seasonal trends in applications and funded amounts were identified.  
- Loan purpose and home ownership status affect funded amounts.

---

## Conclusion
This project provides a detailed understanding of the loan portfolio, including performance trends, borrower characteristics, and geographical insights. The analysis can help in making informed lending decisions, identifying high-performing areas, and mitigating risk.

---

## How to Use
1. Clone the repository:  
   ```bash
   git clone https://github.com/RinkuGill/python-project-finance-domain.git
   ```
2. Open `loan_analysis.ipynb` in **Jupyter Notebook** or **VS Code**.  
3. Replace the dataset file if needed.  
4. Run all cells to see the analysis and visualizations. 

