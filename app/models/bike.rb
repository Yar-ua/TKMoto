class Bike < ApplicationRecord
	has_many :stata_fuels, dependent: :destroy
end
