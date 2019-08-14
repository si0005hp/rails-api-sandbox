class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.string :title
      t.references :car_code, foreign_key: true

      t.timestamps
    end
  end
end
