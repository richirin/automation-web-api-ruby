Given /^I opened "([^\"]*)"$/ do |site|
    @driver.get site
end

When /^I click sign in$/ do 
    clickElementBy("id", "nav-link-accountList") 
end

When /^I input email or phone "([^\"]*)"$/ do |email|
    inputToElementWith("id", "ap_email", email)
end

When /^I click continue/ do 
    clickElementBy("id", "continue")
end

When /^I input password "([^\"]*)"$/ do |secret|
    inputToElementWith("id", "ap_password", secret)
end

When /^I click sign in after input password$/ do 
    clickElementBy("id", "signInSubmit")
end

Then /^I should open verify page$/ do
    @wait.until{ @driver.title.downcase.start_with? "authentication required" }
    @wait.until{ @driver.current_url.downcase.include? "verify" }
end

Then /^I should see error message "([^\"]*)"$/ do |message|
    @wait.until{ @driver.find_element(:class => "a-list-item").text.downcase.include? message }
end

Then /^I should see alert message "([^\"]*)" with element "([^\"]*)"$/ do |alert, element|
    @wait.until{ @driver.find_element(:xpath => element).text.downcase.include? alert}
end