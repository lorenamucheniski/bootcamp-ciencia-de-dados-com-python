def salvar_carros(marca, modelo, ano, placa):
    print(f'Carro inserido com sucesso! {marca}/{modelo}/{ano}/{placa}')

salvar_carros('Fiat', 'Palio', 1999, 'ABC-1234')
salvar_carros(marca='Fiat', modelo='Palio', ano= 1999, placa= 'ABC-1234')
salvar_carros(**{'marca':'Fiat', 'modelo':'Palio', 'ano': 1999, 'placa': 'ABC-1234'})
