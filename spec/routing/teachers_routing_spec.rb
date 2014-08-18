require "rails_helper"

RSpec.describe TeachersController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/teachers").to route_to("teachers#index")
    end

    it "routes to #new" do
      expect(:get => "/teachers/new").to route_to("teachers#new")
    end

    it "routes to #show" do
      expect(:get => "/teachers/1").to route_to("teachers#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/teachers/1/edit").to route_to("teachers#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/teachers").to route_to("teachers#create")
    end

    it "routes to #update" do
      expect(:put => "/teachers/1").to route_to("teachers#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/teachers/1").to route_to("teachers#destroy", :id => "1")
    end

  end
end
