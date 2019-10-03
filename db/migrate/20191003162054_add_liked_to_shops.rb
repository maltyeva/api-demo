class AddLikedToShops < ActiveRecord::Migration[5.2]
  def change
    add_column :shops, :liked, :boolean, default: false
  end
end
