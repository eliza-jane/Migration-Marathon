class Book < ActiveRecord::Base
  has_many :checkouts
  has_many :categories, through: :categorizations
  has_many :readers, through: :checkouts

  validates :title, presence: true
  validates :author, presence: true
  validates :rating, numericality: { only_integer: true,
    allow_nil: true, inclusion: { in: 0..100 } }
end
