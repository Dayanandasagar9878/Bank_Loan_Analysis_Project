#Good Loan and Bad Loan Issued

#Good Loan Percentage  
SELECT COUNT(CASE WHEN loan_status = 'Fully Paid' OR loan_status = 'Current' THEN id END) / COUNT(id) * 100
AS Good_Loan_Percentage FROM bank_loan_data;

#Good Loan Applications
SELECT COUNT(id) AS Good_Loan_Applications FROM bank_loan_data
WHERE loan_status = 'Fully Paid' OR
loan_status = 'Current';

#Good Loan Funded Amount
SELECT SUM(loan_amount) AS Good_Loan_funded
FROM bank_loan_data
WHERE
loan_status = 'Fully Paid' OR
loan_status = 'Current';

#Good Loan Amount Received
SELECT SUM(total_payment) AS Good_Loan_Amount_Received
FROM bank_loan_data
WHERE
loan_status = 'Fully Paid' OR
loan_status = 'Current';

##Bad Loan Percentage
SELECT ROUND(COUNT(CASE WHEN loan_status = 'Charged Off' THEN id END) / COUNT(id) * 100,2)
AS Bad_Loan_Percentage FROM bank_loan_data;

#Bad Loan Applications
SELECT COUNT(id) AS Bad_Loan_Applications FROM bank_loan_data
WHERE loan_status = 'Charged Off';

#Bad Loan Funded Amount
SELECT SUM(loan_amount) AS Bad_Loan_funded
FROM bank_loan_data
WHERE
loan_status = 'Charged Off';

#Bad Loan Amount Received
SELECT SUM(total_payment) AS Bad_Loan_Amount_Received
FROM bank_loan_data
WHERE
loan_status = 'Charged Off';
























