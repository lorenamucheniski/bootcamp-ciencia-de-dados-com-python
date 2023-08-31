def exibir_mensagem():
    print('Olá Mundo')


def exibir_mensagem2(nome):
    print(f'Seja bem vindo(a) {nome}')  

def exibir_mensagem3(nome = "Anônimo"):
    print(f'Seja bem vindo(a) {nome}')
    

exibir_mensagem()
exibir_mensagem2(nome = 'Lorena')
exibir_mensagem3('Pedro')


