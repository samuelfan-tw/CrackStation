import json
import hashlib

dictionary ={}    
seq1 = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890"  
seq2 = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890"      
 
c=[x for x in seq1]
for i in c :
    result = hashlib.sha1(i.encode())
    sha1=result.hexdigest()
#    print(sha1) 
    dictionary[sha1] = i 

c=[(x+y) for x in seq1 for y in seq2]
for i in c :
    result = hashlib.sha1(i.encode())
    sha1=result.hexdigest()
#    print(sha1) 
    dictionary[sha1] = i 

# Serializing json
json_object = json.dumps(dictionary, indent=4)

# Writing to data.json
with open("data.json", "w") as outfile:
	outfile.write(json_object)
