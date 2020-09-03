class Post < ApplicationRecord
  has_one_attached :photo
  validates :title, :text, :photo, presence: true
end
