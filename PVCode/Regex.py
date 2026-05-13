import re

pattern = r'apple'
text = 'I have an apple and bannana'
matches = re.findall(pattern,text)

pattern2 = re.compile(r'^[\w.-]+@[\w.-]')

if re.match(pattern2,"honza.vavrousek@gmail.com"):
    print("Valid email")
else:
    print("Invalid")