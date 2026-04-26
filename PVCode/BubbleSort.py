list = [0, 25, 126, -12, 30]

def BubbleSort(list):
    n = len(list)
    for i in range(n):
        for j in range(n-i-1):
            if list[j] > list[j+1]:
                list[j], list[j+1] = list[j+1], list[j]

print(list)
BubbleSort(list)
print(list)
