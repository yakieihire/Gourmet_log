class CreateShops < ActiveRecord::Migration[6.0]
  def change
    create_table :shops do |t|
      t.string :store_name,             null: false
      t.integer :category_id,           null: false
      t.string :menu,                   null: false
      t.string :place,                  null: false
      t.text :store_url,                null: false
      t.text :memo,                     null: false
      t.integer :interesting_store_id,  null: false
      t.references :user,               null: false, foreign_key: true
      t.timestamps
    end
  end
end
