require 'rails_helper'

RSpec.describe "Finals", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/finals/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/finals/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/finals/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/finals/show"
      expect(response).to have_http_status(:success)
    end
  end

end
