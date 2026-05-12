class Model:
    def __init__(self):
        self.data = "Some data"

    def change_data(self,new_data):
        self.data = new_data

    def get_data(self):
        return self.data

class View:
    def user_input(self):
        return input("Enter data ")

    def render(self,data):
        print(data)

class Controller:
    def __init__(self, model, view):
        self.model = model
        self.view = view

    def set_value(self):
        new_value = self.view.user_input()
        self.model.change_data(new_value)

    def show_data(self):
        self.view.render(self.model.get_data())

mod = Model()
view = View()
controll = Controller(mod, view)

controll.set_value()
controll.show_data()