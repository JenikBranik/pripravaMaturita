class Pes:
    def zvuk(self):
        return "hafhaf"

class Kocka:
    def zvuk(self):
        return "manumnau"

class ZvireFactory:
    def vytvor_zvire(self, typ):
        if typ == "pes":
            return Pes()
        elif typ == "kocka":
            return Kocka()

zf = ZvireFactory()

moje_zvire = zf.vytvor_zvire(typ="pes")
print(moje_zvire.zvuk())
