import random
from datetime import datetime, timedelta

# Define the ranges for PurchaseID, SupplierID, and TypeSizeID
purchase_ids = list(range(1, 501))
supplier_ids = list(range(1, 101))
type_size_ids = list(range(1, 501))

# Generate a list of dates from 2023-01-01 to 2023-08-31 in order, each date repeated 5 times
start_date = datetime(2023, 1, 1)
end_date = datetime(2023, 8, 31)
delta = end_date - start_date
ordered_dates = [(start_date + timedelta(days=i)).strftime('%Y-%m-%d') for i in range(delta.days + 1) for _ in range(5)]

# Ensure enough dates
num_records = 1000
while len(ordered_dates) < num_records:
    ordered_dates.extend([(start_date + timedelta(days=i)).strftime('%Y-%m-%d') for i in range(delta.days + 1) for _ in range(5)])

# Set to keep track of unique (PurchaseID, SupplierID, TypeSizeID) combinations
generated_combinations = set()
purchased_data = {}  # Dictionary to store purchase data

# Generate and print SQL insert queries for PurchasingDetails table
def generate_purchasing_queries(start_id, end_id):
    type_size_id_index = 0
    for purchasing_id in range(start_id, end_id + 1):
        while True:
            purchase_id = random.choice(purchase_ids)
            supplier_id = random.choice(supplier_ids)
            type_size_id = type_size_ids[type_size_id_index]
            
            if (purchase_id, supplier_id, type_size_id) not in generated_combinations:
                generated_combinations.add((purchase_id, supplier_id, type_size_id))
                break
        
        quantity = random.randint(50, 100)  # Ensure quantity is between 50 and 100
        purchasing_date = ordered_dates.pop(0)  # Use the next date in the ordered list
        
        if type_size_id not in purchased_data:
            purchased_data[type_size_id] = {
                'total_quantity': 0,
                'purchases': []
            }
        purchased_data[type_size_id]['total_quantity'] += quantity
        purchased_data[type_size_id]['purchases'].append((purchasing_date, quantity))
        
        insert_query = f"EXEC InsertPurchasingDetails @PurchasingID = {purchasing_id}, @PurchaseID = {purchase_id}, @SupplierID = {supplier_id}, @TypeSizeID = {type_size_id}, @Quantity = {quantity}, @PurchasingDate = '{purchasing_date}';"
        print(insert_query)
        
        type_size_id_index = (type_size_id_index + 1) % len(type_size_ids)

# Generate the first 1000 records
generate_purchasing_queries(1, 1000)
