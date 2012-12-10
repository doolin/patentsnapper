Given /^I have an assignee record$/ do
  @a = FactoryGirl.create(:assignee)
end

When /^I visit assignees api endpoint for assignee record$/ do
  visit api_show_assignee_path(id: @a.assignee)
end

Then /^I should the json representation of the assignee$/ do
  @a.attributes.each do |atts, value|
    next if atts == "created_at" || atts == "updated_at"
    page.should have_content value
  end
  
end
