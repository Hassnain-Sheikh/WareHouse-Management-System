import random

# Define the range of employee IDs
employee_ids = range(1, 111)  # Employee IDs from 001 to 110

# Number of sales to generate
num_sales = 700  # Adjust as needed

# Generate and print SQL insert queries for Sales table
for sale_no in range(1, num_sales + 1):
    employee_id = random.choice(employee_ids)
    
    insert_query = f"EXEC InsertSales @SaleNo = {sale_no}, @EmployeeID = {employee_id};"
    print(insert_query)
