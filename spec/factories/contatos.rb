# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :contato do
    nome "MyString"
    email "MyString"
    telefone "MyString"
    mensagem "MyText"
    data_conclusao "2012-08-25"
    conclusao "MyText"
  end
end
