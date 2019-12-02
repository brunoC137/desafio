Dado("que eu estou no site mikuDb") do
  visit "http://mikudb.moe/"
  #visit "http://mikudb.moe/album/hatsune-miku-magical-mirai-2019-official-album/"
end

Quando("que eu busco {string}") do |string_busca|
  find("#s").set string_busca
  find(".btn.btn-default", text: "Search").click
end

E("eu clico em um resultado") do
  #heflink = find("#post-59758 > div > div:nth-child(2) > a")
  heflink = all("a[title^=Permalink]")
  heflink[0].click
end

Então("eu espero que o album seja baixavel") do
  links = all("a", text: "drive")
  links.each do |i|
    expect(i).to be_visible
  end
  # find("div.class_name = a")
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
