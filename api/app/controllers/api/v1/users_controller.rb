module API::V1
  class UsersController < BaseController
    before_action :ensure_valid_access_token!
  skip_before_filter :doorkeeper_authorize!, only: [:create]

    def show
      render json: User.find(params[:id])
    end
  end
end
