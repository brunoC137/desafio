Dado("que eu estou no site mikuDb") do
  visit "http://mikudb.moe/"
end

Dado("que eu busco {string}") do |string_busca|
  find("#s").set string_busca
  find(".btn.btn-default", text: "Search").click
end

Quando("eu clico em um resultado") do
  #heflink = find("#post-59758 > div > div:nth-child(2) > a")
  heflink = all("a[title^=Permalink]")
  heflink[0].click
end

Então("eu espero que o album seja baixavel") do
  expect(("a[href^=https://drive]")).to be_true?
end

Dado("a cantora seja {string}") do |string_busca|
  titulo = find(".album-title")
  expect(titulo.text).to have_content string_busca
end
