class AddPartialCarCodeIdColumnToCarCodes < ActiveRecord::Migration[5.2]
  def change
    add_column :car_codes, :partial_car_code_id, :bigint
    # ALTER TABLE "car_codes" ADD CONSTRAINT fk_rails_58ca3d3a82 FOREIGN KEY ("partial_car_code_id") REFERENCES "car_codes" ("car_code_id")
    add_foreign_key :car_codes, :car_codes, column: :partial_car_code_id, primary_key: "car_code_id"
  end
end
