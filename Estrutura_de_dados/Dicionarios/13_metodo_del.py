contatos = {
    'guilherme@gmail.com' : {'nome': 'Guilherme', 'telefone': '3333-2221'},
    'giovanna@gmail.com' : {'nome': 'Giovanna', 'telefone': '3333-2121'},
    'chappie@gmail.com' : {'nome': 'Chappie', 'telefone': '3344-1871'},
    'Melaine@gmail.com' : {'nome': 'Melaine', 'telefone': '3333-7766'},
}

del contatos['guilherme@gmail.com']['telefone']
print(contatos)

del contatos['chappie@gmail.com']
print(contatos)