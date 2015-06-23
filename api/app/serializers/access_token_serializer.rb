class AccessTokenSerializer < ActiveModel::Serializer
  embed :ids
  root false

  attributes :id, :access_token, :expires_in

  has_one :user
end
