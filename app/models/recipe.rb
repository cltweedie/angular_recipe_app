class Recipe < ActiveRecord::Base
  has_many :steps
  has_many :ingredients
end
