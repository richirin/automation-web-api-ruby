require 'rubygems'
require 'selenium-webdriver'
require 'faker'
require 'rest-client'
require 'json'

Before do
    @driver = Selenium::WebDriver.for :chrome
    @driver.manage.timeouts.implicit_wait = 60
    @driver.manage.timeouts.script_timeout = 60
    @driver.manage.timeouts.page_load = 60
    @wait = Selenium::WebDriver::Wait.new(timeout: 10)
end


After do
    @driver.quit
end