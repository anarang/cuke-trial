require 'watir-webdriver'
require 'headless'
headless = Headless.new
headless.start
browser = Watir::Browser.new

INDEX_OFFSET = -1
WEBDRIVER = true
 
Before do
  @browser = browser
end

at_exit do
  @browser.close
end
