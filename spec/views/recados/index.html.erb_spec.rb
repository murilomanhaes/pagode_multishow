require 'spec_helper'

describe "recados/index" do
  before(:each) do
    assign(:recados, [
      stub_model(Recado,
        :usuario_id => 1,
        :recado => "MyText"
      ),
      stub_model(Recado,
        :usuario_id => 1,
        :recado => "MyText"
      )
    ])
  end

  it "renders a list of recados" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
