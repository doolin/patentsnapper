# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :assignee do
    patent "MyString"
    asgtype 1
    assignee "MyString"
    city "MyString"
    state "MyString"
    country "MyString"
    nationality "MyString"
    residence "MyString"
    asgseq 1
  end
end
