class Bike < ApplicationRecord
	has_many :stata_fuels, dependent: :destroy

	validates 	:name, presence: true, uniqueness: true, length: { maximum: 50 }
	validates	:user_name, presence: true, length: { maximum: 30 }
	validates	:year, presence: true
	validates	:color, length: { maximum: 20 }
end
