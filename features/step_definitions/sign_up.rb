And /^I fill the form$/ do
    inputToElementWith("id", "ap_customer_name", Faker::Name.name)
    inputToElementWith("id", "ap_email", Faker::Internet.email)
    secret = "poiqwe123456"
    inputToElementWith("id", "ap_password", secret)
    inputToElementWith("id", "ap_password_check", secret)
end

And /^I click continue after fill the form$/ do 
    clickElementBy("id", "continue")
end

And /^I click create account$/ do 
    clickElementBy("id", "createAccountSubmit")
end

Then /^I should open request otp page$/ do
    @wait.until( findElementBy("class", "a-row a-spacing-micro cvf-widget-input-code-label").text.downcase.include? "otp")
    @wait.until{ @driver.current_url.downcase.include? "request" }
end

Then /^I should see alert "([^\"]*)" with element "([^\"]*)"$/ do |message, element|
    @wait.until( findElementBy("xpath", element).text.downcase.include? message)
    @wait.until{ @driver.current_url.downcase.include? "register" }
end


And /^I fill the form without name/ do
    inputToElementWith("id", "ap_customer_name", "")
    inputToElementWith("id", "ap_email", Faker::Internet.email)
    secret = "poiqwe123456"
    inputToElementWith("id", "ap_password", secret)
    inputToElementWith("id", "ap_password_check", secret)
end

And /^I fill the form without email/ do
    inputToElementWith("id", "ap_customer_name", Faker::Name.name)
    inputToElementWith("id", "ap_email", "")
    secret = "poiqwe123456"
    inputToElementWith("id", "ap_password", secret)
    inputToElementWith("id", "ap_password_check", secret)
end

And /^I fill the form without pass/ do
    inputToElementWith("id", "ap_customer_name", Faker::Name.name)
    inputToElementWith("id", "ap_email", Faker::Internet.email)
    secret = "poiqwe123456"
    inputToElementWith("id", "ap_password", "")
    inputToElementWith("id", "ap_password_check", secret)
end

And /^I fill the form without retype pass/ do
    inputToElementWith("id", "ap_customer_name", Faker::Name.name)
    inputToElementWith("id", "ap_email", Faker::Internet.email)
    secret = "poiqwe123456"
    inputToElementWith("id", "ap_password", secret)
    inputToElementWith("id", "ap_password_check", "")
end