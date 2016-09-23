class Bike < ApplicationRecord
	has_one :stata_fuel, dependent: :destroy
end
