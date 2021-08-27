class Recipe < ApplicationRecord
  belongs_to :dinner
  has_many :reviews, dependent: :destroy
end
