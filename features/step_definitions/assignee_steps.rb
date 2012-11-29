Given /^I have an assignee record$/ do
  @a = FactoryGirl.create(:assignee)
end

When /^I visit assignees api endpoint for assignee record$/ do
  visit show_assignee_path(id: @a.assignee, format: "json")
end

Then /^I should the json representation of the assignee$/ do
  page.should have_content @a.id
  page.should have_content @a.patent
  page.should have_content @a.asgtype
  page.should have_content @a.assignee
  page.should have_content @a.city
  page.should have_content @a.state
  page.should have_content @a.country
  page.should have_content @a.nationality
  page.should have_content @a.residence
  page.should have_content @a.asgseq
end
