class Post < ApplicationRecord
  # content attribute
  belongs_to :user
  validates :content, presence: true
end
