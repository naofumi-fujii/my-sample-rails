require 'rails_helper'

RSpec.describe "Admin::Characters", type: :request do
  describe "GET /admin_characters" do
    it "works! (now write some real specs)" do
      get admin_characters_path
      expect(response).to have_http_status(200)
    end
  end
end
