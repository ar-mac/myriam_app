class CreateMyriads < ActiveRecord::Migration
  def change
    create_table :myriads do |t|

      t.timestamps null: false
    end
  end
end
