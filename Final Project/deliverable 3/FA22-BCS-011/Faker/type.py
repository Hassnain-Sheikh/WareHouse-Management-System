import random

# List of product names in the correct order
product_names = [
    "Frame", "Fork", "Headset", "Handlebar", "Stem", "Grips", "Bar Ends", "Brake Levers", "Brakes (Disc)",
    "Brakes (Rim)", "Brake Pads", "Shifters", "Front Derailleur", "Rear Derailleur", "Chain", "Chainrings",
    "Crankset", "Bottom Bracket", "Pedals", "Cleats", "Cassette", "Freewheel", "Rear Hub", "Front Hub", "Spokes",
    "Nipples", "Rims", "Tires", "Tubes", "Valve Stems", "Rim Tape", "Seatpost", "Saddle", "Seatpost Clamp",
    "Kickstand", "Fenders", "Chain Guard", "Chainstay Protector", "Rear Rack", "Front Rack", "Water Bottle Cage",
    "Lights (Front)", "Lights (Rear)", "Reflectors", "Bell", "Speedometer", "Mudguards", "Wheel Skewers",
    "Derailleur Hanger", "Handlebar Tape"
]

# List of type names for each product
type_names = [
    ["Steel", "Carbon Fiber"],  # Frame
    ["Rigid", "Suspension"],  # Fork
    ["Threadless", "Threaded"],  # Headset
    ["Drop Bar", "Flat Bar"],  # Handlebar
    ["Threadless", "Threaded"],  # Stem
    ["Ergonomic", "Lock-On"],  # Grips
    ["Rubber", "Aluminum"],  # Bar Ends
    ["Hydraulic", "Mechanical"],  # Brake Levers
    ["Hydraulic", "Mechanical"],  # Brakes (Disc)
    ["Caliper", "V-Brake"],  # Brakes (Rim)
    ["Organic", "Resin"],  # Brake Pads
    ["Integrated", "Bar-End"],  # Shifters
    ["Clamp-On", "Braze-On"],  # Front Derailleur
    ["Short Cage", "Medium Cage"],  # Rear Derailleur
    ["Single-Speed", "8-Speed"],  # Chain
    ["Round", "Oval"],  # Chainrings
    ["Single", "Double"],  # Crankset
    ["Threaded", "Press Fit"],  # Bottom Bracket
    ["Flat", "Platform"],  # Pedals
    ["3-Hole", "2-Hole"],  # Cleats
    ["8-Speed", "9-Speed"],  # Cassette
    ["Threaded", "Unthreaded"],  # Freewheel
    ["Quick Release", "Thru Axle"],  # Rear Hub
    ["Quick Release", "Thru Axle"],  # Front Hub
    ["Straight Pull", "J-Bend"],  # Spokes
    ["Brass", "Aluminum"],  # Nipples
    ["Clincher", "Tubular"],  # Rims
    ["Clincher", "Tubular"],  # Tires
    ["Presta Valve", "Schrader Valve"],  # Tubes
    ["Short", "Medium"],  # Valve Stems
    ["Rubber", "Cloth"],  # Rim Tape
    ["Fixed", "Suspension"],  # Seatpost
    ["Racing Saddles", "Endurance Saddles"],  # Saddle
    ["Quick Release", "Bolt-On"],  # Seatpost Clamp
    ["Single", "Double"],  # Kickstand
    ["Full", "Clip-On"],  # Fenders
    ["Plastic", "Metal"],  # Chain Guard
    ["Neoprene", "Silicone"],  # Chainstay Protector
    ["Rear", "Front"],  # Rear Rack
    ["Lowrider", "Front"],  # Front Rack
    ["Plastic", "Aluminum"],  # Water Bottle Cage
    ["LED", "Halogen"],  # Lights (Front)
    ["LED", "Halogen"],  # Lights (Rear)
    ["Front", "Rear"],  # Reflectors
    ["Classic", "Electronic"],  # Bell
    ["Wired", "Wireless"],  # Speedometer
    ["Full", "Clip-On"],  # Mudguards
    ["Quick Release", "Thru Axle"],  # Wheel Skewers
    ["Replaceable", "Direct Mount"],  # Derailleur Hanger
    ["Cork", "Foam"],  # Handlebar Tape
]

# Function to generate random type ID
def generate_type_id():
    return random.randint(1, 1000)  # Assuming type IDs are generated randomly


# Generate and print EXEC queries for InsertType procedure
type_id = 1
for product_id, product_name in enumerate(product_names, start=1):
    product_types = type_names[product_id - 1]  # Get the corresponding types for the product
    random.shuffle(product_types)  # Shuffle the types list for randomness

    for type_name in product_types:
        print(f"EXEC InsertType @TypeID = {type_id}, @TypeName = '{type_name}', @ProductID = {product_id};")
        type_id += 1
