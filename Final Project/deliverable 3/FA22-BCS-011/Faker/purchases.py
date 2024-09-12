# Generate purchase numbers starting from 100 and incrementing by 100
def generate_purchase_no(purchase_id):
    return purchase_id * 10

# Generate EXEC queries for InsertPurchases procedure
print("-- EXEC queries for inserting into Purchases table")
for purchase_id in range(1, 501):  # Assuming 50 records
    purchase_no = generate_purchase_no(purchase_id)  # Generate purchase number
    exec_query = f"EXEC InsertPurchases @PurchaseID = {purchase_id}, @PurchaseNo = {purchase_no};"
    print(exec_query)
