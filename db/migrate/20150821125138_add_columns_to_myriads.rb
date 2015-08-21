class AddColumnsToMyriads < ActiveRecord::Migration
  def change
    add_column :myriads, :name, :string
    add_column :myriads, :race, :string
    add_column :myriads, :lat, :decimal, precision: 8, scale: 5
    add_column :myriads, :lng, :decimal, precision: 8, scale: 5

    add_index :myriads, :name, unique: true
  end

end
