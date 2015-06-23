class AccessTokenSerializer < ActiveModel::Serializer

  attributes :id, :access_token, :expires_in

  has_one :user
end
