from typing import TypeVar, List

T = TypeVar('T')

def return_first(items: List[T]) -> T:
    return items[0]

result_int = return_first([1,2,3])
result_string = return_first(["a","b","c"])

print(result_int)
print(result_string)