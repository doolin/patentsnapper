# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :patent do
    patent "MYSTRING"
    kind "MYSTRING"
    claims 1
    apptype "MYSTRING"
    appnum "MYSTRING"
    gdate "MYSTRING"
    gyear "MYSTRING"
    appdate "MYSTRING"
    appyear 1
  end
end
