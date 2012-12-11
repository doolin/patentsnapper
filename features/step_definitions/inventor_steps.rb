Given /^an inventor$/ do
  @i = FactoryGirl.create(:inventor)
end

When /^I visit the inventor endpoint with no query parameters$/ do
  visit api_inventors_path()
end

When /^I query the inventor endpoint by patent$/ do
  visit api_inventors_path(patent: @i.patent)
end

When /^I query the inventor endpoint by firstname and lastname$/ do
  visit api_inventors_path(firstname: @i.firstname, lastname: @i.lastname)
end

Then /^I receive a json response with inventor data$/ do
  @i.attributes.each do |atts, value|
    next if atts == "created_at" || atts == "updated_at"
    page.should have_content value
  end
end

