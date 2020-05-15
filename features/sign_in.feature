@uiAutomation
Feature: As a User I want to Sign In to Amazon

# Sorry For commented code, because too much try to login, amazon give website with captcha

# @singleSuccessEmail
# Scenario: Success Login With Valid Format Email
#     Given I opened "https://amazon.com/"
#     When I click sign in
#     And I input email or phone "poiqwe1234524@gmail.com"
#     And I click continue
#     And I input password "poiqwe123456"
#     And I click sign in after input password
#     And I click continue
#     Then I should open verify page

# @singleSuccessPhone
# Scenario: Success Login With Valid Format Email
#     Given I opened "https://amazon.com/"
#     When I click sign in
#     And I input email or phone "+6282298370644"
#     And I click continue
#     And I input password "poiqwe123456"
#     And I click sign in after input password
#     And I click continue
#     Then I should open verify page

# @multipleSuccessLogin
# Scenario Outline: Success Login With Valid Format Email or Phone Number
#     Given I opened "https://amazon.com/"
#     When I click sign in
#     And I input email or phone "<input>"
#     And I click continue
#     And I input password "poiqwe123456"
#     And I click sign in after input password
#     And I click continue
#     Then I should open verify page
#     Examples:
#     | input |
#     | poiqwe1234524@gmail.com |
#     | +6282298370644 |


@FailedWithEmail
Scenario: Failed login with invalid format Email
    Given I opened "https://amazon.com/"
    When I click sign in
    And I input email or phone "poiqwe1234524"
    And I click continue
    Then I should see error message "we cannot find an account with that email address"

@FailedWithPhone
Scenario: Failed login with invalid phone number
    Given I opened "https://amazon.com/"
    When I click sign in
    And I input email or phone "0123"
    And I click continue
    Then I should see error message "we cannot find an account with that mobile number"

# @FailedWithValidEmailButInvalidPassword
# Scenario: Failed login with Valid Email but Invalid Password
#     Given I opened "https://amazon.com/"
#     When I click sign in
#     And I input email or phone "poiqwe1234524@gmail.com"
#     And I click continue
#     And I input password "123"
#     And I click sign in after input password
#     Then I should see error message "your password is incorrect"

# @FailedWithValidPhoneButInvalidPassword
# Scenario: Failed login with invalid format Email
#     Given I opened "https://amazon.com/"
#     When I click sign in
#     And I input email or phone "+6282298370644"
#     And I click continue
#     And I input password "123"
#     And I click sign in after input password
#     Then I should see error message "your password is incorrect"

@FailedWithValidPhoneButWithoutPassword
Scenario: Failed login with invalid phone number
    Given I opened "https://amazon.com/"
    When I click sign in
    And I input email or phone "+6282298370644"
    And I click continue
    And I click sign in after input password
    Then I should see alert message "enter your password" with element "//div[contains(text(),'Enter your password')]"

@FailedWithoutInputEmailOrPhone
Scenario: Failed Login without input anythings
    Given I opened "https://amazon.com/"
    When I click sign in
    And I click continue
    Then I should see alert message "enter your email or mobile phone number" with element "//div[contains(text(),'Enter your email or mobile phone number')]"

@multipleFailedLogin
Scenario Outline: Success Login With Valid Format Email or Phone Number
    Given I opened "https://amazon.com/"
    When I click sign in
    And I input email or phone "<input>"
    And I click continue
    Then I should see error message "<errorMessage>"
    Examples:
    | input       | errorMessage | 
    | poiqwe12345 | we cannot find an account with that email address |
    | 0123        | we cannot find an account with that mobile number |

# @multipleFailedLoginWithInvalidPassword
# Scenario Outline: Success Login With Valid Format Email or Phone Number
#     Given I opened "https://amazon.com/"
#     When I click sign in
#     And I input email or phone "<input>"
#     And I click continue
#     And I input password "12345678"
#     And I click sign in after input password
#     Then I should see error message "your password is incorrect"
#     Examples:
#     | input |
#     | poiqwe1234524@gmail.com |
#     | +6282298370644 |
