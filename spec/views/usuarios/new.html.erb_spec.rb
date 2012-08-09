require 'spec_helper'

describe "usuarios/new" do
  before(:each) do
    assign(:usuario, stub_model(Usuario,
      :nome => "MyString",
      :sobrenome => "MyString",
      :sexo => "MyString",
      :telefone => "MyString",
      :endereco => "MyString",
      :complemento => "MyString",
      :bairro => "MyString",
      :cidade => "MyString",
      :estado => "MyString",
      :email => "MyString"
    ).as_new_record)
  end

  it "renders new usuario form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => usuarios_path, :method => "post" do
      assert_select "input#usuario_nome", :name => "usuario[nome]"
      assert_select "input#usuario_sobrenome", :name => "usuario[sobrenome]"
      assert_select "input#usuario_sexo", :name => "usuario[sexo]"
      assert_select "input#usuario_telefone", :name => "usuario[telefone]"
      assert_select "input#usuario_endereco", :name => "usuario[endereco]"
      assert_select "input#usuario_complemento", :name => "usuario[complemento]"
      assert_select "input#usuario_bairro", :name => "usuario[bairro]"
      assert_select "input#usuario_cidade", :name => "usuario[cidade]"
      assert_select "input#usuario_estado", :name => "usuario[estado]"
      assert_select "input#usuario_email", :name => "usuario[email]"
    end
  end
end
