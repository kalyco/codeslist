class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :password, :created_at, :updated_at

  has_many :posts
end
