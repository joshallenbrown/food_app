class Demo < ApplicationRecord
	belongs_to :visit
	has_many :products
	has_many :flavors
end
