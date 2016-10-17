class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.decimal :decimal12
      t.decimal :decimal3
      t.boolean :active

      t.timestamps
    end
  end
end
