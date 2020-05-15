@uiAutomation
Feature: As a User I want to Sign Up to Amazon

# Sorry For commented code, because too much try to login, amazon give website with captcha

# @successRegister
# Scenario: Success register
#     Given I opened "https://amazon.com/"
#     And I click sign in
#     And I click create account
#     And I fill the form
#     And I click continue after fill the form
#     Then I should open request otp page

@failedRegisterWithoutName
Scenario: Failed Register without name
    Given I opened "https://amazon.com/"
    And I click sign in
    And I click create account
    And I fill the form without name
    And I click continue after fill the form
    Then I should see alert message "enter your name" with element "//div[contains(text(),'Enter your name')]"

@failedRegisterWithoutEmail
Scenario: Failed Register without email
    Given I opened "https://amazon.com/"
    And I click sign in
    And I click create account
    And I fill the form without email
    And I click continue after fill the form
    Then I should see alert message "enter your email" with element "//div[@id='auth-email-missing-alert']//div[@class='a-alert-content'][contains(text(),'Enter your email')]"

@failedRegisterWithoutPassword
Scenario: Failed Register without password
    Given I opened "https://amazon.com/"
    And I click sign in
    And I click create account
    And I fill the form without pass
    And I click continue after fill the form
    Then I should see alert message "enter your password" with element "//div[contains(text(),'Enter your password')]"

@failedRegisterWithoutWrongRetypePassword
Scenario: Failed Register without retype password
    Given I opened "https://amazon.com/"
    And I click sign in
    And I click create account
    And I fill the form without retype pass
    And I click continue after fill the form
    Then I should see alert message "type your password again" with element "//div[contains(text(),'Type your password again')]"

@multipleFailedInputForm
Scenario Outline: Failed Register without input
    Given I opened "https://amazon.com/"
    And I click sign in
    And I click create account
    And I fill the form without <without>
    And I click continue after fill the form
    Then I should see alert message "<errorMessage>" with element "<element>"
    Examples:
    | errorMessage         | without | element  |
    | enter your name      | name |//div[contains(text(),'Enter your name')]  |
    | enter your email      | email |//div[@id='auth-email-missing-alert']//div[@class='a-alert-content'][contains(text(),'Enter your email')]  |
    | type your password again      | retype pass|//div[contains(text(),'Type your password again')]  |
