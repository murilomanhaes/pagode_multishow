require 'spec_helper'

describe "Recados" do
  describe "GET /recados" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get recados_path
      response.status.should be(200)
    end
  end
end
