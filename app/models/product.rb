class Product < ApplicationRecord
  belongs_to :user
  default_scope -> { order(created_at: :desc) }
  mount_uploader :picture, PictureUploader
  acts_as_taggable # Alias for acts_as_taggable_on :tags
  acts_as_taggable_on :skills, :interests
end
