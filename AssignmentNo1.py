# Write Python code for Word count and find occurrence of word from file.
fname=input(" Enter File name:")
fh=open(fname)
li=list()
li1=list()
di=dict()
count=0
for line in fh:
    line=line.rstrip()
    li1=line.split()
    for a in li1:
        li.append(a)
        count=count+1
 for w in li:
    if w in di:
        di[w]=di[w]+1
    else:
        di[w]=1  
 print("Number of words:",count)
 print("Occurrence of words:")
 for k in di:  
    print(k, di[k])
    
   
