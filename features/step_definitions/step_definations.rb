Given /^I am on (.+)$/ do |url|
	@browser.navigate.to "http://www.flipkart.com"
end

Given /^I close the login popup$/ do
	@browser.find_element(:xpath,".//button[text()='✕']").click
end

When /^I fill in "([^"]*)" found by "([^"]*)" with "([^"]*)"$/ do |value, type, keys|
	@element = @browser.find_element(type, value)
	@element.send_keys keys
end

When /^I search$/ do
	@element.submit
end

Then /^I should see title "([^"]*)"$/ do |title|
	raise "Fail" if @browser.title != title
end

Then /^I should see results with photo with word "([^"]*)"$/ do |alt_text|
	@elements = @browser.find_elements(:xpath,"//img[contains(@alt,'#{alt_text}')]")
	raise "Fail" if @elements.count = 0
end

