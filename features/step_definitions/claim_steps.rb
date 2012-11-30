Given /^a specific patent for which I want claims$/ do
  @p = FactoryGirl.create(:patent)
end

Given /^an associated claim$/ do
  @c = FactoryGirl.create(:claim)
end

When /^I query the claim endpoint by patent$/ do
  visit show_claim_path(format: "json", id: @p.patent)
end

Then /^I receive json formatted claims for that patent$/ do
  @c.attributes.each do |atts, value|
    next if atts == "created_at" || atts == "updated_at"
    page.should have_content value
  end
end
