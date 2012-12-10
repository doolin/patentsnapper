Given /^an invpat$/ do
  @i = FactoryGirl.create(:invpat)
end

When /^I visit the invpat endpoint with no query parameters$/ do
  visit api_inv_pats_path
end

Then /^I should receive an empty json response$/ do
  page.should have_content "[]"
end

When /^I query the invpat endpoint by lastname$/ do
  visit api_inv_pats_path(lastname: @i.lastname)
end

When /^I query the invpat endpoint by lastname and city$/ do
  visit api_inv_pats_path(lastname: @i.lastname, city: @i.city)
end

When /^I query the invpat endpoint by lastname and firstname$/ do
  visit api_inv_pats_path(lastname: @i.lastname, firstname: @i.firstname)
end

Then /^I receive a json response with invpat data$/ do
  @i.attributes.each do |atts, value|
    next if atts == "created_at" || atts == "updated_at"
    page.should have_content value
  end
end