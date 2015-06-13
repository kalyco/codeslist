class SubSection < ActiveRecord::Base
  belongs_to :section
  has_many :posts, through: :section

  validates :name, presence: true
end
