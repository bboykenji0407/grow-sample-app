require 'rails_helper'

RSpec.describe "Best4s", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/best4s/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/best4s/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/best4s/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/best4s/show"
      expect(response).to have_http_status(:success)
    end
  end

end
