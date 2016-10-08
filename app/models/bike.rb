class Bike < ApplicationRecord
	has_many :stata_fuels, dependent: :destroy, validate: true
	validates_associated :stata_fuels

	validates 	:name, presence: { message: "Введите модель байка" }
	validates	:name, length: { maximum: 30, message: "Название модели - максимум 30 символов " }
	validates	:user_name, presence: { message: "Введите логин владельца" }
	validates	:user_name, length: { maximum: 30, message: "Логин владельца - максимум 30 символов" }
	validates	:year, presence: { message: "Введите год выпуска байка" }
	validates	:color, length: { maximum: 20, message: "Цвет байка - максимум 30 символов " }
end