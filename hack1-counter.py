from time import time
from collections import Counter

def test():
    words = open("test.txt").read().split()
    print(Counter(words).most_common(30))

if __name__ == "__main__":
    t1 = time()
    test()
    print(time()-t1)
