class CreateRoasters < ActiveRecord::Migration[7.0]
  def change
    create_table :roasters do |t|
      t.string :name
      t.string :origin
      t.text :description
      t.text :additional_info
      t.string :picture

      t.timestamps
    end
  end
end
