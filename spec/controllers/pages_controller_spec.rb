require 'rails_helper'

RSpec.describe PagesController, type: :controller do

  describe "GET #index" do
    it "returns http success" do

      user = User.create(:email => "rspec_index@email.com")
    #require 'pry'; binding.pry
            controller.sign_in user
    #require 'pry'; binding.pry
      get :index
      expect(response).to have_http_status(:success)
    end
  end

end
