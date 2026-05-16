def number_input():
    while True:
            try:
                value = input("Enter number: ")
                return int(value)
            except ValueError as e:
                print(e)

number_input()

assert "Ahoj"==type(int)