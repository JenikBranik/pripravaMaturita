import mysql.connector


class Fasada:
    def __init__(self):
        self.mydb = mysql.connector.connect(
            host="127.0.0.1",
            port="3306",
            user="Username",
            password="password"
        )
        self.cursor = self.mydb.cursor()


    def create_user(self,name, password):
        query = "INSERT INTO user(name, password) values (%s,%s)"
        self.cursor.execute(query, (name,password))
        self.mydb.commit()
        return self.cursor.lastrowid

    def get_user(self,name):
        query = "SELECT * FROM user where name = %s"
        self.cursor.execute(query, (name))
        return self.cursor.fetchall()

test = Fasada()
test.create_user("Karel",123)