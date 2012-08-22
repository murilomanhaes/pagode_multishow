require 'spec_helper'

describe "recados/new" do
  before(:each) do
    assign(:recado, stub_model(Recado,
      :usuario_id => 1,
      :recado => "MyText"
    ).as_new_record)
  end

  it "renders new recado form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => recados_path, :method => "post" do
      assert_select "input#recado_usuario_id", :name => "recado[usuario_id]"
      assert_select "textarea#recado_recado", :name => "recado[recado]"
    end
  end
end
