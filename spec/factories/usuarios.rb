# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :usuario do
    nome "MyString"
    sobrenome "MyString"
    sexo "MyString"
    telefone "MyString"
    endereco "MyString"
    complemento "MyString"
    bairro "MyString"
    cidade "MyString"
    estado "MyString"
    email "MyString"
    data_nascimento "2012-08-09"
  end
end
