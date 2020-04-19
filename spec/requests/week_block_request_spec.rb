require 'rails_helper'

RSpec.describe "WeekBlocks", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/week_block/index"
      expect(response).to have_http_status(:success)
    end
  end

end
