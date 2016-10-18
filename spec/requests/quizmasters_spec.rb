require 'rails_helper'

RSpec.describe "Quizmasters", type: :request do
  describe "GET /quizmasters" do
    it "works! (now write some real specs)" do
      get quizmasters_path
      expect(response).to have_http_status(200)
    end
  end
end
