class Bike < ApplicationRecord
	has_one :fuel_statum, depended: :destroy
end
