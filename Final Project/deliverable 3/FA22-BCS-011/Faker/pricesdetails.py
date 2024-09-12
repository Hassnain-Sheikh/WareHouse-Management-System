import random
from datetime import datetime, timedelta

# Define the range for TypeSizeID
type_size_ids = list(range(1, 501))  # TypeSizeID from 1 to 500

# Function to generate a random date between the start and end date
def generate_random_date(start, end):
    delta = end - start
    random_days = random.randint(0, delta.days)
    random_date = start + timedelta(days=random_days)
    return random_date

# Define start and end date for the date range
start_date_range = datetime(2023, 1, 1)
end_date_range = datetime(2024, 5, 1)

# Dictionary to store the end date of each TypeSizeID for creating subsequent records
end_dates = {}

# Generate and print SQL insert queries for PricesDetails table
print("INSERT INTO PricesDetails (TypeSizeID, PurchasePrice, SellingPrice, StartDate, EndDate) VALUES")

# Generate the first 500 records ensuring each TypeSizeID is used at least once
for type_size_id in type_size_ids:
    purchase_price = round(random.uniform(10.0, 100.0), 2)
    selling_price = round(random.uniform(purchase_price, 150.0), 2)
    
    start_date = generate_random_date(start_date_range, end_date_range)
    
    if type_size_id <= 200:
        end_date = generate_random_date(start_date, end_date_range)
        end_dates[type_size_id] = end_date  # Store the end date for future reference
        end_date_str = f"'{end_date.strftime('%Y-%m-%d')}'"
    else:
        end_date = None
        end_date_str = "NULL"
    
    insert_query = (
        f"EXEC InsertPricesDetails @TypeSizeID = {type_size_id}, "
        f"@PurchasePrice = {purchase_price}, @SellingPrice = {selling_price}, "
        f"@StartDate = '{start_date.strftime('%Y-%m-%d')}', @EndDate = {end_date_str};"
    )
    print(insert_query)

# Generate additional records for TypeSizeID from 1 to 200 with new prices and dates
for type_size_id in range(1, 201):
    # Second record for each TypeSizeID
    purchase_price = round(random.uniform(10.0, 100.0), 2)
    selling_price = round(random.uniform(purchase_price, 150.0), 2)
    
    start_date = end_dates[type_size_id]  # Start date is the previous end date
    end_date = generate_random_date(start_date, end_date_range)
    
    # Update end_dates dictionary
    end_dates[type_size_id] = end_date
    
    insert_query = (
        f"EXEC InsertPricesDetails @TypeSizeID = {type_size_id}, "
        f"@PurchasePrice = {purchase_price}, @SellingPrice = {selling_price}, "
        f"@StartDate = '{start_date.strftime('%Y-%m-%d')}', @EndDate = '{end_date.strftime('%Y-%m-%d')}';"
    )
    print(insert_query)
    
    # Third record for each TypeSizeID
    purchase_price = round(random.uniform(10.0, 100.0), 2)
    selling_price = round(random.uniform(purchase_price, 150.0), 2)
    
    start_date = end_dates[type_size_id]  # Start date is the previous end date
    end_date = None  # New end date is set to NULL
    
    insert_query = (
        f"EXEC InsertPricesDetails @TypeSizeID = {type_size_id}, "
        f"@PurchasePrice = {purchase_price}, @SellingPrice = {selling_price}, "
        f"@StartDate = '{start_date.strftime('%Y-%m-%d')}', @EndDate = NULL;"
    )
    print(insert_query)

# Print a message indicating the total number of records generated
print(f"-- Total records generated: {500 + 2 * 200}")
