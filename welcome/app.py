# O método "welcome" é uma palavra chave dentro do Robot Framework.
def welcome(name):
    return f'Olá {name}, bem vindo ao Curso básico de Robot Framework!'

result = welcome('Emerson')
print(result)