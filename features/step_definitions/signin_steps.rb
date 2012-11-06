Given /^a site visitor who is not a member$/ do
  visit ('/users/sign_out')
end

Given /^presses the "(.*?)" button$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then /^I should see "(.*?)"$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

Given /^fills in the Sign Up Free form$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^the new member should be on the new Profile page$/ do
  pending # express the regexp above with the code you wish you had
end

When /^the visitor is on the sign up page$/ do
  pending # express the regexp above with the code you wish you had
end

Given /^member is not logged in$/ do
  visit '/users/sign_out'
end

Given /^member name is "(.*?)" with email "(.*?)" and password "(.*?)"$/ do |arg1, arg2, arg3|
  pending # express the regexp above with the code you wish you had
end

When /^I go to the sign in page$/ do
  visit '/users/sign_up'
end

When /^I sign in as "(.*?)"$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

Given /^member is logged in$/ do
  visit '/users/sign_out'
end

When /^the member changes email and password$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^show me the page$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^the member should see "(.*?)"$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

Given /^no user exists with an email of "(.*?)"$/ do |arg1|
  User.find(:first, :conditions => { :email => email }).should be_nil
end

Then /^I go to the home page$/ do
  pending # express the regexp above with the code you wish you had
end
