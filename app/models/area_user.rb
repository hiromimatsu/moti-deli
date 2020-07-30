class AreaUser < ApplicationRecord
  belongs_to :area
  belongs_to :user
end