require "spec_helper"

describe MaestrosController do
  describe "routing" do

    it "routes to #index" do
      get("/maestros").should route_to("maestros#index")
    end

    it "routes to #new" do
      get("/maestros/new").should route_to("maestros#new")
    end

    it "routes to #show" do
      get("/maestros/1").should route_to("maestros#show", :id => "1")
    end

    it "routes to #edit" do
      get("/maestros/1/edit").should route_to("maestros#edit", :id => "1")
    end

    it "routes to #create" do
      post("/maestros").should route_to("maestros#create")
    end

    it "routes to #update" do
      put("/maestros/1").should route_to("maestros#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/maestros/1").should route_to("maestros#destroy", :id => "1")
    end

  end
end
