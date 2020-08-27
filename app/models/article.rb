class Article < ApplicationRecord
  belongs_to :user
  has_many :likes
  belongs_to :category

  mount_uploader :image, ImageUploader

  def self.search(search)
    if search
      Article.where('restaurant LIKE(?) OR menu LIKE(?)', "%#{search}%","%#{search}%")
    else
      Article.all
    end
  end

  def self.area(area_id)
    if search
      Article.where(area_id: area_id)
    else
      Article.all
    end
  end
end