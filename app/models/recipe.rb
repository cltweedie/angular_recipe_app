class Recipe < ActiveRecord::Base
  belongs_to :user
  has_many :steps
  has_many :ingredients
  accepts_nested_attributes_for :ingredients, reject_if: proc { |attributes| attributes['description'].blank? }
end
