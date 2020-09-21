# desafio
Todas as features dessa automação são voltadas ao site http://mikudb.moe/. para cada cenário dessa altomação iremos duplica-los, na qual uma das copias irá utilizar seletores css e a outra irá utilizar seletores xpath.
Para rodar a automação é necessário ter o ambiente pronto para rodar atumações com cucumber(Para tanto verifique o fim desse arquivo), uma vez com o ambiente pronto e estando na pasta do desafio, é só necessário rodar o comando cucumber no terminal. Caso deseje rodar parcialmente os testes utilizando as tags, verifique abaixo a descrição das features e cenários.



A seguir lista das features atualmente tratadas na automação:
1 --> Busca
2 --> Slider


Para cada feature existe um conjunto de cenários, esses que serão listados abaixo:

Feature: Busca
Cenário: Realizar uma busca no site e validar link Google
Tag: @download&busca
Explicação: Esse cenário valida que é possivel realizar uma busca no site e através dos resultados, selecionar um album que contenha a string que foi pesquisada, e que esse mesmo album possua links de download para o googleDrive. Isso através de seletores CSS.

Feature: Busca
Cenário: Realizar uma busca no site e validar todos os retornos
Tag: @sobusca
Explicação: Esse cenário valida que ao realizar uma pesquisa, todos os retornos irão contem a string que foi pesquisada. Isso através de seletores CSS.

Feature: Busca
Cenário: Realizar uma busca no site e validar link Google por xpath
Tag: @download&buscaxpath
Explicação: Esse cenário valida que é possivel realizar uma busca no site e através dos resultados, selecionar um album que contenha a string que foi pesquisada, e que esse mesmo album possua links de download para o googleDrive. Isso através de seletores Xpath.

Feature: Busca
Cenário: Realizar uma busca no site e validar todos os retornos por xpath
Tag: @sobuscaxpath
Explicão: Esse cenário valida que ao realizar uma pesquisa, todos os retornos irão contem a string que foi pesquisada. Isso através de seletores Xpath.



Feature: Slider
Cenário: Verificar se o album mais recente possuí link Google ou Mega
Tag: @LançamentoMaisRecente
Explicão: Esse cenário valida que ao entrar no album mais recente através do slider, o mesmo será encaminhado corretamente, e que o album possuírá link do googleDrive ou do Mega. Isso através de seletores CSS.



Feature: Slider
Cenário: Verificar se o album mais recente possuí link Google ou Mega por xpath
Tag: @LançamentoMaisRecentexpath
Explicão: Esse cenário valida que ao entrar no album mais recente através do slider, o mesmo será encaminhado corretamente, e que o album possuírá link do googleDrive ou do Mega. Isso através de seletores Xpath.





# ------------------------------------------------------------------- Preparação do Ambiente---------------------------------------------------------------------

Para utilizar dessa altomação é necessário ter instalado as seguintes gems:
  gem "capybara", "3.14"
  gem "cucumber", "3.1.2"
  gem "rspec", "3.7.0"
  gem "selenium-webdriver", "3.141"
  gem "pry"

Para tanto é necessário seguir as seguintes etapas:
Instalar o ruby;
Instalar a gem bundler;
Criar um gemFile como o seguinte texto:
{
    source "https://rubygems.org"
    group :test do
    gem "capybara", "3.14"
    gem "cucumber", "3.1.2"
    gem "rspec", "3.7.0"
    gem "selenium-webdriver", "3.141"
    gem "pry"
    end
}
Rodar o comando 'gem bundle install' na pasta onde o gemfile está localizado.
Clone o repositorio para a pasta onde o gemfile foi rodado.
