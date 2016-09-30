class Visit < ApplicationRecord
	has_one :store
	has_one :demo
	has_one :merch
end
