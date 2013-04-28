# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :lawyer do
    patent "MYSTRING"
    firstname "MYSTRING"
    lastname "MYSTRING"
    lawcountry "MYSTRING"
    orgname "MYSTRING"
    lawseq 1
  end
end
