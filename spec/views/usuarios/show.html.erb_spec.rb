require 'spec_helper'

describe "usuarios/show" do
  before(:each) do
    @usuario = assign(:usuario, stub_model(Usuario,
      :nome => "Nome",
      :sobrenome => "Sobrenome",
      :sexo => "Sexo",
      :telefone => "Telefone",
      :endereco => "Endereco",
      :complemento => "Complemento",
      :bairro => "Bairro",
      :cidade => "Cidade",
      :estado => "Estado",
      :email => "Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    rendered.should match(/Sobrenome/)
    rendered.should match(/Sexo/)
    rendered.should match(/Telefone/)
    rendered.should match(/Endereco/)
    rendered.should match(/Complemento/)
    rendered.should match(/Bairro/)
    rendered.should match(/Cidade/)
    rendered.should match(/Estado/)
    rendered.should match(/Email/)
  end
end
