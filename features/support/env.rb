require 'watir-webdriver'

if ENV["HEADLESS"] then
  browser = Watir::Browser.new :phantomjs
else
  browser = Watir::Browser.new :firefox, :profile => 'default'
end

INDEX_OFFSET = -1
WEBDRIVER = true
 
Before do
  @browser = browser
end

at_exit do
  browser.close
end
