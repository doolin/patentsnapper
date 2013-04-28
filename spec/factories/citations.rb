# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :citation do
    patent      "MYSTRING"
    cit_date    "MYSTRING"
    cit_name    "MYSTRING"
    cit_kind    "MYSTRING"
    cit_country "MYSTRING"
    citation    "MYSTRING"
    category    "MYSTRING"
    citseq      "MYSTRING"
  end
end
