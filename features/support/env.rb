require 'selenium/webdriver'

url = ENV['BROWSERSTACK_URL']

caps = Selenium::WebDriver::Remote::Capabilities.new

caps['browser'] = 'Chrome'
caps['os_version'] = '10'
caps['resolution'] = '1024x768'
caps['os'] = 'Windows'
caps['browser_version'] = '89.0'
caps['javascriptEnabled'] = 'true'
caps['name'] = 'BStack-Ruby-Sample-Test-arghajit'
caps['build'] = 'BStack Build Number 1'

browser = Selenium::WebDriver.for(:remote, :url => url, :desired_capabilities => caps)

Before do |scenario|
	@browser = browser
end

at_exit do
	browser.quit
end
