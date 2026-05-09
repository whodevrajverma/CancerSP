#!usr/bin/env python

########## usage : python final_program_install.py input_file_list  (file_containing_list_of_servers) ######
import os
import sys
import re
import subprocess
#dir = os.path.dirname(sys.argv[3])
########## read list of input files  
#with open(sys.argv[1],'r') as f:
with open("model_list",'r') as f:
    a = f.readlines()
    #x = a[int(sys.argv[2])]
    #print(x)
    print ("Key" + "\t" + "model to run" + "\n")

    for each in a:
	files = each.split('.')
	line = files[0]
	line2 = files[1]


###### list of all files ####
	print (line + '. '+ "\t" + line2)
    
    print ("select key to select the model " + ":" + " 1 - 3" + " or use quit() to quit the program") ## number range can be depends upon no of softwares
    q = "quit"
    question = "Enter the key \n"
    #print ('Enter the key')
    if True:
    #while True:
	#x = int(input(question))
        key = int(input(question))
        print ('You Have selected :' + str(key))
	#subprocess.call("./script.sh", shell=True)	
	if key == 1 :
	    os.system('sh ./script_64.sh')
	elif key == 2 :
	    os.system('sh ./script_38.sh')
	elif key == 3 :
	    os.system('sh ./script_10.sh')
   	else:
	    print ("please select the correct key") 

######### else quit the script ############

    else: 
	
         #key = input(quit)
        print "system exit"
	sys.exit()


