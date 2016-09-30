class Account < ApplicationRecord
  has_many :products, through: :stores
  belongs_to :store
end
