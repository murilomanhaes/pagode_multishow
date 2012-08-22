require 'spec_helper'

describe "novidades/index" do
  before(:each) do
    assign(:novidades, [
      stub_model(Novidade,
        :titulo => "Titulo",
        :resumo => "Resumo",
        :conteudo => "Conteudo"
      ),
      stub_model(Novidade,
        :titulo => "Titulo",
        :resumo => "Resumo",
        :conteudo => "Conteudo"
      )
    ])
  end

  it "renders a list of novidades" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Titulo".to_s, :count => 2
    assert_select "tr>td", :text => "Resumo".to_s, :count => 2
    assert_select "tr>td", :text => "Conteudo".to_s, :count => 2
  end
end
