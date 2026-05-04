import json

def createJSON():
    dictionary = {
        "name": "blem",
        "rollno": 56,
        "C": 1.1,
    }

    json_object = json.dumps(dictionary, indent=4)

    with open("sample.json", "w") as outfile:
        outfile.write(json_object)

def readJSON():
    f = open("sample.json")

    data = json.load(f)

    for i in data:
        print(i)

    f.close()

readJSON()