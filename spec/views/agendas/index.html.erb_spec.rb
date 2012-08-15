require 'spec_helper'

describe "agendas/index" do
  before(:each) do
    assign(:agendas, [
      stub_model(Agenda,
        :descricao => "Descricao",
        :horario => "Horario",
        :tipo => "Tipo"
      ),
      stub_model(Agenda,
        :descricao => "Descricao",
        :horario => "Horario",
        :tipo => "Tipo"
      )
    ])
  end

  it "renders a list of agendas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Descricao".to_s, :count => 2
    assert_select "tr>td", :text => "Horario".to_s, :count => 2
    assert_select "tr>td", :text => "Tipo".to_s, :count => 2
  end
end
