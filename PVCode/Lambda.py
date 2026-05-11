## Jednoduchá ukázka lambda metody

count = lambda a,b: a+b
print(count(5,1))

## Jednoduchá ukázka filteru

muj_list = [1,2,3,4,5,6]
sudy_list = list(filter(lambda x : x % 2 == 0, muj_list))
print(sudy_list)