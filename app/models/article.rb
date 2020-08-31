class Article < ApplicationRecord
  belongs_to :user
  mount_uploader :image, ImageUploader

  validates :restaurant, presence: true
  validates :image, presence: true
  validates :menu, presence: true
  validates :rule, presence: true
  validates :area_id, presence: true

  
  def self.search(search)
    if search
      Article.where('restaurant LIKE(?) OR menu LIKE(?)', "%#{search}%","%#{search}%")
    else
      Article.all
    end
  end

  def self.category(area_id)
    if search
      Article.where(area_id: area_id)
    else
      Article.all
    end
  end

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :area
end