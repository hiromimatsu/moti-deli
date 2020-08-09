class Category < ApplicationRecord
  has_ancestry
  has_many :article_categories, dependent: :destrroy
  has_many :articles, through: :article_categories
end