import random

# Define the range of customer IDs
customer_ids = range(1, 110)  # Customer IDs from 1 to 50

# Number of orders to generate
num_orders = 500  # Adjust as needed

# Generate and print SQL insert queries for Orders table
for order_id in range(1, num_orders + 1):
    customer_id = random.choice(customer_ids)
    
    insert_query = f"EXEC InsertOrder @OrderNo = {order_id}, @CustomerID = {customer_id};"
    print(insert_query)

