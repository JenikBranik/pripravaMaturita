class Calculator:
    def secti(self,a, b, c=0):
        return a + b + c

    def secit_libov(self,*args):
        vysledek = 0
        for i in args:
            vysledek = vysledek + i
        return vysledek

kalkulacka = Calculator()
print(kalkulacka.secti(1,2))
print(kalkulacka.secti(1,2,3))
print(kalkulacka.secit_libov(1,2,3,5,6,7,8,9))
print(kalkulacka.secit_libov(1))
