require 'selenium-webdriver'
require 'watir'

module Helpers

  def create_driver

    if ENV['DRIVER'] == 'Selenium'

      Selenium::WebDriver.for ENV['BROWSER'].to_sym, marionette: true

    else

      Watir::Browser.new ENV['BROWSER'].to_sym

    end

  end

end