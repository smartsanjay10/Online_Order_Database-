import mysql.connector

# Connect to your MySQL database
conn = mysql.connector.connect(
    host="localhost",
    user="root",
    password="#Smart_10",
    database="e_commerce"
)

# Create a tool to execute SQL queries
cursor = conn.cursor()

# Run a query to get all customers

cursor.execute("select * from products")

# Get the results and print them
results = cursor.fetchall()
for row in results:
    print(row)

# Close the tools
cursor.close()
conn.close()