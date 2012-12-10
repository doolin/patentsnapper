Given /^I have an patent record$/ do
  @p = FactoryGirl.create(:patent)
end

When /^I visit patent api endpoint for patent record$/ do
  visit api_patents_path(id: @p.patent)
end

Then /^I should the json representation of the patent$/ do
  @p.attributes.each do |atts, value|
    next if atts == "created_at" || atts == "updated_at"
    page.should have_content value
  end
end