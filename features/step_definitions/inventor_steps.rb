Given /^an inventor with a lastname$/ do
  @i = FactoryGirl.create(:inventor)
end

When /^I query the inventor endpoint by last name$/ do
  visit api_show_inventor_path(id: @i.lastname)
end

Then /^I receive a json response with inventor data$/ do
  @i.attributes.each do |atts, value|
    next if atts == "created_at" || atts == "updated_at"
    page.should have_content value
  end
end
