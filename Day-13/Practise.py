#Patterns using Loops
rows=int(input("Enter rows:"))
col=int(input("Enter Columns:"))

#Square
print("------------------------------------------------------------")

n=int(input("Enter rows and Columns:"))
for i in range(n):
    for j in range(n):
            print("*",end=" ")
    print()
   
#Empty-Square
print("------------------------------------------------------------")

for i in range(n):
    for j in range(n):
        if j==0 or i==0  or i==n-1 or j==n-1:
            print("*",end=" ")
        else:
            print(" ",end=" ")
    print()
    
#Rectangle 
print("------------------------------------------------------------")
for i in range(rows):
    for j in range(col+2):
        print("*",end=" ")
    print()

#Right Angled Triangle
print("------------------------------------------------------------")
for i in range(1,rows+1):
    for j in range(0,i):
        print("*",end=" ")
    print()

#Reverse Right angled triangle
print("------------------------------------------------------------")
while(rows>0):
    for i in range(rows):
        print("*",end=" ")
    rows-=1
    print()

#Inverted Right angled  Triangle
print("------------------------------------------------------------")
i = rows
while i > 0:
   print((rows - i) * ' ' + i * '*')
   i -= 1



