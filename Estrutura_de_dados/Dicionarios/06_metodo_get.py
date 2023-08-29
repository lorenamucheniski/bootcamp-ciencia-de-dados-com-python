dados = {'guilherme@gmail.com' : {'nome': 'Guilherme', 'telefone': '3333-2221'}}

print(dados.get('chave'))
print(dados.get('chave', {'não existe'}))
print(dados.get('guilherme@gmail.com', {}))