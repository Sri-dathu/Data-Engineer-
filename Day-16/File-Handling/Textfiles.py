#Reading a Text File;

with open(r"C:\Users\jithu\OneDrive\Documents\30DT\Day-16\File-Handling\Writedata.txt", "r") as readfile:
    print("Reads Complete File...\n",readfile.read())
    
    try:
        lines=readfile.readline() #Reads line by line
        while lines:
            print(lines,end=" ")
        
    except EOFError :
        print(" ")
        

#Writing into a Text File:


with open(r"C:\Users\jithu\OneDrive\Documents\30DT\Day-16\File-Handling\Writedata.txt", "w") as writefilefile:
    writefilefile.write("Hello World!!")


#Append to a Text File


with open(r"C:\Users\jithu\OneDrive\Documents\30DT\Day-16\File-Handling\Writedata.txt", "w") as appendfile:
     appendfile.write("Bye!!")
    
     
     

