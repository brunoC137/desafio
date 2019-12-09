#language:pt


Funcionalidade: Realizar buscas no site mikuDb
    Queremos garantir que a busca no site está funcional


Contexto: 
Dado que eu estou no site mikuDb

#Inicio dos cenários realizados com busca por CSS
@download&busca
Cenário: Realizar uma busca no site e validar link Google
Quando que eu busco 'Hatsune Miku'
E eu clico em um resultado
Então eu espero que o album seja baixavel
E a cantora seja 'Hatsune Miku'
@sobusca
Cenário: Realizar uma busca no site e validar todos os retornos
Quando que eu busco 'Hatsune Miku'
Então eu espero que todos os resultados contenham 'Hatsune Miku'
#Fim dos cenários realizados com busca por CSS


#Inicio dos cenários realizados com busca por XPATH
@download&buscaxpath
Cenário: Realizar uma busca no site e validar link Google por xpath
Quando que eu busco 'Hatsune Miku' por xpath
E eu clico em um resultado por xpath
Então eu espero que o album seja baixavel por xpath
E a cantora seja 'Hatsune Miku' por xpath
@sobuscaxpath
Cenário: Realizar uma busca no site e validar todos os retornos por xpath
Quando que eu busco 'Hatsune Miku' por xpath
Então eu espero que todos os resultados contenham 'Hatsune Miku' por xpath
#Fim dos cenários realizados com busca por XPATH
