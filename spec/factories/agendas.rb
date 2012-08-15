# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :agenda do
    data "2012-08-13"
    descricao "MyString"
    horario "MyString"
    tipo "MyString"
  end
end
