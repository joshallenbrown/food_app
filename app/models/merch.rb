class Merch < ApplicationRecord
	belongs_to :visit
	delegate :store, :to => :visits, :allow_nil => true
end
