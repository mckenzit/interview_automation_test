Given(/^I am on the sign\-in page$/) do

  visit SignInPage

end

When(/^I insert a valid "([^"]*)" address$/) do |arg1|

  on SignInPage do |page|

    page.email = arg1
    sleep 2

  end

end

When(/^I insert a valid "([^"]*)"$/) do |arg1|

  on SignInPage do |page|

    page.password = arg1
    sleep 2

  end

end

When(/^I click Log in$/) do

  on SignInPage do |page|

    page.submit_button

  end

end

Then(/^I should see a confirmation page$/) do
  pending # I'm not sure what happens due to not having login details
end

When(/^I insert an invalid "([^"]*)" address$/) do |arg|
  pending
end

And(/^I insert an invalid "([^"]*)"$/) do |arg|
  pending
end

Then(/^I should see an error$/) do
  pending
end