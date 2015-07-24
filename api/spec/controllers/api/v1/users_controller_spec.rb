require 'rails_helper'

describe API::V1::UsersController do
  describe "GET #show" do
    it "requires an access token" do
      get :show, id: 1
      expect(response.status).to eq(401)
      expect(response.headers['WWW-Authenticate']).to match(/^Bearer/)
    end

    it "returns a user" do
      access_token = FactoryGirl.create(:access_token)
      user = access_token.user

      expect(User).to receive(:find).with(user.id.to_s) { user }

      get :show, id: user.id

      binding.pry

      expect(json_response).to be_json_eq UserSerializer.new(user)
    end
  end
end
