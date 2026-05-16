from abc import ABC, abstractmethod

class ICommand(ABC):
    @abstractmethod
    def execute(self):
        pass

class Svetlo:
    def zapni(self):
        print("Svetlo nahozeno")
    def vypni(self):
        print("Svetlo vypnuto")

class ZapniSvetloCommand(ICommand):
    def __init__(self, svetlo):
        self.svetlo = svetlo

    def execute(self):
        self.svetlo.zapni()

class ovladani:
    def stiskni_tlacitko(self, command: ICommand):
        command.execute()

lampa = Svetlo()

prikaz = ZapniSvetloCommand(lampa)
ovladac = ovladani()
ovladac.stiskni_tlacitko(prikaz)