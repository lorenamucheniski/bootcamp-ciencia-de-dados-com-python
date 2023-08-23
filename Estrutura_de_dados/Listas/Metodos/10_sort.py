linguagens = ['python', 'js', 'c++', 'java', 'csharp']
linguagens.sort()
print(linguagens)

linguagens = ['python', 'js', 'c++', 'java', 'csharp']
linguagens.sort(reverse= True)
print(linguagens)

linguagens = ['python', 'js', 'c++', 'java', 'csharp']
linguagens.sort(key= lambda x: len(x))
print(linguagens)

linguagens = ['python', 'js', 'c++', 'java', 'csharp']
linguagens.sort(key= lambda x: len(x), reverse= True)
print(linguagens)