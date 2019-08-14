class MergedCarCode < BaseCarCode
  belongs_to :partial_car_code, class_name: 'PartialCarCode', optional: true, foreign_key: 'partial_car_code_id'
end
