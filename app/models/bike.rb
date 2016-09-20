class Bike < ApplicationRecord
	has_one :fuel_statum, dependent: :destroy
end
