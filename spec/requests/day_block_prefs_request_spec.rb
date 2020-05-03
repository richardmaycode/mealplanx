require 'rails_helper'

RSpec.describe "DayBlockPrefs", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/day_block_prefs/index"
      expect(response).to have_http_status(:success)
    end
  end

end
