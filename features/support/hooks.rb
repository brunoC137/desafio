Before do
  # page.current_window.resize_to(1440, 900)
  page.driver.browser.manage.window.maximize
  #page.driver.browser.manage.window.change
end
After do |scenario|
  if scenario.failed?
    binding.pry if ENV['debug']
  end
end