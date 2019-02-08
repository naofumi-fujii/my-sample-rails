require 'rails_helper'

RSpec.describe "CategoryPosts", type: :request do
  describe "GET /category_posts" do
    it "works! (now write some real specs)" do
      get category_posts_path
      expect(response).to have_http_status(200)
    end
  end
end
