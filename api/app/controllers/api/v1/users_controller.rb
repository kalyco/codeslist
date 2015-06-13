class Api::V1::UsersController < ApiController
  skip_before_filter :doorkeeper_authorize!, only: [:create]

end
