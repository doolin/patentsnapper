Given /^a specific patent$/ do
  @c = FactoryGirl.create(:citation)
end

When /^I query the citation endpoint by patent$/ do
  visit api_show_citation_path(id: @c.patent)
end

Then /^I receive json formatted citations for that patent$/ do
  @c.attributes.each do |atts, value|
    next if atts == "created_at" || atts == "updated_at"
    page.should have_content value
  end
  
end
