class CreateInstruments < ActiveRecord::Migration[6.1]
  def change
    create_table :instruments do |t|
      t.decimal :price
      t.integer :year
      t.string :color
      t.string :material
      t.string :hole
      t.string :neck
      t.string :bridge
      t.string :body
      t.string :back
      t.integer :frets
      t.text :description
      t.integer :user_id
      t.integer :category_id
      t.integer :maker_id
      t.integer :family_id
      t.boolean :for_sale, default: true

      t.timestamps
    end
  end
end
