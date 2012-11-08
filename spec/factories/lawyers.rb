# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :lawyer do
    patent "MyString"
    firstname "MyString"
    lastname "MyString"
    lawcountry "MyString"
    orgname "MyString"
    lawseq 1
  end
end
