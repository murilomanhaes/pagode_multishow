require 'spec_helper'

describe "recados/edit" do
  before(:each) do
    @recado = assign(:recado, stub_model(Recado,
      :usuario_id => 1,
      :recado => "MyText"
    ))
  end

  it "renders the edit recado form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => recados_path(@recado), :method => "post" do
      assert_select "input#recado_usuario_id", :name => "recado[usuario_id]"
      assert_select "textarea#recado_recado", :name => "recado[recado]"
    end
  end
end
