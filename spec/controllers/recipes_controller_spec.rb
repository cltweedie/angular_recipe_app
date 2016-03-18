require "rails_helper"

RSpec.describe RecipesController, :type => :controller do
  before do
    @recipe1, @recipe2 = Recipe.create!, Recipe.create!
  end

  describe "GET to recipes" do
    it "responds with an HTTP 200 status code" do
      get :index
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "responds with all of the recipes as JSON" do
      get :index

      expect(response.body).to match ([@recipe1, @recipe2]).to_json
    end
  end

  describe "GET to recipes/:id" do
    it "responds with an HTTP 200 status code" do
      get :show, id: @recipe1.id
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "responds with the correct recipe as JSON" do
      get :show, id: @recipe1.id
      expected = {
        recipe: @recipe1,
        steps: [],
        ingredients: []
      }

      expect(response.body).to match expected.to_json
    end
  end
end
