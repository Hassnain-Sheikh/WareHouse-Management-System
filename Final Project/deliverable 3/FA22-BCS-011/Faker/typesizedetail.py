import random

# Define type IDs and size IDs
type_ids = range(1, 101)  # Type IDs from 1 to 75
size_ids = range(1, 7)   # Size IDs from 1 to 6

# Number of entries we want to generate in the SizeDetail table
num_entries = 500 # Adjust as needed

# Generate and print SQL insert queries for SizeDetail table
size_detail_id = 1
generated_entries = set()  # To keep track of generated (type_id, size_id) pairs to avoid duplicates

while len(generated_entries) < num_entries:
    type_id = random.choice(type_ids)
    size_id = random.choice(size_ids)
    
    # Avoid duplicate entries
    if (type_id, size_id) not in generated_entries:
        generated_entries.add((type_id, size_id))
        insert_query = f"EXEC InsertTypeSizeDetails @TypeSizeID = {size_detail_id}, @TypeID = {type_id}, @SizeID = {size_id};"
        size_detail_id += 1
        print(insert_query + "\n")


