class AddTypeToArticle < ActiveRecord::Migration[5.2]
  def change
    change_table :articles, bulk: true do |t|
      t.column :type, :string, null: false, default: 'Article'
      t.index :type
    end
  end
end
