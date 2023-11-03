class AddLocationLinkToShops < ActiveRecord::Migration[7.0]
  def change
    add_column :shops, :location_link, :string
  end
end
