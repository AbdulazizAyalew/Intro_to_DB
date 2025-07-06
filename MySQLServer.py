import mysql.connector
from mysql.connector import Error  # ✅ Import the specific error class

try:
    # ✅ Try connecting to the database
    mydb = mysql.connector.connect(
        host="localhost",
        user="root",
        password="12345678",
        database="alx_book_store"
    )

    sql = "CREATE DATABASE IF NOT EXISTS alx_book_store"
    mycursor = mydb.cursor()

    mycursor.execute(sql)
    
    # We don’t need fetchall() here since CREATE DATABASE doesn't return rows
    print("Database Connected or Created Successfully")

except mysql.connector.Error as err:
    # ✅ Catching specific mysql connector errors
    print(f"Error: {err}")

finally:
    # ✅ Close the cursor and connection if they exist
    if 'mycursor' in locals() and mycursor:
        mycursor.close()
    if 'mydb' in locals() and mydb.is_connected():
        mydb.close()
