#language:pt


Funcionalidade: Realizar verificações no slider do site mikuDb
    Queremos garantir que o slider da home do site está funcional


Contexto: 
Dado que eu estou no site mikuDb

#Inicio dos cenários realizados com busca por CSS
@LançamentoMaisRecente
Cenário: Verificar se o album mais recente possuí link Google ou Mega
Quando Eu clico no album mais recente
Então eu espero que o album seja baixavel por Google ou Mega
#Fim dos cenários realizados com busca por CSS


#Inicio dos cenários realizados com busca por XPATH
@LançamentoMaisRecentexpath
Cenário: Verificar se o album mais recente possuí link Google ou Mega por xpath
Quando Eu clico no album mais recente por xpath
Então eu espero que o album seja baixavel por Google ou Mega por xpath
#Fim dos cenários realizados com busca por XPATH
