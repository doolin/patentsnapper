Given /^a patent_desc$/ do
  @p = FactoryGirl.create(:pat_desc)
end

When /^I visit the patent_desc endpoint with no query parameters$/ do
  visit api_patent_descs_path()
end

When /^I query the patent_desc endpoint by patent$/ do
  visit api_patent_descs_path(patent: @p.patent)
end

When /^I query the patent_desc endpoint by patent and title$/ do
  visit api_patent_descs_path(patent: @p.patent, title: @p.title)
end

Then /^I receive a json response with patent_desc data$/ do
  @p.attributes.each do |atts, value|
    next if atts == "created_at" || atts == "updated_at"
    page.should have_content value
  end
end

