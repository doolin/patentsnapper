# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :invpat do
    firstname "First"
    lastname "Last"
    street "123 Fake street"
    city "San Francisco"
    state "California"
    country "USA"
    zipcode "MyString"
    lat "MyString"
    lon "MyString"
    invseq "MyString"
    patent "MyString"
    gyear "MyString"
    appyearstr "MyString"
    appdatestr "MyString"
    assignee "MyString"
    asgnum "MyString"
    patentclass "MyString"
    coauthor "MyString"
    invnum "MyString"
    lower "MyString"
    upper "MyString"
  end
end
