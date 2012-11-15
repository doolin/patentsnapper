# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :claim do
    patent "MyString"
    claim "MyString"
  end
end
