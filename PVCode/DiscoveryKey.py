key_to_discover =  12413523

def DiscoveryKey(key):
    try_key = 0
    while True:
        if try_key == key:
            print(f"Key!!! {try_key}")
            break
        else:
            try_key+=1

DiscoveryKey(key_to_discover)