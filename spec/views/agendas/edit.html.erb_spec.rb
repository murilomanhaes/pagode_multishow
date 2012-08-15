require 'spec_helper'

describe "agendas/edit" do
  before(:each) do
    @agenda = assign(:agenda, stub_model(Agenda,
      :descricao => "MyString",
      :horario => "MyString",
      :tipo => "MyString"
    ))
  end

  it "renders the edit agenda form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => agendas_path(@agenda), :method => "post" do
      assert_select "input#agenda_descricao", :name => "agenda[descricao]"
      assert_select "input#agenda_horario", :name => "agenda[horario]"
      assert_select "input#agenda_tipo", :name => "agenda[tipo]"
    end
  end
end
