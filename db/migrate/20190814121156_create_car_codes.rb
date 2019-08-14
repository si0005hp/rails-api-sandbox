class CreateCarCodes < ActiveRecord::Migration[5.2]
  def change
    create_table :car_codes do |t|
      t.string :code
      t.string :type

      t.timestamps
    end
  end
end
