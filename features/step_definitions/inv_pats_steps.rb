Given /^an invpat with a lastname$/ do
  @i = FactoryGirl.create(:invpat)
end

When /^I query the invpat endpoint by last name$/ do
  visit api_show_inv_pat_path(id: @i.lastname)
end

Then /^I receive a json response with invpat data$/ do
  @i.attributes.each do |atts, value|
    next if atts == "created_at" || atts == "updated_at"
    page.should have_content value
  end
end