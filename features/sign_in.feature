@sign-in
Feature: Farm Drop Sign-up

  As an existing customer
  I want to sign-in
  So I can access additional functionality


  @successful
  Scenario Outline: Successful login

    Given I am on the sign-in page
    When I insert a valid "<email>" address
    And I insert a valid "<password>"
    And I click Log in
    Then I should see a confirmation page

    Examples:
      | email               | password    |
      | a_test@farmdrop.com | password123 |

  @unsuccessful
  Scenario Outline: Unsuccessful login

    Given I am on the sign-in page
    When I insert an invalid "<email>" address
    And I insert an invalid "<password>"
    And I click Log in
    Then I should see an error

    Examples:
      | email                    | password        |
      | a_test_fail@farmdrop.com | password123fail |

#  Background:
#    Given I am on the sign-in page
#    And I click on the "Forgot Password?" link
#
#  Scenario: Forgot Password
#    Given I insert a new email adress
#    When I click on the 'Reset your password' button
#    Then I should be informed that i am not a registered user
#
#  Scenario: Log in link
#    Given I am on the reset password page
#    When I click on "Log in" button
#    Then I should be taken back to the "login page"

#  sign_up.feature
#
#  Scenario: Remember me
#
#  Scenario: No account sign up
#
#  Scenario: login with Facebook
