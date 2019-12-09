#-----------------------------------------------------------------------------------------------------------------------------------------------------------
Quando("Eu clico no album mais recente") do
  #binding.pry
  first(".ms-thumb-frame").click
  links = all(".ms-slide.ms-slide > a")
  index = ((links.count) - 1) / 2
  links[index].click(visible: false)
end

Então("eu espero que o album seja baixavel por Google ou Mega") do
  links = all("a", text: "drive" || "MEGA")
  links.each do |i|
    expect(i).to be_visible
  end
end
#Fim dos cenários realizados com busca por CSS
#-----------------------------------------------------------------------------------------------------------------------------------------------------------

#-----------------------------------------------------------------------------------------------------------------------------------------------------------
#Inicio dos cenários realizados com busca por XPATH
Quando("Eu clico no album mais recente por xpath") do
  first(:xpath, "//div[@class='ms-thumb-frame']").click
  links = all(:xpath, "//div[@data-delay='3']")
  index = ((links.count) - 1) / 2
  links[index].click(visible: false)
end

Então("eu espero que o album seja baixavel por Google ou Mega por xpath") do
  #links = all(:xpath, "//*/div[3]/div[1]/div[1]/div[2]/p[1]/a", text: "drive" || "MEGA")
  links = all(:xpath, "//a[contains(.,'Google Drive')]" || "//a[contains(.,'MEGA')]")
  links.each do |i|
    expect(i).to be_visible
  end
end

#Fim dos cenários realizados com busca por XPATH
#-----------------------------------------------------------------------------------------------------------------------------------------------------------
