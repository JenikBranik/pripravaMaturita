class Car:
    def jed(self):
        print("Brm")

class Bike:
    def jed(self):
        print("Vzmm")

class Plane:
    def jed(self):
        print("FFFFFFF")


dopravni_prostredky = [Car(),Bike(),Plane()]
for prostredek in dopravni_prostredky:
    prostredek.jed()