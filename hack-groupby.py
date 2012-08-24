#@CD3.34Ghz Pc
#py2.5.2@xp: 4.83, 67M(4.90, 68M)
#py2.6@xp: 4.63,66M(4.64)
#irpy2.0@xp: 9.28, 195M
#py3.0rc2@xp: 18.31s
#--------------------------
#py2.5.2@ubuntu: 4.67
#py2.6@ubuntu: 4.62,65M
#py3.0rc1+@ubuntu: 5.75s

from time import time
from itertools import groupby
from operator import itemgetter
from heapq import nlargest
#import psyco
#psyco.full()

def test():
    words = open("test.txt").read().split()
    words.sort()
    freq = [(k, len(list(g))) for k,g in groupby(words)]
    print(nlargest(30, freq, key=itemgetter(1)))

if __name__ == "__main__":
    t1 = time()
    test()
    print(time()-t1)
