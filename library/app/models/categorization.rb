class Categorization < ActiveRecord::Base
  has_many :books
  has_many :categories

  validates :book, presence: true
  validates :category, presence: true
end
