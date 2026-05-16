import pandas as pd
from sklearn.datasets import load_iris
from sklearn.metrics import classification_report
from sklearn.model_selection import train_test_split
from sklearn.tree import DecisionTreeClassifier

iris = load_iris()

df = pd.DataFrame(iris.data, columns=iris.feature_names)

print(iris.target_names)

print(df)

X_train, X_test, y_train, y_test = train_test_split(iris.data, iris.target, test_size=0.9,random_state=2) # Import dat na trenovaci a testovaci

model = DecisionTreeClassifier() # Decision tree
model.fit(X_train, y_train)

y_pred = model.predict(X_test)

print(classification_report(y_test,y_pred))