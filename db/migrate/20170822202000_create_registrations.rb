class CreateRegistrations < ActiveRecord::Migration[5.0]
  def change
    create_table :registrations do |t|
      t.string :phone
      t.string :email
      t.boolean :veg_csa
      t.boolean :flower_csa
      t.string :location

      t.timestamps
    end
  end
end
