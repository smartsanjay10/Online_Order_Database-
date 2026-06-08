import mysql.connector

def main():
    # Connect to MySQL
    db = mysql.connector.connect(
        host="localhost",          # or your server IP
        user="root",    # replace with your MySQL username
        password="#Smart_10",    # replace with your MySQL password
        database="e_commerce"   # replace with your database name
    )

    cursor = db.cursor()

    # Execute schema.sql file
    with open('schema.sql', 'r') as file:
        schema_sql = file.read()
        cursor.execute(schema_sql, multi=True)
    
    # Execute sample_data.sql file
    with open('sample_data.sql', 'r') as file:
        sample_data_sql = file.read()
        cursor.execute(sample_data_sql, multi=True)

    # Commit the changes
    db.commit()

    # Example of a custom query
    cursor.execute('SELECT * FROM customers')
    customers = cursor.fetchall()
    for customer in customers:
        print(customer)

    # Close cursor and connection
    cursor.close()
    db.close()

if __name__ == "__main__":
    main()