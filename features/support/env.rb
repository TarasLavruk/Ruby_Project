# frozen_string_literal: true

require 'capybara/cucumber'
require 'selenium-webdriver'
require 'require_all'
require 'site_prism'
require 'webdrivers/chromedriver'

# require_all 'page_objects/sections'
# require_all 'page_objects/pages'
# require_relative 'feature_helper'

def options
  Selenium::WebDriver::Chrome::Options.new(args: %w[window-size=1800,1000])
end

Capybara.default_driver = :selenium
Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome, options: options)
end
