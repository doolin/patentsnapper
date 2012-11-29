Given /^an inventor with a lastname$/ do
  @i = FactoryGirl.create(:inventor)
end

When /^I query the inventor endpoint by last name$/ do
  visit show_inventor_path(id: @i.lastname, format: "json")
end

Then /^I receive a json response with inventor data$/ do
  page.should have_content @i.id
  page.should have_content @i.patent
  page.should have_content @i.firstname
  page.should have_content @i.lastname
  page.should have_content @i.street
  page.should have_content @i.city
  page.should have_content @i.state
  page.should have_content @i.country
  page.should have_content @i.zipcode
  page.should have_content @i.nationality
  page.should have_content @i.invseq
end
