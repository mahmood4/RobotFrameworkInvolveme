list = [1,0,0,2,3,0,4,5,6,7,8]

for item in list:
    if item == 0:
        list.remove(item)
        list.append(item)

print(list) 