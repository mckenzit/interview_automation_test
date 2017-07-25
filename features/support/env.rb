require 'page-object/page_factory'
require 'page-object'
require 'selenium-webdriver'
require 'watir'
require 'cucumber'
require_relative 'helpers.rb'
require 'yaml'



World PageObject::PageFactory



include Helpers


ENV['TEST_ENV'] ||= 'staging'

project_root = File.expand_path('../..', __FILE__)

$BASE_URL = YAML.load_file(project_root + "/.config/config.yml")[ENV['TEST_ENV']][:url]



