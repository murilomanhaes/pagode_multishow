require 'spec_helper'

describe "agendas/new" do
  before(:each) do
    assign(:agenda, stub_model(Agenda,
      :descricao => "MyString",
      :horario => "MyString",
      :tipo => "MyString"
    ).as_new_record)
  end

  it "renders new agenda form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => agendas_path, :method => "post" do
      assert_select "input#agenda_descricao", :name => "agenda[descricao]"
      assert_select "input#agenda_horario", :name => "agenda[horario]"
      assert_select "input#agenda_tipo", :name => "agenda[tipo]"
    end
  end
end
