require "spec_helper"

describe LotesController do
  describe "routing" do

    it "routes to #index" do
      get("/lotes").should route_to("lotes#index")
    end

    it "routes to #new" do
      get("/lotes/new").should route_to("lotes#new")
    end

    it "routes to #show" do
      get("/lotes/1").should route_to("lotes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/lotes/1/edit").should route_to("lotes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/lotes").should route_to("lotes#create")
    end

    it "routes to #update" do
      put("/lotes/1").should route_to("lotes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/lotes/1").should route_to("lotes#destroy", :id => "1")
    end

  end
end
