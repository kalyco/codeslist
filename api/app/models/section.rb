class Section < ActiveRecord::Base
  has_many :posts
  has_many :sub_sections


  validates :name, presence: true
end
