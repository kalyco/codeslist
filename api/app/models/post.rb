class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :section

  validates :title, presence: true, length: { minimum: 10 }
  validates :body, presence: true, length: { minimum: 10 }
end
