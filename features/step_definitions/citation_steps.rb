Given /^a specific patent$/ do
  @c = FactoryGirl.create(:citation)
end

When /^I query the citation endpoint by patent$/ do
  visit show_citation_path(format: "json", id: @c.patent)
end

Then /^I receive json formatted citations for that patent$/ do
  page.should have_content @c.id
  page.should have_content @c.category
  page.should have_content @c.cit_country
  page.should have_content @c.cit_date
  page.should have_content @c.cit_kind
  page.should have_content @c.cit_name
  page.should have_content @c.citation
  page.should have_content @c.citseq
  page.should have_content @c.patent
end
