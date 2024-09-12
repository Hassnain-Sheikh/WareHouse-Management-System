# List of product names
product_names = [
    "Frame", "Fork", "Headset", "Handlebar", "Stem", "Grips", "Bar Ends", "Brake Levers", "Brakes (Disc)",
    "Brakes (Rim)", "Brake Pads", "Shifters", "Front Derailleur", "Rear Derailleur", "Chain", "Chainrings",
    "Crankset", "Bottom Bracket", "Pedals", "Cleats", "Cassette", "Freewheel", "Rear Hub", "Front Hub", "Spokes",
    "Nipples", "Rims", "Tires", "Tubes", "Valve Stems", "Rim Tape", "Seatpost", "Saddle", "Seatpost Clamp",
    "Kickstand", "Fenders", "Chain Guard", "Chainstay Protector", "Rear Rack", "Front Rack", "Water Bottle Cage",
    "Lights (Front)", "Lights (Rear)", "Reflectors", "Bell", "Speedometer", "Mudguards", "Wheel Skewers",
    "Derailleur Hanger", "Handlebar Tape"
]

# Generate and print EXEC queries for Products table
for product_id, product_name in enumerate(product_names, start=1):
    # Create the EXEC query
    exec_query = f"EXEC InsertProduct @ProductID = {product_id}, @ProductName = '{product_name}';"
    print(exec_query)
