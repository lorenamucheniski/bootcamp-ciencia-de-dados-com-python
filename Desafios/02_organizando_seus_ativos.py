ativos = []

print('Insira a quantidade de ativos: ')
# Entrada da quantidade de ativos
quantidadeAtivos = int(input())

# Entrada dos códigos dos ativos
print('Insira o nome dos ativos: ')
for _ in range(quantidadeAtivos):
    codigoAtivo = input()
    ativos.append(codigoAtivo)

# TODO: Ordenar os ativos em ordem alfabética.
ativos.sort()
ativos1 = '\n'.join(ativos)
# TODO: Imprimir a lista de ativos ordenada, conforme a tabela de exemplos.
print('Seus ativos são: ')
print(ativos1)

