class Dinner < ApplicationRecord
  has_many :recipes, dependent: :destroy
end
