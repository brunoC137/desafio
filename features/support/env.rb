require "capybara"
require "capybara/cucumber"
require "selenium-webdriver"
require "pry"

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.app_host = "http://mikudb.moe/"
end
