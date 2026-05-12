from dataclasses import dataclass

@dataclass
class person:
    first_name: str
    last_name: str
    age: int

first_person = person("Petr", "Vomacka",13)
print(first_person)