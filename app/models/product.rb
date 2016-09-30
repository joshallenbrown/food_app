class Product < ApplicationRecord
  has_many :flavors
  has_many :stores, through: :accounts
  has_many :accounts
end
