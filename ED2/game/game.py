# --------------------------------
# --------------------------------
class Game:
    # construtor do objeto Game
    def __init__(self, nome=None, genero=None, plataforma=None,
        ano=None, classificacao=None, preco=None, midia=None,
        tamanho=None, produtora=None):
        self.nome = nome
        self.genero = genero
        self.plataforma = plataforma
        self.ano = ano
        self.classificacao = classificacao
        self.preco = preco
        self.midia = midia
        self.tamanho = tamanho
        self.produtora = produtora

    def setNome(self, nome):
        self.nome = nome

    def getNome(self):
        return (self.nome)

# --------------------------------
# --------------------------------


with open("/media/a2408732/home/faculdade/ED2/game/games.txt") as file:
    content = file.readlines()
    
content = [x.strip("\n") for x in content]

for line in content:
    game = line.split("|")
    game = Game(game[0], game[1], game[2], game[3], game[4], game[5], game[6], game[7], game[8])
    print(game.getNome())






