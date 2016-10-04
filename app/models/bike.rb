class Bike < ApplicationRecord
	has_many :stata_fuels, dependent: :destroy

#	validates 	:name, presence: { message: "введите модель байка" }
#	validates	:name, length: { maximum: 30, message: "название модели - максимум 30 символов " }
#	validates	:user_name, presence: { message: "введите логин владельца" }
#	validates	:user_name, length: { maximum: 30, message: "логин владельца - максимум 30 символов" }
#	validates	:year, presence: { message: "введите год выпуска байка" }
#	validates	:color, length: { maximum: 20, message: "цвет байка - максимум 30 символов " }
end