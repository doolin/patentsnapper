# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :patent do
    patent "MyString"
    kind "MyString"
    claims 1
    apptype "MyString"
    appnum "MyString"
    gdate "MyString"
    gyear "MyString"
    appdate "MyString"
    appyear 1
  end
end
