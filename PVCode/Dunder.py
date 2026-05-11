class money:
    def __init__(self,value):
        self.value = value

    def __str__(self):
        return f"{self.value} Kč"

    def __add__(self,other):
        result_value = self.value + other.value
        return money(result_value)

january = money(5000)
february = money(15000)
jan_feb = january + february
print(jan_feb)