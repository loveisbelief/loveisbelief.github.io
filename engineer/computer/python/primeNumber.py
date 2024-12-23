for n in range(2,8):
    for m in range(2,n):
        if n%m==0:
            print(n,"=",m,'*',n//m);
            break;
    else:
        print(n,'是质数')
print("while")
count=0
while count<5:
    print(count,"小于5")
    count=count+1
else:
    print(count,"大于或等于5")