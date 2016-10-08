class StataFuel < ApplicationRecord
  belongs_to :bike

  validates 	:odo_delta, presence: { message: "Введите пробег между заправками" }
  validates 	:refueling, presence: { message: "Введите кол-во заправленного топлива" }
  validates 	:price_fuel, presence: { message: "Введите сумму оплаты за топливо" }
end
