#@CD3.34Ghz Pc
#py2.5.2@xp: 1.56, 65M(1.32, 70M)
#py2.6@xp:1.265(1.047)
#irpy2.0@xp: 2.73, 188M
#py3.0rc2@xp: 14.4s
#--------------------------
#py2.5.2@ubuntu: 1.40
#py2.6@ubuntu: 1.385(1.05)
#py3.0rc1+@ubuntu: 1.92
#py3.0rc2@ubuntu: 1.9
from time import time
from collections import defaultdict
from operator import itemgetter
from heapq import nlargest
#import psyco
#psyco.full()

def test():
    histo = defaultdict(int)
    for word in open("test.txt").read().split(): histo[word] += 1
    print(nlargest(30, histo.items(), key=itemgetter(1)))

if __name__ == "__main__":
    t1 = time()
    test()
    print(time()-t1)
