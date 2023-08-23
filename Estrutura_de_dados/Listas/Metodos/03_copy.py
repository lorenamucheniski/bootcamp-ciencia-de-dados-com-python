lista = [1, 'python',[40, 30, 20]]

l2 = lista.copy()

print(lista)

print(id(lista), id(l2))

l2 [0] = 5

print(lista)
print(l2)