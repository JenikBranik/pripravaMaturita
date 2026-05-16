class Kocka:
    def zvuk(self):
        """
        Metoda na vydání zvuku zvířete
        :return: Textový řetězec zvuku
        """
        return "Mnau"

class Pes:
    def zvuk(self):
        """
        Metoda na vydání zvuku zvířete
        :return: Textový řetězec zvuku
        """
        return "Haf"

class FactoryMethod:
    def vyberZvire(self, typ: str):
        """
        Metoda na vyber zvirete pomoci Factory Methody
        :param typ: Vstupni hodnota typu str, urcujici o jake zvire se jedna
        :return: Vystupni hodnota definujici jaky objekt se vytvori
        """
        if typ.lower() == "pes": # Podmínková logika pro výběr zvířete
            return Pes()
        elif typ.lower() == "kocka": # Podmínková logika pro výběr zvířete
            return Kocka()

import unittest
class TestObjectMethod(unittest.TestCase):
    def test_object(self):
        fm = FactoryMethod()
        muj_mazlicek = fm.vyberZvire("pes")
        self.assertIsInstance(muj_mazlicek, Pes)

    def test_zvuk(self):
        fm = FactoryMethod()
        muj_mazlicek = fm.vyberZvire("pes")
        self.assertEqual(muj_mazlicek.zvuk(), "Haf")