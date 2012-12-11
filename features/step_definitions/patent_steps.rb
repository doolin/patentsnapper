Given /^a patent$/ do
   @p = FactoryGirl.create(:patent)
end

When /^I visit the patents endpoint with no query parameters$/ do
  visit api_patents_path()
end

When /^I query the patents endpoint by patent$/ do
  visit api_patents_path(patent: @p.patent)
end

When /^I query the patents endpoint by patent and kind$/ do
  visit api_patents_path(patent: @p.patent, kind: @p.kind)
end

Then /^I receive a json response with patent data$/ do
  @p.attributes.each do |atts, value|
    next if atts == "created_at" || atts == "updated_at"
    page.should have_content value
  end
end