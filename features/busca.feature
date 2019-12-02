#language:pt


Funcionalidade: Realizar buscas no site mikuDb
    Queremos garantir que a busca no site está funcional


Contexto: 
Dado que eu estou no site mikuDb

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






