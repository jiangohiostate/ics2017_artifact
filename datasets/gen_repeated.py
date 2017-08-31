import random
import math
import sys

num_groups = int(math.pow(2, int(sys.argv[1])))
num_items = 32*1024*1024;
items_per_group = num_items / num_groups;
for j in range(items_per_group):
    for i in range(num_groups):
        print i, random.randint(1,5)




