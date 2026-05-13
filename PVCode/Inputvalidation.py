class person:
    def __init__(self,first_name, last_name, age):
        self.set_first_name(first_name)
        self.set_last_name(last_name)
        self.set_age(age)


    def set_first_name(self, value):
        if isinstance(value, str):
            self.first_name = value
        else:
            self.first_name = None


    def set_last_name(self, value):
        if isinstance(value, str):
            self.last_name = value
        else:
            self.last_name = None


    def set_age(self, value):
        if isinstance(value, int):
            self.age = value
        else:
            self.age = None

    def __str__(self):
        return f"{self.first_name}, {self.last_name}, {self.age}"

test = person(1,1,1)
print(test)
test2 = person("Emil", "Janek", "L")
print(test2)