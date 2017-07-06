class Reader < ActiveRecord::Base
  has_many :books, through: :checkouts
  validates :first_name, presence: true
  validates :last_name, presence: true

  validates :email, presence: true
  validates :email, uniqueness: true
  validates :email, format: {with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/}

  validates :phone_number, presence: true
  validates :phone_number, uniqueness: true
end
