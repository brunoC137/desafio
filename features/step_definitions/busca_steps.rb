Dado("que eu estou no site mikuDb") do
  visit "http://mikudb.moe/"
  #visit "http://mikudb.moe/album/hatsune-miku-magical-mirai-2019-official-album/"
end

#-----------------------------------------------------------------------------------------------------------------------------------------------------------
#Inicio dos cenários realizados com busca por CSS

Quando("que eu busco {string}") do |string_busca|
  find("#s").set string_busca
  find(".btn.btn-default", text: "Search").click
end

E("eu clico em um resultado") do
  heflink = all("a[title^=Permalink]")
  heflink[0].click
end

Então("eu espero que o album seja baixavel") do
  links = all("a", text: "drive")
  links.each do |i|
    expect(i).to be_visible
  end
end

Dado("a cantora seja {string}") do |string_busca|
  titulo = find(".album-title")
  expect(titulo.text).to have_content string_busca
end

Então("eu espero que todos os resultados contenham {string}") do |string_busca|
  heflink = all("a[title^=Permalink]")
  heflink.each do |i|
    expect(i).to have_content(%r{#{string_busca}}i)
  end
end
#Fim dos cenários realizados com busca por CSS
#-----------------------------------------------------------------------------------------------------------------------------------------------------------

#-----------------------------------------------------------------------------------------------------------------------------------------------------------
#Inicio dos cenários realizados com busca por XPATH
Quando("que eu busco {string} por xpath") do |string_busca|
  find(:xpath, "//input[@id='s']").set string_busca
  find(:xpath, "//button[@class='btn btn-default']").click
end

Quando("eu clico em um resultado por xpath") do
  within(find(:xpath, "//section[@id='primary']")) do
    @heflink = all(:xpath, "//div/div[2]/a")
  end
  @heflink[0].click
end

Então("eu espero que o album seja baixavel por xpath") do
  links = all(:xpath, "//*/div[3]/div[1]/div[1]/div[2]/p[1]/a", text: "drive")
  links.each do |i|
    expect(i).to be_visible
  end
end

Então("a cantora seja {string} por xpath") do |string_busca|
  titulo = find(:xpath, "//h1[@class='album-title']")
  expect(titulo.text).to have_content string_busca
end

Então("eu espero que todos os resultados contenham {string} por xpath") do |string_busca|
  heflink = all(:xpath, "//section[@id='primary']")
  heflink.each do |i|
    expect(i).to have_content(%r{#{string_busca}}i)
  end
end
#Fim dos cenários realizados com busca por XPATH
#-----------------------------------------------------------------------------------------------------------------------------------------------------------
