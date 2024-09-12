import random

names = [
    "Aisha", "Abubakar", "Fatima", "Hassan", "Zainab", "Bilal", "Sana", "Imran", "Nadia", "Ali",
    "Saima", "Umar", "Rabia", "Farhan", "Sara", "Kamran", "Mahira", "Hamza", "Mariam", "Arif",
    "Zoya", "Yasir", "Shazia", "Usman", "Anum", "Tariq", "Hina", "Asad", "Iram", "Khalid", "Lubna",
    "Salman", "Rukhsana", "Faisal", "Tanvir", "Junaid", "Amina", "Waqar", "Bushra", "Zeeshan", "Sumaira",
    "Adnan", "Rehana", "Azhar", "Gulzar", "Naila", "Naveed", "Parveen", "Rashid", "Tasneem", "Kashif",
    "Ayesha", "Fahad", "Sadia", "Arslan", "Ayesha", "Usama", "Samina", "Ahmed", "Sehrish", "Omar",
    "Tahira", "Majid", "Mehak", "Nasir", "Rafia", "Ahmed", "Sadia", "Noman", "Ayesha", "Saeed",
    "Noreen", "Ahmed", "Shahida", "Babar", "Saima", "Zulfiqar", "Shumaila", "Fawad", "Tanzila",
    "Ahmed", "Shazia", "Mansoor", "Zunaira", "Habib", "Sidra", "Sohail", "Nadia", "Farooq", "Bushra",
    "Nadeem", "Saba", "Waseem", "Saira", "Fareed", "Rukhsar", "Aqeel", "Asma", "Saad", "Sana",
    "Aamir", "Fauzia", "Qaiser", "Rukhsana", "Ahsan", "Aqsa", "Sajid", "Ayesha", "Kashif", "Sadia"
]

cities = ["Karachi", "Lahore", "Islamabad", "Rawalpindi", "Peshawar", "Quetta", "Multan", "Faisalabad"]
states = ["Sindh", "Punjab", "Khyber Pakhtunkhwa", "Balochistan"]
countries = ["Pakistan"]

def generate_email(name):
    return f"{name.lower()}@gmail.com"

def generate_phone():
    return f"03{random.randint(0, 9)}{random.randint(10000000, 99999999)}"

def generate_postal_code():
    return f"{random.randint(10000, 99999)}"

def generate_street():
    return f"{random.randint(1, 999)} {random.choice(['Main St', 'Second St', 'Third St', 'Park Ave', 'Fifth Ave'])}"

def generate_sql_queries(num_entries):
    queries = []
    for i in range(1, num_entries + 1):
        name = random.choice(names)
        email = generate_email(name)
        phone = generate_phone()
        street = generate_street()
        city = random.choice(cities)
        state = random.choice(states)
        postal_code = generate_postal_code()
        country = random.choice(countries)
        query = f"EXEC InsertEmployee @EmployeeID = {i}, @EmployeeName = '{name}', @EmployeePhone = '{phone}', @EmployeeEmail = '{email}', @Street = '{street}', @City = '{city}', @State = '{state}', @PostalCode = '{postal_code}', @Country = '{country}';"
        queries.append(query)
    return queries


# Generate 50 SQL insert queries
sql_queries = generate_sql_queries(110)

# Print the queries
for query in sql_queries:
    print(query)
    print("\n")
