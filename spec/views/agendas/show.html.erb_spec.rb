require 'spec_helper'

describe "agendas/show" do
  before(:each) do
    @agenda = assign(:agenda, stub_model(Agenda,
      :descricao => "Descricao",
      :horario => "Horario",
      :tipo => "Tipo"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Descricao/)
    rendered.should match(/Horario/)
    rendered.should match(/Tipo/)
  end
end
