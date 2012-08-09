require 'spec_helper'

describe "usuarios/index" do
  before(:each) do
    assign(:usuarios, [
      stub_model(Usuario,
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
      ),
      stub_model(Usuario,
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
      )
    ])
  end

  it "renders a list of usuarios" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Sobrenome".to_s, :count => 2
    assert_select "tr>td", :text => "Sexo".to_s, :count => 2
    assert_select "tr>td", :text => "Telefone".to_s, :count => 2
    assert_select "tr>td", :text => "Endereco".to_s, :count => 2
    assert_select "tr>td", :text => "Complemento".to_s, :count => 2
    assert_select "tr>td", :text => "Bairro".to_s, :count => 2
    assert_select "tr>td", :text => "Cidade".to_s, :count => 2
    assert_select "tr>td", :text => "Estado".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
  end
end
