class User < ApplicationRecord
  include ActiveModel::Validations
  has_secure_password

  validates_presence_of :username, :email
  validates_uniqueness_of :username, :email
  validates_with EmailValidator
  
  has_many :instruments
  has_many :categories, through: :instruments
  has_many :makers, through: :instruments
  has_many :families, through: :instruments
end