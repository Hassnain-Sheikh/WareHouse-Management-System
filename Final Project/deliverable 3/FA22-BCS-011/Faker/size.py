# List of sizes
sizes = [16, 20, 24, 26, 28, 29]


# Generate and print SQL insert queries for Size table
size_id = 1
for size in sizes:
    print(f"EXEC InsertSize @SizeID = {size_id}, @SizeNo = {size};")
    size_id += 1
