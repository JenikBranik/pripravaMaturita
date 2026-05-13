import mysql.connector

connector = mysql.connector.connect(
    host="127.0.0.1",
    port=3306,
    user="username",
    password="pass"
)

cursor = connector.cursor()
cursor.execute("Select * from zam")

result = cursor.fetchall()
for instance in result:
    print(instance)

query = "Insert into zam(jmeno,prijmeni) values ('Pepa', 'Vonasek')"
cursor.execute(query)
connector.commit()

