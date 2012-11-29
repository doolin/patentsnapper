# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :citation do
    patent      "MyString"
    cit_date    "MyString"
    cit_name    "MyString"
    cit_kind    "MyString"
    cit_country "MyString"
    citation    "MyString"
    category    "MyString"
    citseq      "MyString"
  end
end
