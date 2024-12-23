import time
for i in range(1000):
    a=time.localtime();
    print(time.strftime("%Y-%m-%d %H:%M:%S",a));
    time.sleep(0.5)
b=time.asctime();
print(time.strftime("%a %b %d %H:%M:%S %Y",a));
t="Sat Mar 28 22:24:24 2016"#将格式字符串转换为时间戳。
print(time.mktime(time.strptime(t,"%a %b %d %H:%M:%S %Y")))