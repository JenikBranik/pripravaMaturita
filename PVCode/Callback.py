def greet(jmeno):
    return (f"Ahoj {jmeno}")

def greet_callback(jmeno,callback_func):
    result = callback_func(jmeno)
    return result

print(greet_callback("Karel", greet))