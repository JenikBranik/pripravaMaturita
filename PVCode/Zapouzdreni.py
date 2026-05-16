class uzivatel:
    def __init__(self, vek):
        self._vek = vek

    @property
    def vek(self):
        return self._vek

    @vek.setter
    def vek(self, value):
        self._vek = value

    def __str__(self):
        return f"{self.vek} gg"
