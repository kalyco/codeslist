class AccessTokenSerializer < ActiveModel::Serializer
  root false

  attributes :id, :access_token, :expires_in

  has_one :user
end
