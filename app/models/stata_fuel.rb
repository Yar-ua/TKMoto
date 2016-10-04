class StataFuel < ApplicationRecord
  belongs_to :bike

  validates 	:odo_delta, presence: { message: "введите пробег между заправками" }
  validates 	:refueling, presence: { message: "введите кол-во заправленного топлива" }
  validates 	:price_fuel, presence: { message: "введите сумму оплаты за топливо" }
end
