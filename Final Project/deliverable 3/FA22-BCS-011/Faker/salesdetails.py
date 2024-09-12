import random
from datetime import datetime, timedelta

# Define the ranges for SaleNo, OrderNo, and TypeSizeID
sale_nos = list(range(1, 701))     # SaleNo from 1 to 700
order_nos = list(range(1, 501))    # OrderNo from 1 to 500
type_size_ids = list(range(1, 501)) # TypeSizeID from 1 to 500

# Generate a list of dates from 2023-09-01 to 2024-05-05 in order
start_date = datetime(2023, 9, 1)
end_date = datetime(2024, 5, 5)
delta = end_date - start_date
ordered_dates = [start_date + timedelta(days=i) for i in range(delta.days + 1)]

# Repeat each date 5 times to ensure the number of records
repeated_dates = []
for date in ordered_dates:
    repeated_dates.extend([date] * 5)

# Ensure we have enough dates for the number of records
num_records = 1000
while len(repeated_dates) < num_records:
    repeated_dates.extend(repeated_dates[:num_records - len(repeated_dates)])

# Set to keep track of unique (SaleNo, OrderNo, TypeSizeID) combinations
generated_combinations = set()

# Generate and print SQL insert queries for SalesDetails table
sale_details_id = 1
for _ in range(num_records):
    while True:
        sale_no = random.choice(sale_nos)
        order_no = random.choice(order_nos)
        type_size_id = random.choice(type_size_ids)
        
        if (sale_no, order_no, type_size_id) not in generated_combinations:
            generated_combinations.add((sale_no, order_no, type_size_id))
            break
    
    quantity = random.randint(1, 50)
    sale_date = repeated_dates.pop(0).strftime('%Y-%m-%d')

    insert_query = f"EXEC InsertSalesDetails @SaleDetailsID = {sale_details_id}, @SaleNo = {sale_no}, @OrderNo = {order_no}, @Quantity = {quantity}, @TypeSizeID = {type_size_id}, @SaleDate = '{sale_date}';"
    print(insert_query)

    sale_details_id += 1
