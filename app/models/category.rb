class Category < ApplicationRecord
  has_many :instruments
  has_many :users, through: :instruments
  has_many :makers, through: :instruments
  has_many :families, through: :instruments
end
