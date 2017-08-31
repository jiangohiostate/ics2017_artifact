import random
import math
import sys

num_groups = int(math.pow(2, int(sys.argv[1])))
num_items = 32*1024*1024;
for i in range(num_items):
    print random.randint(0, num_groups-1), random.randint(1, 5)




