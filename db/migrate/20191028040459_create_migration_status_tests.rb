class CreateMigrationStatusTests < ActiveRecord::Migration[5.2]
  def change
    create_table :migration_status_tests do |t|
      t.string :test

      t.timestamps
    end
  end
end
