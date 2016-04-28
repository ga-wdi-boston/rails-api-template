class CreateSurfboards < ActiveRecord::Migration
  def change
    create_table :surfboards do |t|
      t.integer :height
      t.text :shape
      t.text :fin_setup

      t.timestamps null: false
    end
  end
end
