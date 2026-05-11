import gc

def run_garbage_collection():
    """
    Run the garbage collection
    :return: nothing
    """
    gc.enable()

def start_garbage_collection():
    """
    Start the garbage collection
    :return: nothing
    """
    gc.enable()

def stop_garbae_collection():
    """
    Turn off the garbage collection
    :return: nothing
    """
    gc.disable()

"""
Reference counting = každý objekt na haldě si nese číslo proměných na něj
"""
##
x = "Ahoj" # Python má jednu referencí na tento objekt
x = None # Python má nula referencí na tento objekt, takže jej automaticky smaže
