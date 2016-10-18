require "rails_helper"

RSpec.describe QuizmastersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/quizmasters").to route_to("quizmasters#index")
    end

    it "routes to #new" do
      expect(:get => "/quizmasters/new").to route_to("quizmasters#new")
    end

    it "routes to #show" do
      expect(:get => "/quizmasters/1").to route_to("quizmasters#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/quizmasters/1/edit").to route_to("quizmasters#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/quizmasters").to route_to("quizmasters#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/quizmasters/1").to route_to("quizmasters#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/quizmasters/1").to route_to("quizmasters#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/quizmasters/1").to route_to("quizmasters#destroy", :id => "1")
    end

  end
end
