Given /^a citation$/ do
  @c = FactoryGirl.create(:citation)
end

When /^I visit the citation endpoint with no query parameters$/ do
  visit api_citations_path()
end

When /^I query the citation endpoint by patent$/ do
  visit api_citations_path(patent: @c.patent)
end

Then /^I receive a json response with citation data$/ do
  @c.attributes.each do |atts, value|
    next if atts == "created_at" || atts == "updated_at"
    page.should have_content value
  end
end
