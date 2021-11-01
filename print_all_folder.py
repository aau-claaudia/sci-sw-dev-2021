
import glob
import json
import os

File_List = glob.glob('./data/*.json')

for i in File_List:
    f = open(i,'r')
    js = json.loads(f.read())
    print "itemid: %s" % (js['itemid'])
    print "importance: %s" % (js['importance'])
    f.close()



