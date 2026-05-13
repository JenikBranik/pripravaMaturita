def InsertionSort(new_list):
    for i in range(len(new_list)):
        for j in range(i - 1, -1, -1):
            if new_list[j] > new_list[j+1]:
                new_list[j], new_list[j+1] = new_list[j+1], new_list[j]