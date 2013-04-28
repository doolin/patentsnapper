# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :invpat do
    firstname "FIRST"
    lastname "LAST"
    street "123 FAKE STREET"
    city "SAN FRANCISCO"
    state "CALIFORNIA"
    country "USA"
    zipcode "MYSTRING"
    lat "MYSTRING"
    lon "MYSTRING"
    invseq "MYSTRING"
    patent "MYSTRING"
    gyear "MYSTRING"
    appyearstr "MYSTRING"
    appdatestr "MYSTRING"
    assignee "MYSTRING"
    asgnum "MYSTRING"
    patentclass "MYSTRING"
    coauthor "MYSTRING"
    invnum "MYSTRING"
    lower "MYSTRING"
    upper "MYSTRING"
  end
end
