def A(): # Přímá rekurze
    A()

def B(): # Nepřímá rekurze
    C()

def C():
    B()

def D():
    return D(), D()