require 'spec_helper'

describe "recados/show" do
  before(:each) do
    @recado = assign(:recado, stub_model(Recado,
      :usuario_id => 1,
      :recado => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/MyText/)
  end
end
