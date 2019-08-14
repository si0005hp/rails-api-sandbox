class AddTypeToCars < ActiveRecord::Migration[5.2]
  change_table :cars, bulk: true do |t|
    t.column :type, :string, null: false, default: 'Car'
    t.index :type
  end
end
