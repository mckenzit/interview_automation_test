require_relative 'helpers.rb'

Before do

  @browser = Helpers.create_driver

end


After do

  @browser.quit

end