# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :inventor do
    patent      "MYSTRING"
    firstname   "MYSTRING"
    lastname    "MYSTRING"
    street      "MYSTRING"
    city        "MYSTRING"
    state       "MYSTRING"
    country     "MYSTRING"
    zipcode     "MYSTRING"
    nationality "MYSTRING"
    invseq      "MYSTRING"
  end
end
