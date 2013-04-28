# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :assignee do
    patent "MYSTRING"
    asgtype 1
    assignee "MYSTRING"
    city "MYSTRING"
    state "MYSTRING"
    country "MYSTRING"
    nationality "MYSTRING"
    residence "MYSTRING"
    asgseq 1
  end
end
