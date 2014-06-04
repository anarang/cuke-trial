When(/^I visit www\.google\.com$/) do
  @browser.goto "www.google.com"
  p @browser.title
end

Then(/^I should see the Gmail link$/) do
  @browser.a(:text => "Gmail").click
  p "OK"
end
