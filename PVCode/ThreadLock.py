import threading


class Doggie:
    def __init__(self):
        self.locker = threading.Lock()
        self.age = 0

    @property
    def age(self):
        return self.age

    @age.setter
    def age(self, value):
        with self.locker:
            self.age = value


pes = Doggie()
pes.age = 5