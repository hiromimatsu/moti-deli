class Article < ApplicationRecord
  belongs_to :user
  belongs_to :area

  mount_uploader :image, ImageUploader
end