class Area < ApplicationRecord
  has_many : area_users
  has_many : users, through: :area_users
  has_many : articles
end