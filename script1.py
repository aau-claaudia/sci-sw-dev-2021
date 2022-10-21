import os
f=open('pythondat.dat','w')
for file in os.listdir('./data/'):
    cmd = 'python  print_kpthesaurus.py ./data/'+ file
    pipeline = os.popen(cmd)
    content=pipeline.read()
    output=file[:-5]+';'+content
    f.write(output)