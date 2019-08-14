class BaseCar < ApplicationRecord
  self.table_name = 'cars'

  belongs_to :newest_car_code, foreign_key: 'car_code_id', optional: true, class_name: 'BaseCarCode'
end
