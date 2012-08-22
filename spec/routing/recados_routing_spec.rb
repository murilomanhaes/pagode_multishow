require "spec_helper"

describe RecadosController do
  describe "routing" do

    it "routes to #index" do
      get("/recados").should route_to("recados#index")
    end

    it "routes to #new" do
      get("/recados/new").should route_to("recados#new")
    end

    it "routes to #show" do
      get("/recados/1").should route_to("recados#show", :id => "1")
    end

    it "routes to #edit" do
      get("/recados/1/edit").should route_to("recados#edit", :id => "1")
    end

    it "routes to #create" do
      post("/recados").should route_to("recados#create")
    end

    it "routes to #update" do
      put("/recados/1").should route_to("recados#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/recados/1").should route_to("recados#destroy", :id => "1")
    end

  end
end
