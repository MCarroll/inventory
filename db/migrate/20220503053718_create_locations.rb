class CreateLocations < ActiveRecord::Migration[7.0]
  def change
    create_table :locations do |t|
      t.string :code
      t.string :warehouse
      t.string :section
      t.string :item

      t.timestamps
    end
  end
end
