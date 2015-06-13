class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :created_at, :updated_at

  belongs_to :user
  belongs_to :section
end
