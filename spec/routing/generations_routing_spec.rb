require "spec_helper"

describe GenerationsController do
  describe "routing" do

    it "routes to #index" do
      get("/generations").should route_to("generations#index")
    end

    it "routes to #new" do
      get("/generations/new").should route_to("generations#new")
    end

    it "routes to #show" do
      get("/generations/1").should route_to("generations#show", :id => "1")
    end

    it "routes to #edit" do
      get("/generations/1/edit").should route_to("generations#edit", :id => "1")
    end

    it "routes to #create" do
      post("/generations").should route_to("generations#create")
    end

    it "routes to #update" do
      put("/generations/1").should route_to("generations#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/generations/1").should route_to("generations#destroy", :id => "1")
    end

  end
end
