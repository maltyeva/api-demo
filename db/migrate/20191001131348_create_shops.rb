class CreateShops < ActiveRecord::Migration[5.2]
  def change
    create_table :shops do |t|
      t.string :name
      t.string :address
      t.string :address_cn
      t.string :description
      t.string :description_cn
      t.string :image_url
      t.string :open_time
      t.string :close_time
      t.bigint :phone
      t.string :category

      t.timestamps
    end
  end
end
