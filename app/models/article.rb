class Article < ApplicationRecord
  belongs_to :user
  belongs_to :area
  has_many :likes
  has_many :article_categories, dependet: :destory
  has_many :categories, through: :article_categories

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