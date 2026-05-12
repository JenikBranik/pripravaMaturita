from enum import Enum

class RocniObdobi(Enum):
    Jaro = 1
    Leto = 2
    Podzim = 3
    Zima = 4

aktualni_obdobi = RocniObdobi.Jaro
print(aktualni_obdobi)