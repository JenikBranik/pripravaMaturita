class Zvire:
    def __init__(self, jmeno, vek):
        self.jmeno = jmeno
        self.vek = vek


    def jez(self):
        print(f"{self.jmeno} zrovna ji")

    def __str__(self):
        return f"{self.jmeno}:jmeno, {self.vek}:vek"

class Pes(Zvire):
    def stekej(self):
        print(f"{self.jmeno} zrovna steka")

    def __str__(self):
        return f"Psisko jedno proradne"

muj_pejsek = Pes("Phoebe",12)
muj_zvire = Zvire("Kos",9)
muj_pejsek.jez()
muj_pejsek.stekej()
print(muj_pejsek)
print(muj_zvire)
print(muj_pejsek.super())