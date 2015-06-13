class SubsectionSerializer < ActiveModel::Serializer
  attributes :id, :name, :created_at, :updated_at

  belongs_to :section
  has_many :posts, through: :section
end
