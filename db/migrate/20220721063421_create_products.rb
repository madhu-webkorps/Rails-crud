class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price
      t.text :description
      t.references :seller, foreign_key: {to_table: 'users'}
      t.references :buyer, foreign_key: {to_table: 'users'}

      t.timestamps
    end
  end
end
