
Given /^I have an assignee record$/ do
  @a = FactoryGirl.create(:assignee)
end

When /^I visit assignees api endpoint for assignee record$/ do
  visit show_assignee_path(id: @a.assignee, format: "json")
end

Then /^I should the json representation of the assignee$/ do
  puts response
  puts page
  puts page.body
  response.should have_content @a.to_json
end
