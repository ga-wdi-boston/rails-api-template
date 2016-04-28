class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.text :spot
      t.date :day
      t.text :conditions
      
      t.timestamps null: false
    end
  end
end
