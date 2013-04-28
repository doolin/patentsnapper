# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :patent_class do
    patent "MYSTRING"
    prim 1
    patentclass 252
    subclass 108.1
  end
end
