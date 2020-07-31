class Article < ApplicationRecord
  belongs_to :user
  belongs_to :area

  mount_uploader :image, ImageUploader

  def self.search(search)
    if search
      Article.where('restaurant LIKE(?) OR menu LIKE?', "%#{search}%","%#{search}")
    else
      Article.all
    end
  end
end