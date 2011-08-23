require "spec_helper"

describe AvaluosController do
  describe "routing" do

    it "routes to #index" do
      get("/avaluos").should route_to("avaluos#index")
    end

    it "routes to #new" do
      get("/avaluos/new").should route_to("avaluos#new")
    end

    it "routes to #show" do
      get("/avaluos/1").should route_to("avaluos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/avaluos/1/edit").should route_to("avaluos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/avaluos").should route_to("avaluos#create")
    end

    it "routes to #update" do
      put("/avaluos/1").should route_to("avaluos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/avaluos/1").should route_to("avaluos#destroy", :id => "1")
    end

  end
end
