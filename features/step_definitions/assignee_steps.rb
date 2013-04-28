Given /^an assignee$/ do
  @a = FactoryGirl.create(:assignee)
end

When /^I visit the assignee endpoint with no query parameters$/ do
  visit api_assignees_path()
end

When /^I query the assignee endpoint by assignee$/ do
  visit api_assignees_path(assignee: @a.assignee)
end

When /^I query the assignee endpoint by patent and assignee$/ do
  visit api_assignees_path(assignee: @a.assignee, patent: @a.patent)
end

Then /^I receive a json response with assignee data$/ do
  @a.attributes.each do |atts, value|
    next if atts == "created_at" || atts == "updated_at"
    page.should have_content value
  end
end

