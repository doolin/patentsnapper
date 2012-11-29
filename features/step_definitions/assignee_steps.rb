
Given /^I have an assignee record$/ do
  @a = FactoryGirl.create(:assignee)
end

When /^I visit assignees api endpoint for assignee record$/ do
  visit show_assignee_path(id: @a.assignee, format: "json")
end

Then /^I should the json representation of the assignee$/ do
  pending # express the regexp above with the code you wish you had
end
