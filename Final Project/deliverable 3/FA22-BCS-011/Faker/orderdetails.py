import random

# Define the ranges for OrderNo and TypeSizeID
order_nos = list(range(1, 501))  # OrderNo from 1 to 500
type_size_ids = list(range(1, 501))  # TypeSizeID from 1 to 500

# Number of records we want to generate in the OrderDetails table
num_records = 1000

# Set to keep track of unique (OrderNo, TypeSizeID) combinations
generated_combinations = set()

# Generate and print SQL insert queries for OrderDetails table
print("-- EXEC queries for inserting into OrderDetails table")
for order_details_id in range(1, num_records + 1):
    while True:
        order_no = random.choice(order_nos)
        type_size_id = random.choice(type_size_ids)
        
        if (order_no, type_size_id) not in generated_combinations:
            generated_combinations.add((order_no, type_size_id))
            break
    
    quantity = random.randint(1, 100)  # Generate random quantity between 1 and 100
    
    exec_query = f"EXEC InsertOrderDetails @OrderDetailsID = {order_details_id}, @OrderNo = {order_no}, @TypeSizeID = {type_size_id}, @Quantity = {quantity};"
    print(exec_query)
