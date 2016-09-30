class Store < ApplicationRecord
	has_many :accounts
	has_many :products
	has_many :visits
	has_many :demos, through: :visits
	has_many :merches, through: :visits
end
