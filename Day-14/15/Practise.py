#Number Programs

def Perfect_number(n):
    c=0
    for i in range(1,n):
        if n%i==0:
            c+=i
    if c==n:
        print("Perfect Number:",n)
    else:
        print("Not a perfect Number:")

def factorial(n):
    if n==0:
        return n
    return n * factorial(n - 1)


def armstrong_number(n):
    l=len(str(n))
    sum=0
    num=n
    for i in range(l):
        sum+=(num%10)**l
        num//=10
    if sum==n:
        print(n,":Is a Armstrong Number")
    else:
        print(n,":Is not a Armstrong Number")
        
        
def fibonoic_Series_num(n):
    if n==0 or n==1:
        return n
    return fibonoic_Series_num(n-1) + fibonoic_Series_num(n-2)



def GCD(a,b):
    while b!=0:
        a,b=b,a%b    #Formula to caluculate GCD
    return a


def LCM(a,b):
    print(f"LCM of {a}and{b}is", (a*b)//GCD(a,b))
    
    
def prime_number(n):
    if n <= 1:
        return "Not A Prime Number"

    for i in range(2, int(n**0.5) + 1):
        if n % i == 0:
            return "Not A Prime Number"

    return "Prime Number"
            

print("----------------Perfect Number------")
Perfect_number(6)
print("----------------Factorial------")
print(f"Factorial of Number {5} is :{factorial(5)}")
print("----------------Armstrong Number------")
armstrong_number(153)
print("----------------Fibonoic Series Number------")
print(f"fibnoic series of Number {6} is :{fibonoic_Series_num(6)}")
print("----------------GCD------")
print("GCD of 4 and and is:",GCD(4,5))
print("----------------LCM------")
LCM(16,24)
print("----------------Prime Number------")
print("Number 147 is:",prime_number(147))
