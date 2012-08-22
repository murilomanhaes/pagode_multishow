# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :recado do
    usuario_id 1
    recado "MyText"
    data "2012-08-21"
  end
end
