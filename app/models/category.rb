class Category < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accesible(:true)
  validates(:title,presence: true, iniqueness: true)
  has_and_belongs_to_many(:categories)
end
