from threading import Timer


def hello():
    print("hello, world")

def helloWorld():
    print("Ahoj svet!")

t = Timer(5, hello)
t.start()  # after 30 seconds, "hello, world" will be printed
t2 = Timer(2, helloWorld)
t2.start()