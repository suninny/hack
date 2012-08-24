#@CD3.34Ghz Pc
#py2.5.2@xp: 2.04, 65M(1.51, 70M)
#py2.6@xp: 1.70, 65M(1.22,67M)
#irpy2.0@xp: 2.85, 188M
#py3.0rc2@xp: 14.95,89M
#--------------------------
#py2.5.2@ubuntu: 1.86,63M()
#py2.6@ubuntu: 1.90,63M(1.225)
#py3.0rc1+@ubuntu: 2.34,86M
#py3.0rc2@ubuntu: 2.39

from time import time
from operator import itemgetter
from heapq import nlargest
#import psyco
#psyco.full()

def test():
    histo = {} 
    for word in open("test.txt").read().split():
        histo[word] = 1 + histo.get(word, 0)
    print(nlargest(30, histo.items(), key=itemgetter(1)))

if __name__ == "__main__":
    t1 = time()
    test()
    print(time()-t1)
