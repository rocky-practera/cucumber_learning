require 'selenium-webdriver'
Selenium::WebDriver::Chrome.driver_path="/Users/XiaolongHuang/downloads/chromedriver"
driver = Selenium::WebDriver.for :chrome

Given(/^I open (.*) url$/) do |url|
  driver.navigate.to "#{url}"
end

When(/^I click login button$/) do
  driver.find_element(:xpath, "//a[text()=\"LOG IN\"]").click
end

Then(/^I input the email as (.*)$/) do |email|
	driver.find_element(:id,'UserEmail').send_keys("#{email}")
end

And(/^I input the password as (.*)$/) do |password|
	driver.find_element(:id,'UserPassword').send_keys("#{password}")
end

Then(/^I click the login button$/) do 
	driver.find_element(:xpath,"//button[@type='submit']").click
end


Then(/^I see the dashboard$/) do 
  wait = Selenium::WebDriver::Wait.new(:timeout => 1) # seconds
    element = wait.until { driver.find_element(:xpath => "//span[contains(text(),\"My Dashboard\")]") }
    expect(element.text).to eq('My Dashboard')
end