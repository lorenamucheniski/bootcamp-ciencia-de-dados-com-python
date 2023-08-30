contatos = {
    'guilherme@gmail.com' : {'nome': 'Guilherme', 'telefone': '3333-2221'},
    'giovanna@gmail.com' : {'nome': 'Giovanna', 'telefone': '3333-2121'},
    'chappie@gmail.com' : {'nome': 'Chappie', 'telefone': '3344-1871'},
    'Melaine@gmail.com' : {'nome': 'Melaine', 'telefone': '3333-7766'},
}

resultado = 'chappie@gmail.com' in contatos
print(resultado)

resultado = 'miguel@gmail.com' in contatos
print(resultado)

resultado = 'idade' in contatos['giovanna@gmail.com']
print(resultado)

resultado = 'telefone' in contatos['Melaine@gmail.com']
print(resultado)